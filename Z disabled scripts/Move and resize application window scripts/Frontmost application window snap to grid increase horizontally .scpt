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
  9 9�                                                                                  MACS  alis    t  Danger Mouse               Ʉ�ZH+   -�m
Finder.app                                                      .���(JG        ����  	                CoreServices    Ʌ�      �(��     -�m -�` -�_  6Danger Mouse:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��      :�� : L   ' , ; ; J   ' + < <  = > = o   ' (���� 0 screen_width   >  ?�� ? o   ( )���� 0 screen_height  ��  ��  ��    k   / 7 @ @  A B A I  / 4�� C��
�� .sysodlogaskr        TEXT C m   / 0 D D � E E � S c r i p t   d o e s n ' t   w o r k   w i t h   m u l t i p l e   d i s p l a y s   r i g h t   n o w .   [ f u n c t i o n :   d i s p l a y W i d t h ( ) ]��   B  F�� F L   5 7 G G m   5 6����  ��  ��     H I H l     ��������  ��  ��   I  J K J l     �� L M��   L %  returns if one display or not.    M � N N >   r e t u r n s   i f   o n e   d i s p l a y   o r   n o t . K  O P O i     Q R Q I      �������� 0 isonedisplay isOneDisplay��  ��   R O      S T S Z     U V�� W U ?     X Y X l    Z���� Z I   �� [��
�� .corecnte****       **** [ 2    ��
�� 
dskp��  ��  ��   Y m    ����  V L     \ \ m    ��
�� boovfals��   W L     ] ] m    ��
�� boovtrue T m      ^ ^�                                                                                  sevs  alis    �  Danger Mouse               Ʉ�ZH+   -�mSystem Events.app                                               .����        ����  	                CoreServices    Ʌ�      � PB     -�m -�` -�_  =Danger Mouse:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��   P  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c � � picks a grid size automatically that gives 16 increments.  For width use item1 of displaySize().  For height use item 2 of displaySize()    d � e e   p i c k s   a   g r i d   s i z e   a u t o m a t i c a l l y   t h a t   g i v e s   1 6   i n c r e m e n t s .     F o r   w i d t h   u s e   i t e m 1   o f   d i s p l a y S i z e ( ) .     F o r   h e i g h t   u s e   i t e m   2   o f   d i s p l a y S i z e ( ) b  f g f l     h���� h r      i j i I    �� k��
�� .sysorondlong        doub k l    
 l���� l ^     
 m n m l     o���� o n      p q p 4    �� r
�� 
cobj r m    ����  q n     s t s I    �������� 0 displaysize displaySize��  ��   t  f     ��  ��   n m    	���� ��  ��  ��   j o      ���� 0 	_gridsize 	_gridSize��  ��   g  u v u l    w x y w r     z { z l    |���� | n     } ~ } 4    �� 
�� 
cobj  m    ����  ~ n    � � � I    �������� 0 displaysize displaySize��  ��   �  f    ��  ��   { o      ���� 0 _screenwidth _screenWidth x m g change this to your screen width (or make it bigger than your scrren width if you want bigger windows)    y � � � �   c h a n g e   t h i s   t o   y o u r   s c r e e n   w i d t h   ( o r   m a k e   i t   b i g g e r   t h a n   y o u r   s c r r e n   w i d t h   i f   y o u   w a n t   b i g g e r   w i n d o w s ) v  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  	 original    � � � �    o r i g i n a l �  � � � l     �� � ���   �   set _gridSize to 64    � � � � (   s e t   _ g r i d S i z e   t o   6 4 �  � � � l     �� � ���   � � � set _screenWidth to 1280 -- change this to your screen width (or make it bigger than your scrren width if you want bigger windows)    � � � �   s e t   _ s c r e e n W i d t h   t o   1 2 8 0   - -   c h a n g e   t h i s   t o   y o u r   s c r e e n   w i d t h   ( o r   m a k e   i t   b i g g e r   t h a n   y o u r   s c r r e n   w i d t h   i f   y o u   w a n t   b i g g e r   w i n d o w s ) �  � � � l     ��������  ��  ��   �  � � � l  � ����� � O   � � � � k    � � �  � � � r     % � � � 2     #��
�� 
prcs � o      ���� 0 _everyprocess _everyProcess �  � � � Y   & R ��� � ��� � k   4 M � �  � � � r   4 < � � � n   4 : � � � 1   8 :��
�� 
pisf � n   4 8 � � � 4   5 8�� �
�� 
cobj � o   6 7���� 0 n   � o   4 5���� 0 _everyprocess _everyProcess � o      ���� 0 
_frontmost 
_frontMost �  ��� � Z  = M � ����� � =  = @ � � � o   = >���� 0 
_frontmost 
_frontMost � m   > ?��
�� boovtrue � r   C I � � � 4   C G�� �
�� 
prcs � o   E F���� 0 n   � o      ���� 0 _frontmostapp _frontMostApp��  ��  ��  �� 0 n   � m   ) *����  � I  * /�� ���
�� .corecnte****       **** � o   * +���� 0 _everyprocess _everyProcess��  ��   �  � � � l  S S��������  ��  ��   �  � � � r   S Y � � � n   S W � � � 4   T W�� �
�� 
cwin � m   U V����  � o   S T���� 0 _frontmostapp _frontMostApp � o      ���� 0 
_windowone 
_windowOne �  � � � r   Z a � � � n   Z ] � � � 1   [ ]��
�� 
posn � o   Z [���� 0 
_windowone 
_windowOne � o      ���� 0 	_position   �  � � � r   b k � � � n   b g � � � 1   c g��
�� 
ptsz � o   b c���� 0 
_windowone 
_windowOne � o      ���� 	0 _size   �  � � � l  l l��������  ��  ��   �  � � � r   l v � � � n   l r � � � 4   o r�� �
�� 
cobj � m   p q��  � o   l o�~�~ 0 	_position   � o      �}�} 0 x1   �  � � � r   w � � � � n   w } � � � 4   z }�| �
�| 
cobj � m   { |�{�{  � o   w z�z�z 0 	_position   � o      �y�y 0 y1   �  � � � r   � � � � � n   � � � � � 4   � ��x �
�x 
cobj � m   � ��w�w  � o   � ��v�v 	0 _size   � o      �u�u 
0 _width   �  � � � r   � � � � � n   � � � � � 4   � ��t �
�t 
cobj � m   � ��s�s  � o   � ��r�r 	0 _size   � o      �q�q 0 _height   �  � � � r   � � � � � l  � � ��p�o � [   � � � � � o   � ��n�n 0 x1   � o   � ��m�m 
0 _width  �p  �o   � o      �l�l 0 x2   �  � � � r   � � � � � l  � � ��k�j � [   � � � � � o   � ��i�i 0 y1   � o   � ��h�h 0 _height  �k  �j   � o      �g�g 0 y2   �  � � � l  � ��f�e�d�f  �e  �d   �  � � � r   � � � � � l  � � ��c�b � ^   � �   o   � ��a�a 0 x1   o   � ��`�` 0 	_gridsize 	_gridSize�c  �b   � o      �_�_ 0 	_x1number 	_x1Number �  r   � � c   � � o   � ��^�^ 0 	_x1number 	_x1Number m   � ��]
�] 
TEXT o      �\�\ "0 _x1numberstring _x1NumberString 	 r   � �

 n   � � 4  � ��[
�[ 
cobj m   � ��Z�Z�� o   � ��Y�Y "0 _x1numberstring _x1NumberString o      �X�X 0 _x1remainder _x1Remainder	  r   � � l  � ��W�V ^   � � o   � ��U�U 0 x2   o   � ��T�T 0 	_gridsize 	_gridSize�W  �V   o      �S�S 0 	_x2number 	_x2Number  r   � � c   � � o   � ��R�R 0 	_x2number 	_x2Number m   � ��Q
�Q 
TEXT o      �P�P "0 _x2numberstring _x2NumberString  r   � � n   � � !  4  � ��O"
�O 
cobj" m   � ��N�N��! o   � ��M�M "0 _x2numberstring _x2NumberString o      �L�L 0 _x2remainder _x2Remainder #$# l  � ��K�J�I�K  �J  �I  $ %&% r   �'(' ]   � �)*) l  � �+�H�G+ I  � ��F,�E
�F .sysorondlong        doub, ^   � �-.- o   � ��D�D 0 x1  . o   � ��C�C 0 	_gridsize 	_gridSize�E  �H  �G  * o   � ��B�B 0 	_gridsize 	_gridSize( o      �A�A 0 	_leftgrid 	_leftGrid& /0/ r  121 ]  343 l 5�@�?5 I �>6�=
�> .sysorondlong        doub6 ^  787 o  �<�< 0 x2  8 o  �;�; 0 	_gridsize 	_gridSize�=  �@  �?  4 o  �:�: 0 	_gridsize 	_gridSize2 o      �9�9 0 
_rightgrid 
_rightGrid0 9:9 l �8�7�6�8  �7  �6  : ;<; l �5=>�5  = 8 2 Stops the window increasing past the screen width   > �?? d   S t o p s   t h e   w i n d o w   i n c r e a s i n g   p a s t   t h e   s c r e e n   w i d t h< @A@ Z  \BC�4�3B G  3DED G  'FGF >  HIH o  �2�2 0 _x1remainder _x1RemainderI m  JJ �KK  0G >  #LML o  �1�1 0 _x2remainder _x2RemainderM m  "NN �OO  0E @  */PQP o  *-�0�0 
0 _width  Q o  -.�/�/ 0 _screenwidth _screenWidthC k  6XRR STS r  6BUVU J  6>WW XYX o  69�.�. 0 	_leftgrid 	_leftGridY Z�-Z o  9<�,�, 0 y1  �-  V n      [\[ 1  ?A�+
�+ 
posn\ o  >?�*�* 0 
_windowone 
_windowOneT ]^] r  CU_`_ J  COaa bcb l CJd�)�(d \  CJefe o  CF�'�' 0 
_rightgrid 
_rightGridf o  FI�&�& 0 	_leftgrid 	_leftGrid�)  �(  c g�%g o  JM�$�$ 0 _height  �%  ` n      hih 1  PT�#
�# 
ptszi o  OP�"�" 0 
_windowone 
_windowOne^ j�!j L  VX� �   �!  �4  �3  A klk l ]]����  �  �  l mnm Z  ]�op��o F  ]rqrq =  ]dsts o  ]`�� 0 _x1remainder _x1Remaindert m  `cuu �vv  0r =  gnwxw o  gj�� 0 _x2remainder _x2Remainderx m  jmyy �zz  0p k  u�{{ |}| r  u�~~ J  u��� ��� l u~���� [  u~��� \  u|��� o  ux�� 0 
_rightgrid 
_rightGrid� o  x{�� 0 	_leftgrid 	_leftGrid� o  |}�� 0 	_gridsize 	_gridSize�  �  � ��� o  ~��� 0 _height  �   n      ��� 1  ���
� 
ptsz� o  ���� 0 
_windowone 
_windowOne} ��� L  ����  �  �  �  n ��� l ������  �  �  � ��� l ���
�	��
  �	  �  � ��� l ������  �  �  �   � m    ���                                                                                  sevs  alis    �  Danger Mouse               Ʉ�ZH+   -�mSystem Events.app                                               .����        ����  	                CoreServices    Ʌ�      � PB     -�m -�` -�_  =Danger Mouse:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��   � ��� l     ��� �  �  �   �       ��������  � �������� 0 displaysize displaySize�� 0 isonedisplay isOneDisplay
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
�� .corecnte****       ****�� � *�-j k fY eU� �����������
�� .aevtoappnull  �   � ****� k    ���  f��  u��  �����  ��  ��  � ���� 0 n  � '�������������������������������������������������������������������JN��uy�� 0 displaysize displaySize
�� 
cobj�� 
�� .sysorondlong        doub�� 0 	_gridsize 	_gridSize�� 0 _screenwidth _screenWidth
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
�� 
posn�� 0 	_position  
�� 
ptsz�� 	0 _size  �� 0 x1  �� 0 y1  �� 
0 _width  �� 0 _height  �� 0 x2  �� 0 y2  �� 0 	_x1number 	_x1Number
�� 
TEXT�� "0 _x1numberstring _x1NumberString�� 0 _x1remainder _x1Remainder�� 0 	_x2number 	_x2Number�� "0 _x2numberstring _x2NumberString�� 0 _x2remainder _x2Remainder�� 0 	_leftgrid 	_leftGrid�� 0 
_rightgrid 
_rightGrid
�� 
bool���)j+  �k/�!j E�O)j+  �k/E�O�t*�-E�O +k�j 	kh  ��/�,E�O�e  *�/E�Y h[OY��O��k/E�O��,E` O�a ,E` O_ �k/E` O_ �l/E` O_ �k/E` O_ �l/E` O_ _ E` O_ _ E` O_ �!E` O_ a &E` O_ �i/E` O_ �!E` O_ a &E` O_ �i/E` O_ �!j � E`  O_ �!j � E` !O_ a "
 _ a #a $&
 _ �a $& '_  _ lv��,FO_ !_  _ lv�a ,FOhY hO_ a % 	 _ a & a $& _ !_  �_ lv�a ,FOhY hOPUascr  ��ޭ