FasdUAS 1.101.10   ��   ��    k             l     �� ��    t n takes the selection - parses it for a color - shows the color-chooser and then inserts the newly chosen color       	  l     ������  ��   	  
  
 i         I      �������� 0 seescriptsettings  ��  ��    L        K        ��  �� 0 toolbaricon toolbarIcon  m        ToolbarIconColorChooser     �� ���� $0 indefaulttoolbar inDefaultToolbar  m       	 yes   ��        l     ������  ��        l     ������  ��        l     ��  O         k            l   �� !��   !  
	selection       " # " l   �� $��   $ % 	properties of currentSelection    #  % & % l   �� '��   ' % 	properties of currentSelection    &  ( ) ( l   �� *��   * / )	if (length of currentSelection) > 0 then    )  + , + l   �� -��   - + %		set startcolor to {0, 65535, 65535}    ,  . / . l   �� 0��   0  	else    /  1 2 1 l   �� 3��   3 / )		set startcolor to {65535, 65535, 65535}    2  4�� 4 l   �� 5��   5  	end if   ��    m      6 6�null     � �� ��SubEthaEdit.app9 ո������   ���@>6 ����˚��ȸ��@X���ܨ���Hdra   alis    l  Dom                        �#��H+   ��SubEthaEdit.app                                                 (p2�r�9        ����  	                Text    �#�      �r�     �� ƥ  <  4Dom:Applications:MyApplications:Text:SubEthaEdit.app     S u b E t h a E d i t . a p p    D o m  0Applications/MyApplications/Text/SubEthaEdit.app  / ��  ��     7 8 7 l     ������  ��   8  9 : 9 l    ;�� ; r     < = < J     > >  ? @ ? m    ����   �� @  A B A m    	����   �� B  C�� C m   	 
����   ����   = o      ���� 0 
startcolor  ��   :  D E D l    F�� F r     G H G I   ���� I
�� .sysochclcRGB    ��� null��   I �� J��
�� 
dcol J o    ���� 0 
startcolor  ��   H o      ���� 0 chosencolor chosenColor��   E  K L K l     ������  ��   L  M N M l   ! O�� O r    ! P Q P I    �� R���� 0 stringcolor stringColor R  S�� S o    ���� 0 chosencolor chosenColor��  ��   Q o      ���� 0 colorstring colorString��   N  T U T l     ������  ��   U  V W V l  " 0 X�� X O   " 0 Y Z Y r   & / [ \ [ b   & ) ] ^ ] m   & ' _ _  #    ^ o   ' (���� 0 colorstring colorString \ n       ` a ` 1   , .��
�� 
pcnt a 1   ) ,��
�� 
pSel Z m   " # 6��   W  b c b l     ������  ��   c  d e d i     f g f I      �� h���� &0 hexcolorcomponent hexColorComponent h  i�� i o      ����  0 colorcomponent colorComponent��  ��   g Z     # j k�� l j A      m n m o     ����  0 colorcomponent colorComponent n m    ���� 
 k L     o o I   �� p��
�� .sysontocTEXT       shor p l    q�� q [     r s r o    ����  0 colorcomponent colorComponent s l    t�� t I   �� u��
�� .sysoctonshor       TEXT u m     v v  0   ��  ��  ��  ��  ��   l L    # w w I   "�� x��
�� .sysontocTEXT       shor x l    y�� y [     z { z \     | } | o    ����  0 colorcomponent colorComponent } m    ���� 
 { l    ~�� ~ I   �� ��
�� .sysoctonshor       TEXT  m     � �  a   ��  ��  ��  ��   e  � � � l     ������  ��   �  ��� � i     � � � I      �� ����� 0 stringcolor stringColor �  ��� � o      ���� 0 	somecolor 	someColor��  ��   � k     E � �  � � � r      � � � m      � �       � o      ���� "0 resultingstring resultingString �  � � � X    B ��� � � k    = � �  � � � r     � � � I   �� � �
�� .sysorondlong        doub � l    ��� � ^     � � � o    ���� 0 
colorvalue 
colorValue � m    ���� ��   � �� ���
�� 
dire � m    ��
�� olierndD��   � o      ���� 0 bigcomponent bigComponent �  ��� � r     = � � � b     ; � � � b     ( � � � o     !���� "0 resultingstring resultingString � I   ! '�� ����� &0 hexcolorcomponent hexColorComponent �  ��� � o   " #���� 0 bigcomponent bigComponent��  ��   � I   ( :�� ����� &0 hexcolorcomponent hexColorComponent �  ��� � I  ) 6�� � �
�� .sysorondlong        doub � l  ) 0 ��� � ^   ) 0 � � � l  ) . ��� � \   ) . � � � o   ) *���� 0 
colorvalue 
colorValue � ]   * - � � � o   * +���� 0 bigcomponent bigComponent � m   + ,���� ��   � m   . /���� ��   � �� ���
�� 
dire � m   1 2��
�� olierndD��  ��  ��   � o      ���� "0 resultingstring resultingString��  �� 0 
colorvalue 
colorValue � o    ���� 0 	somecolor 	someColor �  ��� � L   C E � � o   C D���� "0 resultingstring resultingString��  ��       �� � � � � ���   � ���������� 0 seescriptsettings  �� &0 hexcolorcomponent hexColorComponent�� 0 stringcolor stringColor
�� .aevtoappnull  �   � **** � �� ���� � ����� 0 seescriptsettings  ��  ��   �   � �� �� ��� 0 toolbaricon toolbarIcon�� $0 indefaulttoolbar inDefaultToolbar� �� ����� � �~ g�}�| � ��{�~ &0 hexcolorcomponent hexColorComponent�} �z ��z  �  �y�y  0 colorcomponent colorComponent�|   � �x�x  0 colorcomponent colorComponent � �w v�v�u ��w 

�v .sysoctonshor       TEXT
�u .sysontocTEXT       shor�{ $�� ��j j Y ���j j  � �t ��s�r � ��q�t 0 stringcolor stringColor�s �p ��p  �  �o�o 0 	somecolor 	someColor�r   � �n�m�l�k�n 0 	somecolor 	someColor�m "0 resultingstring resultingString�l 0 
colorvalue 
colorValue�k 0 bigcomponent bigComponent � 
 ��j�i�h�g�f�e�d�c�b
�j 
kocl
�i 
cobj
�h .corecnte****       ****�g 
�f 
dire
�e olierndD
�d .sysorondlong        doub�c &0 hexcolorcomponent hexColorComponent�b �q F�E�O =�[��l kh ��!��l E�O�*�k+ %*��� �!��l k+ %E�[OY��O� � �a ��`�_ � ��^
�a .aevtoappnull  �   � **** � k     0 � �   � �  9 � �  D � �  M � �  V�]�]  �`  �_   �   �  6�\�[�Z�Y�X�W�V _�U�T�\   ���[ 0 
startcolor  
�Z 
dcol
�Y .sysochclcRGB    ��� null�X 0 chosencolor chosenColor�W 0 stringcolor stringColor�V 0 colorstring colorString
�U 
pSel
�T 
pcnt�^ 1� hUO���mvE�O*��l E�O*�k+ E�O� ��%*�,�,FU ascr  ��ޭ