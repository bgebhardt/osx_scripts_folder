FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 ? 9 function returns width and height of the primary display    
 �   r   f u n c t i o n   r e t u r n s   w i d t h   a n d   h e i g h t   o f   t h e   p r i m a r y   d i s p l a y      i         I      �������� 0 displaysize displaySize��  ��    k     7       l     ��  ��    / ) this only works with one display for now     �   R   t h i s   o n l y   w o r k s   w i t h   o n e   d i s p l a y   f o r   n o w   ��  Z     7  ��   =        n        I    �������� 0 isonedisplay isOneDisplay��  ��     f       m    ��
�� boovtrue  k   
 ,        O   
 & ! " ! k    % # #  $ % $ r     & ' & n     ( ) ( 1    ��
�� 
pbnd ) n     * + * m    ��
�� 
cwin + 1    ��
�� 
desk ' o      ���� 0 screen_resolution   %  , - , r     . / . n     0 1 0 4    �� 2
�� 
cobj 2 m    ����  1 o    ���� 0 screen_resolution   / o      ���� 0 screen_width   -  3�� 3 r    % 4 5 4 n    # 6 7 6 4     #�� 8
�� 
cobj 8 m   ! "����  7 o     ���� 0 screen_resolution   5 o      ���� 0 screen_height  ��   " m   
  9 9�                                                                                  MACS  alis    r  Danger Mouse               �h�'H+   9
Finder.app                                                      I*�PǴ        ����  	                CoreServices    �i�      �Q84     9 �5 �3  3Danger Mouse:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��      :�� : L   ' , ; ; J   ' + < <  = > = o   ' (���� 0 screen_width   >  ?�� ? o   ( )���� 0 screen_height  ��  ��  ��    k   / 7 @ @  A B A I  / 4�� C��
�� .sysodlogaskr        TEXT C m   / 0 D D � E E � S c r i p t   d o e s n ' t   w o r k   w i t h   m u l t i p l e   d i s p l a y s   r i g h t   n o w .   [ f u n c t i o n :   d i s p l a y W i d t h ( ) ]��   B  F�� F L   5 7 G G m   5 6����  ��  ��     H I H l     ��������  ��  ��   I  J K J l     �� L M��   L %  returns if one display or not.    M � N N >   r e t u r n s   i f   o n e   d i s p l a y   o r   n o t . K  O P O i     Q R Q I      �������� 0 isonedisplay isOneDisplay��  ��   R O      S T S Z     U V�� W U ?     X Y X l    Z���� Z I   �� [��
�� .corecnte****       **** [ 2    ��
�� 
dskp��  ��  ��   Y m    ����  V L     \ \ m    ��
�� boovfals��   W L     ] ] m    ��
�� boovtrue T m      ^ ^�                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��   P  _ ` _ l     ��������  ��  ��   `  a b a i     c d c I      �� e���� 0 max   e  f g f o      ���� 0 x   g  h�� h o      ���� 0 y  ��  ��   d Z      i j�� k i B      l m l o     ���� 0 x   m o    ���� 0 y   j L     n n o    ���� 0 y  ��   k L     o o o    ���� 0 x   b  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t � � picks a grid size automatically that gives 16 increments.  For width use item1 of displaySize().  For height use item 2 of displaySize()    u � v v   p i c k s   a   g r i d   s i z e   a u t o m a t i c a l l y   t h a t   g i v e s   1 6   i n c r e m e n t s .     F o r   w i d t h   u s e   i t e m 1   o f   d i s p l a y S i z e ( ) .     F o r   h e i g h t   u s e   i t e m   2   o f   d i s p l a y S i z e ( ) s  w x w l     y���� y r      z { z I    �� |��
�� .sysorondlong        doub | l    
 }���� } ^     
 ~  ~ l     ����� � n      � � � 4    �� �
�� 
cobj � m    ����  � n     � � � I    �������� 0 displaysize displaySize��  ��   �  f     ��  ��    m    	���� ��  ��  ��   { o      ���� 0 	_gridsize 	_gridSize��  ��   x  � � � l    � � � � r     � � � I    �� ����� 0 max   �  � � � m    ����  �  ��� � ]     � � � o    ���� 0 	_gridsize 	_gridSize � m    ���� ��  ��   � o      ���� 0 	_safesize 	_safeSize � � � attempts to automatically set to a reasonable size.  change this if your new _gridSize is not a factor of 256 - not too small though! You can mess up the window!    � � � �D   a t t e m p t s   t o   a u t o m a t i c a l l y   s e t   t o   a   r e a s o n a b l e   s i z e .     c h a n g e   t h i s   i f   y o u r   n e w   _ g r i d S i z e   i s   n o t   a   f a c t o r   o f   2 5 6   -   n o t   t o o   s m a l l   t h o u g h !   Y o u   c a n   m e s s   u p   t h e   w i n d o w ! �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  original    � � � �  o r i g i n a l �  � � � l     �� � ���   �   set _gridSize to 64    � � � � (   s e t   _ g r i d S i z e   t o   6 4 �  � � � l     �� � ���   � � �set _safeSize to 256 -- change this if your new _gridSize is not a factor of 256 - not too small though! You can mess up the window!    � � � � s e t   _ s a f e S i z e   t o   2 5 6   - -   c h a n g e   t h i s   i f   y o u r   n e w   _ g r i d S i z e   i s   n o t   a   f a c t o r   o f   2 5 6   -   n o t   t o o   s m a l l   t h o u g h !   Y o u   c a n   m e s s   u p   t h e   w i n d o w ! �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   for debugging issues    � � � � *   f o r   d e b u g g i n g   i s s u e s �  � � � l   ' ����� � O   ' � � � I  ! &������
�� .miscactvnull��� ��� null��  ��   � m     � ��                                                                                  rimZ  alis    h  Danger Mouse               �h�'H+     Google Chrome.app                                               ���{e        ����  	                Applications    �i�      ����         +Danger Mouse:Applications:Google Chrome.app   $  G o o g l e   C h r o m e . a p p    D a n g e r   M o u s e  Applications/Google Chrome.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  (7 ����� � O   (7 � � � k   ,6 � �  � � � r   , 1 � � � 2   , /��
�� 
prcs � o      ���� 0 _everyprocess _everyProcess �  � � � Y   2 ` ��� � ��� � k   @ [ � �  � � � r   @ H � � � n   @ F � � � 1   D F��
�� 
pisf � n   @ D � � � 4   A D�� �
�� 
cobj � o   B C���� 0 n   � o   @ A���� 0 _everyprocess _everyProcess � o      ���� 0 
_frontmost 
_frontMost �  ��� � Z  I [ � ����� � =  I L � � � o   I J���� 0 
_frontmost 
_frontMost � m   J K��
�� boovtrue � r   O W � � � 4   O S�� �
�� 
prcs � o   Q R���� 0 n   � o      �� 0 _frontmostapp _frontMostApp��  ��  ��  �� 0 n   � m   5 6�~�~  � I  6 ;�} ��|
�} .corecnte****       **** � o   6 7�{�{ 0 _everyprocess _everyProcess�|  ��   �  � � � l  a a�z�y�x�z  �y  �x   �  � � � r   a m � � � n   a i � � � 4   d i�w �
�w 
cwin � m   g h�v�v  � o   a d�u�u 0 _frontmostapp _frontMostApp � o      �t�t 0 
_windowone 
_windowOne �  � � � r   n y � � � n   n u � � � 1   q u�s
�s 
posn � o   n q�r�r 0 
_windowone 
_windowOne � o      �q�q 0 	_position   �  � � � r   z � � � � n   z � � � � 1   } ��p
�p 
ptsz � o   z }�o�o 0 
_windowone 
_windowOne � o      �n�n 	0 _size   �  � � � l  � ��m�l�k�m  �l  �k   �  � � � r   � � � � � n   � � � � � 4   � ��j �
�j 
cobj � m   � ��i�i  � o   � ��h�h 0 	_position   � o      �g�g 0 x1   �  � � � r   � � � � � n   � � � � � 4   � ��f �
�f 
cobj � m   � ��e�e  � o   � ��d�d 0 	_position   � o      �c�c 0 y1   �  � � � r   � � � � � n   � � � � � 4   � ��b 
�b 
cobj  m   � ��a�a  � o   � ��`�` 	0 _size   � o      �_�_ 
0 _width   �  r   � � n   � � 4   � ��^
�^ 
cobj m   � ��]�]  o   � ��\�\ 	0 _size   o      �[�[ 0 _height   	 r   � �

 l  � ��Z�Y [   � � o   � ��X�X 0 x1   o   � ��W�W 
0 _width  �Z  �Y   o      �V�V 0 x2  	  r   � � l  � ��U�T [   � � o   � ��S�S 0 y1   o   � ��R�R 0 _height  �U  �T   o      �Q�Q 0 y2    l  � ��P�O�N�P  �O  �N    r   � � l  � ��M�L ^   � � o   � ��K�K 0 x1   o   � ��J�J 0 	_gridsize 	_gridSize�M  �L   o      �I�I 0 	_x1number 	_x1Number   r   � �!"! c   � �#$# o   � ��H�H 0 	_x1number 	_x1Number$ m   � ��G
�G 
TEXT" o      �F�F "0 _x1numberstring _x1NumberString  %&% r   � �'(' n   � �)*) 4  � ��E+
�E 
cobj+ m   � ��D�D��* o   � ��C�C "0 _x1numberstring _x1NumberString( o      �B�B 0 _x1remainder _x1Remainder& ,-, r   � �./. l  � �0�A�@0 ^   � �121 o   � ��?�? 0 x2  2 o   � ��>�> 0 	_gridsize 	_gridSize�A  �@  / o      �=�= 0 	_x2number 	_x2Number- 343 r   � 565 c   � �787 o   � ��<�< 0 	_x2number 	_x2Number8 m   � ��;
�; 
TEXT6 o      �:�: "0 _x2numberstring _x2NumberString4 9:9 r  ;<; n  =>= 4 �9?
�9 
cobj? m  �8�8��> o  �7�7 "0 _x2numberstring _x2NumberString< o      �6�6 0 _x2remainder _x2Remainder: @A@ l �5�4�3�5  �4  �3  A BCB r  DED ]  FGF l H�2�1H I �0I�/
�0 .sysorondlong        doubI ^  JKJ o  �.�. 0 x1  K o  �-�- 0 	_gridsize 	_gridSize�/  �2  �1  G o  �,�, 0 	_gridsize 	_gridSizeE o      �+�+ 0 	_leftgrid 	_leftGridC LML r  +NON ]  'PQP l %R�*�)R I %�(S�'
�( .sysorondlong        doubS ^  !TUT o  �&�& 0 x2  U o   �%�% 0 	_gridsize 	_gridSize�'  �*  �)  Q o  %&�$�$ 0 	_gridsize 	_gridSizeO o      �#�# 0 
_rightgrid 
_rightGridM VWV l ,,�"�!� �"  �!  �   W XYX l ,,�Z[�  Z L F HACK - if _rightGrid is greater than _width then subtrack a grid size   [ �\\ �   H A C K   -   i f   _ r i g h t G r i d   i s   g r e a t e r   t h a n   _ w i d t h   t h e n   s u b t r a c k   a   g r i d   s i z eY ]^] Z  ,C_`��_ ?  ,3aba o  ,/�� 0 
_rightgrid 
_rightGridb o  /2�� 
0 _width  ` r  6?cdc \  6;efe o  69�� 0 
_rightgrid 
_rightGridf o  9:�� 0 	_gridsize 	_gridSized o      �� 0 
_rightgrid 
_rightGrid�  �  ^ ghg l DD����  �  �  h iji I DK�k�
� .ascrcmnt****      � ****k o  DG�� 0 	_position  �  j lml I LQ�n�
� .ascrcmnt****      � ****n o  LM�� 0 	_gridsize 	_gridSize�  m opo I RY�q�
� .ascrcmnt****      � ****q o  RU�� 0 _height  �  p rsr I Za�t�

� .ascrcmnt****      � ****t o  Z]�	�	 
0 _width  �
  s uvu I bm�w�
� .ascrcmnt****      � ****w b  bixyx m  bezz �{{  _ l e f t G r i d  y o  eh�� 0 	_leftgrid 	_leftGrid�  v |}| I nu�~�
� .ascrcmnt****      � ****~ o  nq�� 0 
_rightgrid 
_rightGrid�  } � I v}���
� .ascrcmnt****      � ****� m  vy�� ���  x ' s�  � ��� I ~�� ���
�  .ascrcmnt****      � ****� o  ~����� 0 x1  ��  � ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 	_x1number 	_x1Number��  � ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 x2  ��  � ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 	_x2number 	_x2Number��  � ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 _x1remainder _x1Remainder��  � ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 _x2remainder _x2Remainder��  � ��� l ����������  ��  ��  � ��� l ��������  � 7 1 the window won't get much smaller than _safeSize   � ��� b   t h e   w i n d o w   w o n ' t   g e t   m u c h   s m a l l e r   t h a n   _ s a f e S i z e� ��� Z  ��������� G  ����� G  ����� >  ����� o  ������ 0 _x1remainder _x1Remainder� m  ���� ���  0� >  ����� o  ������ 0 _x2remainder _x2Remainder� m  ���� ���  0� B  ����� o  ������ 
0 _width  � o  ������ 0 	_safesize 	_safeSize� k  ���� ��� r  ����� J  ���� ��� o  ������ 0 	_leftgrid 	_leftGrid� ���� o  ������ 0 y1  ��  � n      ��� 1  ����
�� 
posn� o  ������ 0 
_windowone 
_windowOne� ��� r  ����� J  ���� ��� l �������� \  ����� o  ������ 0 
_rightgrid 
_rightGrid� o  ������ 0 	_leftgrid 	_leftGrid��  ��  � ���� o  ������ 0 _height  ��  � n      ��� 1  ����
�� 
ptsz� o  ������ 0 
_windowone 
_windowOne� ���� L  ������  ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � A ; if the window is on the grid, it is reduced by 1 grid size   � ��� v   i f   t h e   w i n d o w   i s   o n   t h e   g r i d ,   i t   i s   r e d u c e d   b y   1   g r i d   s i z e� ��� Z  �4������� F  ���� =  ���� o  ����� 0 _x1remainder _x1Remainder� m  �� ���  0� =  	��� o  	���� 0 _x2remainder _x2Remainder� m  �� ���  0� k  0�� ��� r  -��� J  %�� ��� l  ������ \   ��� \  ��� o  ���� 0 
_rightgrid 
_rightGrid� o  ���� 0 	_leftgrid 	_leftGrid� o  ���� 0 	_gridsize 	_gridSize��  ��  � ���� o   #���� 0 _height  ��  � n      ��� 1  (,��
�� 
ptsz� o  %(���� 0 
_windowone 
_windowOne� ���� L  .0����  ��  ��  ��  � ��� l 55��������  ��  ��  � ��� l 55��������  ��  ��  � ���� l 55��������  ��  ��  ��   � m   ( )���                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       ���������  � ���������� 0 displaysize displaySize�� 0 isonedisplay isOneDisplay�� 0 max  
�� .aevtoappnull  �   � ****� �� ���������� 0 displaysize displaySize��  ��  � �������� 0 screen_resolution  �� 0 screen_width  �� 0 screen_height  � 	�� 9���������� D���� 0 isonedisplay isOneDisplay
�� 
desk
�� 
cwin
�� 
pbnd
�� 
cobj�� 
�� .sysodlogaskr        TEXT�� 8)j+  e  '� *�,�,�,E�O��m/E�O���/E�UO��lvY 
�j Oj� �� R���������� 0 isonedisplay isOneDisplay��  ��  �  �  ^����
�� 
dskp
�� .corecnte****       ****�� � *�-j k fY eU� �� d���������� 0 max  �� ����� �  ������ 0 x  �� 0 y  ��  � ������ 0 x  �� 0 y  �  �� �� �Y �� �� ������
�� .aevtoappnull  �   � ****  k    7  w  �  �  �����  ��  ��   ���� 0 n   .���������������� ����������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�lz����k���� 0 displaysize displaySize
�� 
cobj�� 
�� .sysorondlong        doub�� 0 	_gridsize 	_gridSize�� �� 0 max  �� 0 	_safesize 	_safeSize
�� .miscactvnull��� ��� null
�� 
prcs�� 0 _everyprocess _everyProcess
�� .corecnte****       ****
�� 
pisf�� 0 
_frontmost 
_frontMost�� 0 _frontmostapp _frontMostApp
�� 
cwin�� 0 
_windowone 
_windowOne
� 
posn�~ 0 	_position  
�} 
ptsz�| 	0 _size  �{ 0 x1  �z 0 y1  �y 
0 _width  �x 0 _height  �w 0 x2  �v 0 y2  �u 0 	_x1number 	_x1Number
�t 
TEXT�s "0 _x1numberstring _x1NumberString�r 0 _x1remainder _x1Remainder�q 0 	_x2number 	_x2Number�p "0 _x2numberstring _x2NumberString�o 0 _x2remainder _x2Remainder�n 0 	_leftgrid 	_leftGrid�m 0 
_rightgrid 
_rightGrid
�l .ascrcmnt****      � ****
�k 
bool��8)j+  �k/�!j E�O*��l l+ E�O� *j 	UO�*�-E�O -k�j kh  ��/�,E�O�e  *�/E` Y h[OY��O_ a k/E` O_ a ,E` O_ a ,E` O_ �k/E` O_ �l/E` O_ �k/E` O_ �l/E` O_ _ E` O_ _ E` O_ �!E` O_ a &E` O_ �i/E`  O_ �!E` !O_ !a &E` "O_ "�i/E` #O_ �!j � E` $O_ �!j � E` %O_ %_  _ %�E` %Y hO_ j &O�j &O_ j &O_ j &Oa '_ $%j &O_ %j &Oa (j &O_ j &O_ j &O_ j &O_ !j &O_  j &O_ #j &O_  a )
 _ #a *a +&
 _ �a +& -_ $_ lv_ a ,FO_ %_ $_ lv_ a ,FOhY hO_  a , 	 _ #a - a +& _ %_ $�_ lv_ a ,FOhY hOPU ascr  ��ޭ