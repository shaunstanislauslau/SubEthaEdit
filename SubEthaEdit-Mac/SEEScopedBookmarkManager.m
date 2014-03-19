//
//  SEEScopedBookmarkManager.m
//  SubEthaEdit
//
//  Created by Michael Ehrmann on 19.03.14.
//  Copyright (c) 2014 TheCodingMonkeys. All rights reserved.
//

#if !__has_feature(objc_arc)
#error ARC must be enabled!
#endif

#import "SEEScopedBookmarkManager.h"

@interface SEEScopedBookmarkManager ()
@property (nonatomic, strong) NSMutableDictionary *lookupDict;
@property (nonatomic, strong) NSMutableArray *bookmarkURLs;
@property (nonatomic, strong) NSMutableArray *accessingURLs;
@end


@interface NSURL (TCMNSURLAddition)

+ (NSURL *)nearestParentDirectoryOfURL:(NSURL *)aURL inList:(NSArray *)aURLList;

@end

@implementation NSURL (TCMNSURLAddition)

// can also return self
+ (NSURL *)nearestParentDirectoryOfURL:(NSURL *)aURL inList:(NSArray *)aURLList {
	NSURL *result = nil;
	if (aURL) {
		NSString *urlPath = [aURL path];
		NSString *oldURLPath = nil;

		// if you really want the nearest then you have to sort the list
		do {
			for (NSURL *url in aURLList) {
				if ([[url path] isEqualToString:urlPath]) {
					result = url;
					break;
				}
			}
			oldURLPath = urlPath;
			urlPath = [urlPath stringByDeletingLastPathComponent];

		} while (!result && ![oldURLPath isEqualToString:urlPath]);
	}
	return result;
}

@end

@implementation SEEScopedBookmarkManager

+ (instancetype)sharedManager {
	static id sSharedManager = nil;
	static dispatch_once_t onceToken = 0;
	dispatch_once(&onceToken, ^{
		sSharedManager = [[[self class] alloc] init];
	});
	return sSharedManager;
}


- (instancetype)init {
    self = [super init];
    if (self) {
        self.lookupDict = [NSMutableDictionary dictionary];
		self.bookmarkURLs = [NSMutableArray array];
		self.accessingURLs = [NSMutableArray array];
    }
    return self;
}


- (BOOL)startAccessingURL:(NSURL *)aURL {
	BOOL result = NO;
	if (aURL.isFileURL) {
		NSURL *parentURL = [self.lookupDict objectForKey:aURL];
		if (! parentURL) {
			parentURL = [NSURL nearestParentDirectoryOfURL:aURL inList:self.bookmarkURLs];
		}

		if (parentURL) {
			result = [parentURL startAccessingSecurityScopedResource];
		}

		if (result) {
			[self.accessingURLs addObject:aURL];
			[self.lookupDict setObject:parentURL forKey:aURL];

		} else {
			if ([aURL checkResourceIsReachableAndReturnError:nil]) {
				NSError *error = nil;
				NSData *data = [NSData dataWithContentsOfURL:aURL options:NSDataReadingMappedAlways error:&error];

				if (data) {
					// file is readable in this session via a different opening mechanism
					// the next time is is used after app relaunch the user might get asked for permission
					result = YES;

				} else {
					NSLog(@"Error: %@", error);

					// the file is not readable and we assume that it is because of permissions,
					// so we ask the user to allow us to use the file
					NSOpenPanel *openPanel = [NSOpenPanel openPanel];
					openPanel.canChooseDirectories = YES;
					openPanel.canChooseFiles = YES;
					openPanel.directoryURL = aURL;
					// TODO: localize and write proper text
					openPanel.prompt = @"Allow";
					openPanel.title = @"Allow resource access";

					NSInteger openPanelResult = [openPanel runModal];
					if (openPanelResult == NSFileHandlingPanelOKButton) {

						NSURL *choosenURL = openPanel.URL;
						result = [choosenURL startAccessingSecurityScopedResource];

						// checking if the selected url helps with opening permissions of our file
						data = [NSData dataWithContentsOfURL:aURL options:NSDataReadingMappedAlways error:&error];
						if (!data) {
							[choosenURL stopAccessingSecurityScopedResource];
							result = NO;

						} else {
							[self.accessingURLs addObject:aURL];
							[self.lookupDict setObject:choosenURL forKey:aURL];
						}
					}
				}
			}
		}
	}
	return result;
}

- (void)stopAccessingURL:(NSURL *)aURL {
	if (aURL) {
		NSUInteger foundIndex = [self.accessingURLs indexOfObject:aURL];
		if (foundIndex != NSNotFound) {
			NSURL *accessedBookmarkURL = [self.lookupDict objectForKey:aURL];
			NSAssert(accessedBookmarkURL != nil, @"There should aways be an URL in the lookup table");
			[accessedBookmarkURL stopAccessingSecurityScopedResource];
			[self.accessingURLs removeObjectAtIndex:foundIndex];
		}
	}
}

@end
