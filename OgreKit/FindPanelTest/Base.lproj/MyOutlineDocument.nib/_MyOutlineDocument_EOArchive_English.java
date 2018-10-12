// _MyOutlineDocument_EOArchive_English.java
// Generated by EnterpriseObjects palette at 2004\u5e746\u670822\u65e5\u706b\u66dc\u65e5 6\u664251\u520607\u79d2Asia/Tokyo

import com.webobjects.eoapplication.*;
import com.webobjects.eocontrol.*;
import com.webobjects.eointerface.*;
import com.webobjects.eointerface.swing.*;
import com.webobjects.eointerface.swing.EOTable._EOTableColumn;
import com.webobjects.foundation.*;
import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;
import javax.swing.table.*;
import javax.swing.text.*;

public class _MyOutlineDocument_EOArchive_English extends com.webobjects.eoapplication.EOArchive {
    com.webobjects.eointerface.swing.EOFrame _eoFrame0;
    com.webobjects.eointerface.swing.EOTable _nsOutlineView0;
    com.webobjects.eointerface.swing.EOTable._EOTableColumn _eoTableColumn0, _eoTableColumn1;
    com.webobjects.eointerface.swing.EOTextField _nsTextField0;
    javax.swing.JPanel _nsView0;

    public _MyOutlineDocument_EOArchive_English(Object owner, NSDisposableRegistry registry) {
        super(owner, registry);
    }

    protected void _construct() {
        Object owner = _owner();
        EOArchive._ObjectInstantiationDelegate delegate = (owner instanceof EOArchive._ObjectInstantiationDelegate) ? (EOArchive._ObjectInstantiationDelegate)owner : null;
        Object replacement;

        super._construct();

        _nsTextField0 = (com.webobjects.eointerface.swing.EOTextField)_registered(new com.webobjects.eointerface.swing.EOTextField(), "NSTextField2");
        _eoTableColumn1 = (com.webobjects.eointerface.swing.EOTable._EOTableColumn)_registered(new com.webobjects.eointerface.swing.EOTable._EOTableColumn(), "");
        _eoTableColumn0 = (com.webobjects.eointerface.swing.EOTable._EOTableColumn)_registered(new com.webobjects.eointerface.swing.EOTable._EOTableColumn(), "NSTableColumn1");

        if ((delegate != null) && ((replacement = delegate.objectForOutletPath(this, "myOutlineView")) != null)) {
            _nsOutlineView0 = (replacement == EOArchive._ObjectInstantiationDelegate.NullObject) ? null : (com.webobjects.eointerface.swing.EOTable)replacement;
            _replacedObjects.setObjectForKey(replacement, "_nsOutlineView0");
        } else {
            _nsOutlineView0 = (com.webobjects.eointerface.swing.EOTable)_registered(new com.webobjects.eointerface.swing.EOTable(), "NSTableView");
        }

        if ((delegate != null) && ((replacement = delegate.objectForOutletPath(this, "window")) != null)) {
            _eoFrame0 = (replacement == EOArchive._ObjectInstantiationDelegate.NullObject) ? null : (com.webobjects.eointerface.swing.EOFrame)replacement;
            _replacedObjects.setObjectForKey(replacement, "_eoFrame0");
        } else {
            _eoFrame0 = (com.webobjects.eointerface.swing.EOFrame)_registered(new com.webobjects.eointerface.swing.EOFrame(), "Window");
        }

        _nsView0 = (JPanel)_eoFrame0.getContentPane();
    }

    protected void _awaken() {
        super._awaken();

        if (_replacedObjects.objectForKey("_nsOutlineView0") == null) {
            _connect(_nsOutlineView0, _owner(), "delegate");
        }

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _connect(_eoFrame0, _owner(), "delegate");
        }

        if (_replacedObjects.objectForKey("_nsOutlineView0") == null) {
            _connect(_owner(), _nsOutlineView0, "myOutlineView");
        }

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _connect(_owner(), _eoFrame0, "window");
        }

        if (_replacedObjects.objectForKey("_nsOutlineView0") == null) {
            _connect(_nsOutlineView0, _owner(), "dataSource");
        }
    }

    protected void _init() {
        super._init();
        _setFontForComponent(_nsTextField0, "Lucida Grande", 13, Font.PLAIN);
        _nsTextField0.setEditable(false);
        _nsTextField0.setOpaque(false);
        _nsTextField0.setText("Drop a folder or a file onto the outline view.");
        _nsTextField0.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        _nsTextField0.setSelectable(false);
        _nsTextField0.setEnabled(true);
        _nsTextField0.setBorder(null);
        _eoTableColumn1.setMinWidth(4);
        _eoTableColumn1.setMaxWidth(1000);
        _eoTableColumn1.setPreferredWidth(359);
        _eoTableColumn1.setWidth(359);
        _eoTableColumn1.setResizable(true);
        _eoTableColumn1.setHeaderValue("Info");
        _eoTableColumn0.setMinWidth(16);
        _eoTableColumn0.setMaxWidth(1000);
        _eoTableColumn0.setPreferredWidth(160);
        _eoTableColumn0.setWidth(160);
        _eoTableColumn0.setResizable(true);
        _eoTableColumn0.setHeaderValue("Name");

        if (_replacedObjects.objectForKey("_nsOutlineView0") == null) {
            _nsOutlineView0.table().addColumn(_eoTableColumn0);
            _nsOutlineView0.table().addColumn(_eoTableColumn1);
            _setFontForComponent(_nsOutlineView0.table().getTableHeader(), "Lucida Grande", 11, Font.PLAIN);
            _nsOutlineView0.table().setRowHeight(20);
        }

        if (!(_nsView0.getLayout() instanceof EOViewLayout)) { _nsView0.setLayout(new EOViewLayout()); }
        _nsOutlineView0.setSize(543, 516);
        _nsOutlineView0.setLocation(-7, 14);
        ((EOViewLayout)_nsView0.getLayout()).setAutosizingMask(_nsOutlineView0, EOViewLayout.WidthSizable | EOViewLayout.HeightSizable);
        _nsView0.add(_nsOutlineView0);
        _nsTextField0.setSize(282, 17);
        _nsTextField0.setLocation(68, -5);
        ((EOViewLayout)_nsView0.getLayout()).setAutosizingMask(_nsTextField0, EOViewLayout.MinXMargin | EOViewLayout.MaxXMargin | EOViewLayout.MaxYMargin);
        _nsView0.add(_nsTextField0);

        if (_replacedObjects.objectForKey("_eoFrame0") == null) {
            _nsView0.setSize(529, 544);
            _eoFrame0.setTitle("Window");
            _eoFrame0.setLocation(117, 124);
            _eoFrame0.setSize(529, 544);
        }
    }
}