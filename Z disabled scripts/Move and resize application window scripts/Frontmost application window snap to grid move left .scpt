FasdUAS 1.101.10   ��   ��    k             l        r      	 
 	 m     ���� @ 
 o      ���� 0 	_gridsize 	_gridSize  3 - Change this number for a different grid size         l       r        m    ����   o      ���� 0 _screenwidth _screenWidth  . ( Change this number to your screen width         l     ������  ��        l     �� ��    O I Get the front-most application in System Events (Is there a better way?)      ��  l  � ��  O   �    k   �       r        2    ��
�� 
prcs  o      ���� 0 _everyprocess _everyProcess       Y    > !�� " #�� ! k     9 $ $  % & % r     ( ' ( ' n     & ) * ) 1   $ &��
�� 
pisf * n     $ + , + 4   ! $�� -
�� 
cobj - o   " #���� 0 n   , o     !���� 0 _everyprocess _everyProcess ( o      ���� 0 
_frontmost 
_frontMost &  .�� . Z  ) 9 / 0���� / =  ) , 1 2 1 o   ) *���� 0 
_frontmost 
_frontMost 2 m   * +��
�� boovtrue 0 r   / 5 3 4 3 4   / 3�� 5
�� 
prcs 5 o   1 2���� 0 n   4 o      ���� 0 _frontmostapp _frontMostApp��  ��  ��  �� 0 n   " m    ����  # I   �� 6��
�� .corecnte****       **** 6 o    ���� 0 _everyprocess _everyProcess��  ��      7 8 7 l  ? ?������  ��   8  9 : 9 r   ? E ; < ; n   ? C = > = 4   @ C�� ?
�� 
cwin ? m   A B����  > o   ? @���� 0 _frontmostapp _frontMostApp < o      ���� 0 
_windowone 
_windowOne :  @ A @ r   F K B C B n   F I D E D 1   G I��
�� 
posn E o   F G���� 0 
_windowone 
_windowOne C o      ���� 0 	_position   A  F G F r   L U H I H n   L Q J K J 1   M Q��
�� 
ptsz K o   L M���� 0 
_windowone 
_windowOne I o      ���� 	0 _size   G  L M L l  V V������  ��   M  N O N l  V V�� P��   P H B Convert System Events window size info into coordinates x2 and y2    O  Q R Q r   V ^ S T S n   V Z U V U 4   W Z�� W
�� 
cobj W m   X Y����  V o   V W���� 0 	_position   T o      ���� 0 x1   R  X Y X r   _ g Z [ Z n   _ c \ ] \ 4   ` c�� ^
�� 
cobj ^ m   a b����  ] o   _ `���� 0 	_position   [ o      ���� 0 y1   Y  _ ` _ r   h r a b a n   h n c d c 4   k n�� e
�� 
cobj e m   l m����  d o   h k���� 	0 _size   b o      ���� 
0 _width   `  f g f r   s } h i h n   s y j k j 4   v y�� l
�� 
cobj l m   w x����  k o   s v���� 	0 _size   i o      ���� 0 _height   g  m n m r   ~ � o p o l  ~ � q�� q [   ~ � r s r o   ~ ����� 0 x1   s o   � ����� 
0 _width  ��   p o      ���� 0 x2   n  t u t r   � � v w v l  � � x�� x [   � � y z y o   � ����� 0 y1   z o   � ����� 0 _height  ��   w o      ���� 0 y2   u  { | { l  � �������  ��   |  } ~ } l  � ��� ��    Z T To check if the window is on or off the grid, I need _x1Remainder and _x2Remainder.    ~  � � � l  � ��� ���   � z t When the coordinates are divided by the grid size, the last decimal point is never 0 if the window is off the grid.    �  � � � l  � ��� ���   � @ : _x?Remainder gets the last decimal place of the division.    �  � � � l  � ��� ���   � � � For example, (coordinate 250/grid size 64)=3.90625, so the last decimal place=5 therefore it's not on the grid. (coordinate 320/grid size 64)=5.0, so the last decimal place=0 therefore it's on the grid.    �  � � � r   � � � � � l  � � ��� � ^   � � � � � o   � ����� 0 x1   � o   � ����� 0 	_gridsize 	_gridSize��   � o      ���� 0 	_x1number 	_x1Number �  � � � r   � � � � � c   � � � � � o   � ����� 0 	_x1number 	_x1Number � m   � ���
�� 
TEXT � o      ���� "0 _x1numberstring _x1NumberString �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� "0 _x1numberstring _x1NumberString � o      ���� 0 _x1remainder _x1Remainder �  � � � r   � � � � � l  � � ��� � ^   � � � � � o   � ����� 0 x2   � o   � ����� 0 	_gridsize 	_gridSize��   � o      ���� 0 	_x2number 	_x2Number �  � � � r   � � � � � c   � � � � � o   � ����� 0 	_x2number 	_x2Number � m   � ���
�� 
TEXT � o      ���� "0 _x2numberstring _x2NumberString �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� "0 _x2numberstring _x2NumberString � o      ���� 0 _x2remainder _x2Remainder �  � � � l  � �������  ��   �  � � � l  � ��� ���   � a [ _leftGrid and _rightGrid gets the closest grid coordinates to the original window position    �  � � � l  � ��� ���   � D > For example, starting with x coordinate 316:  316/64 = 4.9375    �  � � � l  � ��� ���   � 1 + 4.9375 rounded to the nearest integer is 5    �  � � � l  � ��� ���   � ) # 5*64 = 320 = the new x coordinate.    �  � � � r   � � � � � ]   � � � � � l  � � ��� � I  � ��� ���
�� .sysorondlong        doub � o   � ����� 0 	_x1number 	_x1Number��  ��   � o   � ����� 0 	_gridsize 	_gridSize � o      ���� 0 	_leftgrid 	_leftGrid �  � � � r   � � � � � ]   � � � � � l  � � ��� � I  � ��� ���
�� .sysorondlong        doub � o   � ����� 0 	_x2number 	_x2Number��  ��   � o   � ����� 0 	_gridsize 	_gridSize � o      ���� 0 
_rightgrid 
_rightGrid �  � � � l  � �������  ��   �  � � � r   � � � � J   �  � �  � � � l  � � ��� � \   � � � � � o   � ����� 0 
_rightgrid 
_rightGrid � o   � ����� 0 	_leftgrid 	_leftGrid��   �  ��� � o   � ����� 0 _height  ��   � n       � � � 1  ��
�� 
ptsz � o   ���� 0 
_windowone 
_windowOne �  � � � l ������  ��   �  � � � l �� ���   � � � The next two conditionals stop the script trying to place the window edge exactly on the edge of the screen. (The system won't allow this anyway, but I don't like to ask.)    �  � � � l � ��   � ( " And snaps the window to the grid.    �  � � � l �~�}�~  �}   �  � � � Z  & � ��|�{ � B   � � � o  
�z�z 0 x2   � ^  
 � � � o  
�y�y 0 	_gridsize 	_gridSize � m  �x�x  � k  " � �  � � � r   � � � J   � �  � � � l  ��w � [   � � � o  �v�v 0 	_leftgrid 	_leftGrid � o  �u�u 0 	_gridsize 	_gridSize�w   �  ��t � o  �s�s 0 y1  �t   � n       � � � 1  �r
�r 
posn � o  �q�q 0 
_windowone 
_windowOne �  ��p � L   "�o�o  �p  �|  �{   �  �  � l ''�n�m�n  �m     Z  'H�l�k @  '0 o  '*�j�j 0 x1   l */�i \  */	 o  *+�h�h 0 _screenwidth _screenWidth	 l +.
�g
 ^  +. o  +,�f�f 0 	_gridsize 	_gridSize m  ,-�e�e �g  �i   k  3D  r  3A J  3=  l 38�d \  38 o  36�c�c 0 	_leftgrid 	_leftGrid o  67�b�b 0 	_gridsize 	_gridSize�d   �a o  8;�`�` 0 y1  �a   n       1  >@�_
�_ 
posn o  =>�^�^ 0 
_windowone 
_windowOne �] L  BD�\�\  �]  �l  �k    l II�[�Z�[  �Z    l II�Y �Y      Snap to grid    !"! Z  I�#$�X�W# G  Ij%&% G  I\'(' B  IN)*) o  IL�V�V 0 x2  * o  LM�U�U 0 	_gridsize 	_gridSize( >  QX+,+ o  QT�T�T 0 _x1remainder _x1Remainder, m  TW--  0   & >  _f./. o  _b�S�S 0 _x2remainder _x2Remainder/ m  be00  0   $ k  m|11 232 r  my454 J  mu66 787 o  mp�R�R 0 	_leftgrid 	_leftGrid8 9�Q9 o  ps�P�P 0 y1  �Q  5 n      :;: 1  vx�O
�O 
posn; o  uv�N�N 0 
_windowone 
_windowOne3 <�M< L  z|�L�L  �M  �X  �W  " =>= l ���K�J�K  �J  > ?@? l ���IA�I  A F @ If the window is on the grid it is moved one grid position left   @ BCB Z  ��DE�H�GD F  ��FGF =  ��HIH o  ���F�F 0 _x1remainder _x1RemainderI m  ��JJ  0   G =  ��KLK o  ���E�E 0 _x2remainder _x2RemainderL m  ��MM  0   E k  ��NN OPO r  ��QRQ J  ��SS TUT l ��V�DV \  ��WXW o  ���C�C 0 x1  X o  ���B�B 0 	_gridsize 	_gridSize�D  U Y�AY o  ���@�@ 0 y1  �A  R n      Z[Z 1  ���?
�? 
posn[ o  ���>�> 0 
_windowone 
_windowOneP \�=\ L  ���<�<  �=  �H  �G  C ]^] l ���;�:�;  �:  ^ _�9_ l ���8�7�8  �7  �9    m    	``�null     � ��  �System Events.appI��h���k   �~ �6 ������<��0 ��� �嘼�sevs   alis    �  Macintosh HD               �k�H+    �System Events.app                                                hT���        ����  	                CoreServices    �j��      ��e      �  �  �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��       �6ab�6  a �5
�5 .aevtoappnull  �   � ****b �4c�3�2de�1
�4 .aevtoappnull  �   � ****c k    �ff  gg  hh  �0�0  �3  �2  d �/�/ 0 n  e '�.�-�,�+`�*�)�(�'�&�%�$�#�"�!� ������������������-�0JM�. @�- 0 	_gridsize 	_gridSize�, �+ 0 _screenwidth _screenWidth
�* 
prcs�) 0 _everyprocess _everyProcess
�( .corecnte****       ****
�' 
cobj
�& 
pisf�% 0 
_frontmost 
_frontMost�$ 0 _frontmostapp _frontMostApp
�# 
cwin�" 0 
_windowone 
_windowOne
�! 
posn�  0 	_position  
� 
ptsz� 	0 _size  � 0 x1  � 0 y1  � 
0 _width  � 0 _height  � 0 x2  � 0 y2  � 0 	_x1number 	_x1Number
� 
TEXT� "0 _x1numberstring _x1NumberString� 0 _x1remainder _x1Remainder� 0 	_x2number 	_x2Number� "0 _x2numberstring _x2NumberString� 0 _x2remainder _x2Remainder
� .sysorondlong        doub� 0 	_leftgrid 	_leftGrid� 0 
_rightgrid 
_rightGrid
� 
bool�1��E�O�E�O��*�-E�O +k�j kh  ��/�,E�O�e  *�/E�Y h[OY��O��k/E�O��,E�O�a ,E` O��k/E` O��l/E` O_ �k/E` O_ �l/E` O_ _ E` O_ _ E` O_ �!E` O_ a &E` O_ �i/E` O_ �!E` O_ a &E` O_ �i/E` O_ j � E`  O_ j � E` !O_ !_  _ lv�a ,FO_ �l! _  �_ lv��,FOhY hO_ ��l! _  �_ lv��,FOhY hO_ �
 _ a "a #&
 _ a $a #& _  _ lv��,FOhY hO_ a % 	 _ a & a #& _ �_ lv��,FOhY hOPU ascr  ��ޭ