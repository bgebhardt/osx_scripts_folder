FasdUAS 1.101.10   ��   ��    k             l     �� ��    ? 9 script to move the front most window to the upper corner       	  l     ������  ��   	  
  
 p         �� �� 0 bdebug bDebug  �� �� 0 bonedisplay bOneDisplay  ������ 0 bnotifyerrors bNotifyErrors��        l     ��  r         m     ��
�� boovfals  o      ���� 0 bdebug bDebug��        l       r        m    ��
�� boovfals  o      ���� 0 bnotifyerrors bNotifyErrors  1 + set to true to display dialogs with errors         l    ��  r        n        I   	 �������� 0 isonedisplay isOneDisplay��  ��      f    	  o      ���� 0 bonedisplay bOneDisplay��     ! " ! l    #�� # I   �� $��
�� .ascrcmnt****      � **** $ b     % & % m     ' '  bOneDisplay =     & l    (�� ( c     ) * ) o    ���� 0 bonedisplay bOneDisplay * m    ��
�� 
TEXT��  ��  ��   "  + , + l     ������  ��   ,  - . - l   @ /�� / O    @ 0 1 0 k    ? 2 2  3 4 3 l   ������  ��   4  5 6 5 r    / 7 8 7 n    - 9 : 9 4   * -�� ;
�� 
cobj ; m   + ,����  : l   * <�� < 6  * = > = 2   !��
�� 
pcap > =  " ) ? @ ? 1   # %��
�� 
pisf @ m   & (��
�� boovtrue��   8 o      ���� 0 frontapp frontApp 6  A B A l  0 0������  ��   B  C D C l  0 0�� E��   E  	get window 1 of frontApp    D  F G F l  0 0�� H��   H  	get name of frontApp    G  I J I l  0 0������  ��   J  K L K l  0 0�� M��   M < 6 do it by window id as they are ordered front to back	    L  N O N l  0 0������  ��   O  P Q P n  0 = R S R I   1 =�� T����  0 positionwindow positionWindow T  U V U m   1 2����  V  W X W l  2 5 Y�� Y n   2 5 Z [ Z 1   3 5��
�� 
pnam [ o   2 3���� 0 frontapp frontApp��   X  \�� \ J   5 9 ] ]  ^ _ ^ m   5 6����  _  `�� ` m   6 7���� ��  ��  ��   S  f   0 1 Q  a�� a l  > >������  ��  ��   1 m     b b�null     ߀��  {System Events.app'g3����_  ��} ��7 (����D/�g3�P| �����R/�\�sevs   alis    �  Danger Mouse               ��KXH+    {System Events.app                                                pY���z        ����  	                CoreServices    �ڭ�      ��9�      {  W  V  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��   .  c d c l     ������  ��   d  e f e i      g h g I      �� i����  0 positionwindow positionWindow i  j k j o      ���� 0 thewin theWin k  l m l o      ���� 0 
theprocess 
theProcess m  n�� n o      ���� 0 thepos thePos��  ��   h O     � o p o k    � q q  r s r Q    ( t u v t e     w w 4    �� x
�� 
pcap x o   	 
���� 0 
theprocess 
theProcess u R      ������
�� .ascrerr ****      � ****��  ��   v k    ( y y  z { z Z    % | }���� | o    ���� 0 bnotifyerrors bNotifyErrors } I   !�� ~��
�� .sysodlogaskr        TEXT ~ b      �  b     � � � m     � �  Application     � o    ���� 0 
theprocess 
theProcess � m     � �  
 not open.   ��  ��  ��   {  ��� � L   & (����  ��   s  � � � l  ) )������  ��   �  ��� � Z   ) � � ��� � � l  ) , ��� � =  ) , � � � o   ) *���� 0 bdebug bDebug � m   * +��
�� boovfals��   � k   / Y � �  � � � l  / /�� ���   �   move the window    �  � � � l  / /������  ��   �  � � � Q   / W � � � � r   2 = � � � o   2 3���� 0 thepos thePos � n       � � � 1   : <��
�� 
posn � n   3 : � � � 4   7 :�� �
�� 
cwin � o   8 9���� 0 thewin theWin � 4   3 7�� �
�� 
pcap � o   5 6���� 0 
theprocess 
theProcess � R      ������
�� .ascrerr ****      � ****��  ��   � I  E W�� ���
�� .sysodlogaskr        TEXT � b   E S � � � b   E L � � � b   E J � � � m   E F � �  Can not position window     � n   F I � � � 1   G I��
�� 
pnam � o   F G���� 0 thewin theWin � m   J K � �   for process     � n   L R � � � 1   P R��
�� 
pnam � 4   L P�� �
�� 
pcap � o   N O���� 0 
theprocess 
theProcess��   �  � � � l  X X������  ��   �  ��� � l  X X������  ��  ��  ��   � k   \ � � �  � � � l  \ \�� ���   �   log window position    �  � � � l  \ \�� ���   � 7 1 if no window passed in then log all window names    �  � � � Z   \ � � ��� � � l  \ _ ��� � =  \ _ � � � o   \ ]���� 0 thewin theWin � m   ] ^ � �      ��   � e   b i � � n   b i � � � 2  f h��
�� 
cwin � 4   b f�� �
�� 
pcap � o   d e���� 0 
theprocess 
theProcess��   � k   l � � �  � � � l  l l�� ���   � !  log position of the window    �  � � � r   l w � � � n   l u � � � 1   s u��
�� 
posn � n   l s � � � 4   p s�� �
�� 
cwin � o   q r���� 0 thewin theWin � 4   l p�� �
�� 
pcap � o   n o���� 0 
theprocess 
theProcess � o      ���� 0 curpos curPos �  ��� � I  x ��� ���
�� .ascrcmnt****      � **** � b   x � � � � b   x � � � � b   x � � � � b   x � � � � b   x � � � � b   x � � � � b   x  � � � b   x { � � � m   x y � �  position of window     � o   y z�� 0 thewin theWin � m   { ~ � �   of app     � n    � � � � 1   � ��~
�~ 
pnam � 4    ��} �
�} 
pcap � o   � ��|�| 0 
theprocess 
theProcess � m   � � � �   is {    � n   � � � � � 4   � ��{ �
�{ 
cobj � m   � ��z�z  � o   � ��y�y 0 curpos curPos � m   � � � �  ,     � n   � � � � � 4   � ��x �
�x 
cobj � m   � ��w�w  � o   � ��v�v 0 curpos curPos � m   � � � �  }   ��  ��   �  ��u � l  � ��t�s�t  �s  �u  ��   p m      b f  � � � l     �r�q�r  �q   �  � � � l     �p ��p   � 1 + determines if you have one or two displays    �  � � � l     �o ��o   � U O NOTE: This only works when the main screen is on the right of the 2nd display!    �  � � � l     �n �n    S M from http://daringfireball.net/2006/12/display_size_applescript_the_lazy_way    � �m i     I      �l�k�j�l 0 isonedisplay isOneDisplay�k  �j   k     Z  l     �i�h�i  �h    O     X	
	 k    W  l   �g�g     get the desktop bounds     r     n     1   	 �f
�f 
pbnd n    	 m    	�e
�e 
cwin 1    �d
�d 
desk o      �c�c 0 _b    r     n     4    �b
�b 
cobj m    �a�a  o    �`�` 0 _b   o      �_�_ 0 _startx _startX  r     !  n    "#" 4    �^$
�^ 
cobj$ m    �]�] # o    �\�\ 0 _b  ! o      �[�[ 0 _starty _startY %&% r    "'(' n     )*) 4     �Z+
�Z 
cobj+ m    �Y�Y * o    �X�X 0 _b  ( o      �W�W 
0 _width  & ,-, r   # )./. n   # '010 4   $ '�V2
�V 
cobj2 m   % &�U�U 1 o   # $�T�T 0 _b  / o      �S�S 0 _height  - 343 I  * /�R5�Q
�R .ascrcmnt****      � ****5 o   * +�P�P 0 _startx _startX�Q  4 676 I  0 5�O8�N
�O .ascrcmnt****      � ****8 o   0 1�M�M 0 _starty _startY�N  7 9:9 I  6 ;�L;�K
�L .ascrcmnt****      � ****; o   6 7�J�J 
0 _width  �K  : <=< I  < A�I>�H
�I .ascrcmnt****      � ****> o   < =�G�G 0 _height  �H  = ?@? l  B B�F�E�F  �E  @ ABA l  B B�DC�D  C B < if the bounds start with two zeros then this is one display   B DED l  B B�CF�C  F U O NOTE: This only works when the main screen is on the right of the 2nd display!   E G�BG Z   B WHI�AJH F   B MKLK =  B EMNM o   B C�@�@ 0 _startx _startXN m   C D�?�?  L =  H KOPO o   H I�>�> 0 _starty _startYP m   I J�=�=  I L   P RQQ m   P Q�<
�< boovtrue�A  J L   U WRR m   U V�;
�; boovfals�B  
 m     SS�null     3����  {
Finder.appU  ��: 'g3�(����  ��} ��7 H����D/�g3�$P| �����R/�\�MACS   alis    r  Danger Mouse               ��KXH+    {
Finder.app                                                       F<����        ����  	                CoreServices    �ڭ�      ��'b      {  W  V  3Danger Mouse:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��   T�:T l  Y Y�9�8�9  �8  �:  �m       �7UVWX�7  U �6�5�4�6  0 positionwindow positionWindow�5 0 isonedisplay isOneDisplay
�4 .aevtoappnull  �   � ****V �3 h�2�1YZ�0�3  0 positionwindow positionWindow�2 �/[�/ [  �.�-�,�. 0 thewin theWin�- 0 
theprocess 
theProcess�, 0 thepos thePos�1  Y �+�*�)�(�+ 0 thewin theWin�* 0 
theprocess 
theProcess�) 0 thepos thePos�( 0 curpos curPosZ  b�'�&�%�$ � ��#�"�!�  �� � � � � �� � ��
�' 
pcap�&  �%  �$ 0 bnotifyerrors bNotifyErrors
�# .sysodlogaskr        TEXT�" 0 bdebug bDebug
�! 
cwin
�  
posn
� 
pnam
� 
cobj
� .ascrcmnt****      � ****�0 �� � 
*�/EW X  � �%�%j Y hOhO�f  / �*�/�/�,FW X  ��,%�%*�/�,%j OPY L��  *�/�-EY :*�/�/�,E�O�%a %*�/�,%a %�a k/%a %�a l/%a %j OPUW ���\]�� 0 isonedisplay isOneDisplay�  �  \ ������ 0 _b  � 0 _startx _startX� 0 _starty _startY� 
0 _width  � 0 _height  ] S�������
� 
desk
� 
cwin
� 
pbnd
� 
cobj� 
� .ascrcmnt****      � ****
� 
bool� [� U*�,�,�,E�O��k/E�O��l/E�O��m/E�O���/E�O�j O�j O�j O�j O�j 	 �j �& eY fUOPX �^��
_`�	
� .aevtoappnull  �   � ****^ k     @aa  bb  cc  dd  !ee  -��  �  �
  _  ` ���� '�� b�f� ������������� 0 bdebug bDebug� 0 bnotifyerrors bNotifyErrors� 0 isonedisplay isOneDisplay� 0 bonedisplay bOneDisplay
� 
TEXT
� .ascrcmnt****      � ****
� 
pcapf  
�  
pisf
�� 
cobj�� 0 frontapp frontApp
�� 
pnam�� �� ��  0 positionwindow positionWindow�	 AfE�OfE�O)j+ E�O���&%j O� #*�-�[�,\Ze81�k/E�O)k��,��lvm+ OPU ascr  ��ޭ