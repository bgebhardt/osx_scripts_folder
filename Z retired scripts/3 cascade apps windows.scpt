FasdUAS 1.101.10   ��   ��    k             l     �� ��    9 3 script to cascade the windows of the frontmost app       	  l     ������  ��   	  
  
 p         �� �� 0 bdebug bDebug  �� �� 0 bonedisplay bOneDisplay  ������ 0 bnotifyerrors bNotifyErrors��        l     ��  r         m     ��
�� boovfals  o      ���� 0 bdebug bDebug��        l       r        m    ��
�� boovfals  o      ���� 0 bnotifyerrors bNotifyErrors  1 + set to true to display dialogs with errors         l    ��  r        n        I   	 �������� 0 isonedisplay isOneDisplay��  ��      f    	  o      ���� 0 bonedisplay bOneDisplay��     ! " ! l    #�� # I   �� $��
�� .ascrcmnt****      � **** $ b     % & % m     ' '  bOneDisplay =     & l    (�� ( c     ) * ) o    ���� 0 bonedisplay bOneDisplay * m    ��
�� 
TEXT��  ��  ��   "  + , + l     ������  ��   ,  - . - l   ? /�� / O    ? 0 1 0 k    > 2 2  3 4 3 l   ������  ��   4  5 6 5 r    / 7 8 7 n    - 9 : 9 4   * -�� ;
�� 
cobj ; m   + ,����  : l   * <�� < 6  * = > = 2   !��
�� 
pcap > =  " ) ? @ ? 1   # %��
�� 
pisf @ m   & (��
�� boovtrue��   8 o      ���� 0 frontapp frontApp 6  A B A l  0 0������  ��   B  C D C l  0 0�� E��   E  	get window 1 of frontApp    D  F G F l  0 0�� H��   H  	get name of frontApp    G  I J I l  0 0������  ��   J  K L K l  0 0�� M��   M < 6 do it by window id as they are ordered front to back	    L  N O N l  0 0������  ��   O  P Q P n  0 < R S R I   1 <�� T����  0 cascadewindows cascadeWindows T  U V U n   1 4 W X W 1   2 4��
�� 
pnam X o   1 2���� 0 frontapp frontApp V  Y�� Y J   4 8 Z Z  [ \ [ m   4 5����  \  ]�� ] m   5 6���� ��  ��  ��   S  f   0 1 Q  ^�� ^ l  = =������  ��  ��   1 m     _ _�null     ߀��  {System Events.app'g3�����_  D�P|������D/�g3�`} h����R/��sevs   alis    �  Danger Mouse               ��KXH+    {System Events.app                                                pY���z        ����  	                CoreServices    �ڭ�      ��9�      {  W  V  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��   .  ` a ` l     ������  ��   a  b c b l     ������  ��   c  d e d l     �� f��   f 2 , pass in the process and the start position.    e  g h g l     �� i��   i : 4 TODO, create a way to default startPos to { 5, 27 }    h  j k j i      l m l I      �� n����  0 cascadewindows cascadeWindows n  o p o o      ���� 0 
theprocess 
theProcess p  q�� q o      ���� 0 startpos startPos��  ��   m Q     e r s t r k    L u u  v w v r    	 x y x n     z { z 4    �� |
�� 
cobj | m    ����  { o    ���� 0 startpos startPos y o      ���� 0 startx startX w  } ~ } r   
   �  n   
  � � � 4    �� �
�� 
cobj � m    ����  � o   
 ���� 0 startpos startPos � o      ���� 0 starty startY ~  � � � O    J � � � k    I � �  � � � r     � � � m    ����   � o      ���� 0 windowindex windowIndex �  ��� � X    I ��� � � k   . D � �  � � � l  . .�� ���   � 9 3	first move window to upper corner of main display.    �  � � � l  . .�� ���   � P J  make the position of cascade actually cascade by 25 pixels in x and in y    �  � � � l  . > � � � r   . > � � � J   . : � �  � � � [   . 3 � � � l  . 1 ��� � ]   . 1 � � � o   . /���� 0 windowindex windowIndex � m   / 0���� ��   � o   1 2���� 0 startx startX �  ��� � [   3 8 � � � l  3 6 ��� � ]   3 6 � � � o   3 4���� 0 windowindex windowIndex � m   4 5���� ��   � o   6 7���� 0 starty startY��   � n       � � � 1   ; =��
�� 
posn � o   : ;���� 0 i   �   {0, 22}    �  � � � l  ? ?������  ��   �  � � � l  ? ?�� ���   �   increment the index    �  ��� � r   ? D � � � [   ? B � � � o   ? @���� 0 windowindex windowIndex � m   @ A����  � o      ���� 0 windowindex windowIndex��  �� 0 i   � n    " � � � 2    "��
�� 
cwin � 4     �� �
�� 
pcap � o    ���� 0 
theprocess 
theProcess��   � m     _ �  ��� � l  K K������  ��  ��   s R      ������
�� .ascrerr ****      � ****��  ��   t Z   T e � ����� � o   T U���� 0 bnotifyerrors bNotifyErrors � I  X a�� ���
�� .sysodlogaskr        TEXT � b   X ] � � � b   X [ � � � m   X Y � � * $Can not cascade windows for process     � o   Y Z���� 0 
theprocess 
theProcess � m   [ \ � �  .   ��  ��  ��   k  � � � l     ������  ��   �  � � � l     �� ���   � 1 + determines if you have one or two displays    �  � � � l     �� ���   � U O NOTE: This only works when the main screen is on the right of the 2nd display!    �  � � � l     �� ���   � S M from http://daringfireball.net/2006/12/display_size_applescript_the_lazy_way    �  � � � i     � � � I      �������� 0 isonedisplay isOneDisplay��  ��   � k     Z � �  � � � l     ������  ��   �  � � � O     X � � � k    W � �  � � � l   �� ���   �   get the desktop bounds    �  � � � r     � � � n     � � � 1   	 ��
�� 
pbnd � n    	 � � � m    	��
�� 
cwin � 1    ��
�� 
desk � o      �� 0 _b   �  � � � r     � � � n     � � � 4    �~ �
�~ 
cobj � m    �}�}  � o    �|�| 0 _b   � o      �{�{ 0 _startx _startX �  � � � r     � � � n     � � � 4    �z �
�z 
cobj � m    �y�y  � o    �x�x 0 _b   � o      �w�w 0 _starty _startY �  � � � r    " � � � n      � � � 4     �v �
�v 
cobj � m    �u�u  � o    �t�t 0 _b   � o      �s�s 
0 _width   �  � � � r   # ) � � � n   # ' �  � 4   $ '�r
�r 
cobj m   % &�q�q   o   # $�p�p 0 _b   � o      �o�o 0 _height   �  I  * /�n�m
�n .ascrcmnt****      � **** o   * +�l�l 0 _startx _startX�m    I  0 5�k�j
�k .ascrcmnt****      � **** o   0 1�i�i 0 _starty _startY�j   	 I  6 ;�h
�g
�h .ascrcmnt****      � ****
 o   6 7�f�f 
0 _width  �g  	  I  < A�e�d
�e .ascrcmnt****      � **** o   < =�c�c 0 _height  �d    l  B B�b�a�b  �a    l  B B�`�`   B < if the bounds start with two zeros then this is one display     l  B B�_�_   U O NOTE: This only works when the main screen is on the right of the 2nd display!    �^ Z   B W�] F   B M =  B E o   B C�\�\ 0 _startx _startX m   C D�[�[   =  H K o   H I�Z�Z 0 _starty _startY m   I J�Y�Y   L   P R   m   P Q�X
�X boovtrue�]   L   U W!! m   U V�W
�W boovfals�^   � m     ""�null     3����  {
Finder.appU   �; 'g3�(���/  Ľ~  �9 H����D/�g3�$`} �����R/�\�MACS   alis    r  Danger Mouse               ��KXH+    {
Finder.app                                                       F<����        ����  	                CoreServices    �ڭ�      ��'b      {  W  V  3Danger Mouse:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��   � #�V# l  Y Y�U�T�U  �T  �V   � $%$ l     �S�R�S  �R  % &�Q& l     �P�O�P  �O  �Q       �N'()*�N  ' �M�L�K�M  0 cascadewindows cascadeWindows�L 0 isonedisplay isOneDisplay
�K .aevtoappnull  �   � ****( �J m�I�H+,�G�J  0 cascadewindows cascadeWindows�I �F-�F -  �E�D�E 0 
theprocess 
theProcess�D 0 startpos startPos�H  + �C�B�A�@�?�>�C 0 
theprocess 
theProcess�B 0 startpos startPos�A 0 startx startX�@ 0 starty startY�? 0 windowindex windowIndex�> 0 i  , �= _�<�;�:�9�8�7�6�5�4 � ��3
�= 
cobj
�< 
pcap
�; 
cwin
�: 
kocl
�9 .corecnte****       ****�8 
�7 
posn�6  �5  �4 0 bnotifyerrors bNotifyErrors
�3 .sysodlogaskr        TEXT�G f N��k/E�O��l/E�O� 6jE�O /*�/�-[��l kh �� ��� �lv��,FO�kE�[OY��UOPW X  	� �%�%j Y h) �2 ��1�0./�/�2 0 isonedisplay isOneDisplay�1  �0  . �.�-�,�+�*�. 0 _b  �- 0 _startx _startX�, 0 _starty _startY�+ 
0 _width  �* 0 _height  / "�)�(�'�&�%�$�#
�) 
desk
�( 
cwin
�' 
pbnd
�& 
cobj�% 
�$ .ascrcmnt****      � ****
�# 
bool�/ [� U*�,�,�,E�O��k/E�O��l/E�O��m/E�O���/E�O�j O�j O�j O�j O�j 	 �j �& eY fUOP* �"0�!� 12�
�" .aevtoappnull  �   � ****0 k     ?33  44  55  66  !77  -��  �!  �   1  2 ���� '�� _�8�������� 0 bdebug bDebug� 0 bnotifyerrors bNotifyErrors� 0 isonedisplay isOneDisplay� 0 bonedisplay bOneDisplay
� 
TEXT
� .ascrcmnt****      � ****
� 
pcap8  
� 
pisf
� 
cobj� 0 frontapp frontApp
� 
pnam� � �  0 cascadewindows cascadeWindows� @fE�OfE�O)j+ E�O���&%j O� "*�-�[�,\Ze81�k/E�O)��,��lvl+ OPU ascr  ��ޭ