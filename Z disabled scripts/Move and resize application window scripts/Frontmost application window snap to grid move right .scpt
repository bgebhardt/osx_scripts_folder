FasdUAS 1.101.10   ��   ��    k             l     ��  r       	  m     ���� @ 	 o      ���� 0 	_gridsize 	_gridSize��     
  
 l       r        m    ����   o      ���� 0 _screenwidth _screenWidth  . ( change this number to your screen width         l     ������  ��     ��  l  � ��  O   �    k   �       r        2    ��
�� 
prcs  o      ���� 0 _everyprocess _everyProcess      Y    > ��  ��  k     9      ! " ! r     ( # $ # n     & % & % 1   $ &��
�� 
pisf & n     $ ' ( ' 4   ! $�� )
�� 
cobj ) o   " #���� 0 n   ( o     !���� 0 _everyprocess _everyProcess $ o      ���� 0 
_frontmost 
_frontMost "  *�� * Z  ) 9 + ,���� + =  ) , - . - o   ) *���� 0 
_frontmost 
_frontMost . m   * +��
�� boovtrue , r   / 5 / 0 / 4   / 3�� 1
�� 
prcs 1 o   1 2���� 0 n   0 o      ���� 0 _frontmostapp _frontMostApp��  ��  ��  �� 0 n    m    ����   I   �� 2��
�� .corecnte****       **** 2 o    ���� 0 _everyprocess _everyProcess��  ��     3 4 3 l  ? ?������  ��   4  5 6 5 r   ? E 7 8 7 n   ? C 9 : 9 4   @ C�� ;
�� 
cwin ; m   A B����  : o   ? @���� 0 _frontmostapp _frontMostApp 8 o      ���� 0 
_windowone 
_windowOne 6  < = < r   F K > ? > n   F I @ A @ 1   G I��
�� 
posn A o   F G���� 0 
_windowone 
_windowOne ? o      ���� 0 	_position   =  B C B r   L U D E D n   L Q F G F 1   M Q��
�� 
ptsz G o   L M���� 0 
_windowone 
_windowOne E o      ���� 	0 _size   C  H I H l  V V������  ��   I  J K J r   V ^ L M L n   V Z N O N 4   W Z�� P
�� 
cobj P m   X Y����  O o   V W���� 0 	_position   M o      ���� 0 x1   K  Q R Q r   _ g S T S n   _ c U V U 4   ` c�� W
�� 
cobj W m   a b����  V o   _ `���� 0 	_position   T o      ���� 0 y1   R  X Y X r   h r Z [ Z n   h n \ ] \ 4   k n�� ^
�� 
cobj ^ m   l m����  ] o   h k���� 	0 _size   [ o      ���� 
0 _width   Y  _ ` _ r   s } a b a n   s y c d c 4   v y�� e
�� 
cobj e m   w x����  d o   s v���� 	0 _size   b o      ���� 0 _height   `  f g f r   ~ � h i h l  ~ � j�� j [   ~ � k l k o   ~ ����� 0 x1   l o   � ����� 
0 _width  ��   i o      ���� 0 x2   g  m n m r   � � o p o l  � � q�� q [   � � r s r o   � ����� 0 y1   s o   � ����� 0 _height  ��   p o      ���� 0 y2   n  t u t l  � �������  ��   u  v w v r   � � x y x l  � � z�� z ^   � � { | { o   � ����� 0 x1   | o   � ����� 0 	_gridsize 	_gridSize��   y o      ���� 0 	_x1number 	_x1Number w  } ~ } r   � �  �  c   � � � � � o   � ����� 0 	_x1number 	_x1Number � m   � ���
�� 
TEXT � o      ���� "0 _x1numberstring _x1NumberString ~  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� "0 _x1numberstring _x1NumberString � o      ���� 0 _x1remainder _x1Remainder �  � � � r   � � � � � l  � � ��� � ^   � � � � � o   � ����� 0 x2   � o   � ����� 0 	_gridsize 	_gridSize��   � o      ���� 0 	_x2number 	_x2Number �  � � � r   � � � � � c   � � � � � o   � ����� 0 	_x2number 	_x2Number � m   � ���
�� 
TEXT � o      ���� "0 _x2numberstring _x2NumberString �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� "0 _x2numberstring _x2NumberString � o      ���� 0 _x2remainder _x2Remainder �  � � � l  � �������  ��   �  � � � r   � � � � � ]   � � � � � l  � � ��� � I  � ��� ���
�� .sysorondlong        doub � o   � ����� 0 	_x1number 	_x1Number��  ��   � o   � ����� 0 	_gridsize 	_gridSize � o      ���� 0 	_leftgrid 	_leftGrid �  � � � r   � � � � � ]   � � � � � l  � � ��� � I  � ��� ���
�� .sysorondlong        doub � o   � ����� 0 	_x2number 	_x2Number��  ��   � o   � ����� 0 	_gridsize 	_gridSize � o      ���� 0 
_rightgrid 
_rightGrid �  � � � l  � �������  ��   �  � � � r   � � � � J   �  � �  � � � l  � � ��� � \   � � � � � o   � ����� 0 
_rightgrid 
_rightGrid � o   � ����� 0 	_leftgrid 	_leftGrid��   �  ��� � o   � ����� 0 _height  ��   � n       � � � 1  ��
�� 
ptsz � o   ���� 0 
_windowone 
_windowOne �  � � � l ������  ��   �  � � � l �� ���   � s m The next two conditionals stop the script trying to place the window edge exactly on the edge of the screen.    �  � � � l �� ���   � � � Although the system doesn't allow this to happen, I think it's a good idea to not ask it to anyway! (+ it keeps the window on the grid)    �  � � � Z  ( � ����� � @   � � � o  
���� 0 x1   � l 
 ��� � \  
 � � � o  
���� 0 _screenwidth _screenWidth � l  ��� � ^   � � � o  ���� 0 	_gridsize 	_gridSize � m  ���� ��  ��   � k  $ � �  � � � r  ! � � � J   � �  � � � l  �� � \   � � � o  �~�~ 0 	_leftgrid 	_leftGrid � o  �}�} 0 	_gridsize 	_gridSize�   �  ��| � o  �{�{ 0 y1  �|   � n       � � � 1   �z
�z 
posn � o  �y�y 0 
_windowone 
_windowOne �  ��x � L  "$�w�w  �x  ��  ��   �  � � � l ))�v�u�v  �u   �  � � � Z  )H � ��t�s � B  )0 � � � o  ),�r�r 0 x2   � ^  ,/ � � � o  ,-�q�q 0 	_gridsize 	_gridSize � m  -.�p�p  � k  3D � �  � � � r  3A � � � J  3= � �  � � � l 38 ��o � [  38 � � � o  36�n�n 0 	_leftgrid 	_leftGrid � o  67�m�m 0 	_gridsize 	_gridSize�o   �  ��l � o  8;�k�k 0 y1  �l   � n       � � � 1  >@�j
�j 
posn � o  =>�i�i 0 
_windowone 
_windowOne �  ��h � L  BD�g�g  �h  �t  �s   �  � � � l II�f�e�f  �e   �  � � � l II�d ��d   �   Snap to grid    �    Z  I��c�b G  Il G  I^ @  IP	 o  IL�a�a 0 x1  	 l LO
�`
 \  LO o  LM�_�_ 0 _screenwidth _screenWidth o  MN�^�^ 0 	_gridsize 	_gridSize�`   >  SZ o  SV�]�] 0 _x1remainder _x1Remainder m  VY  0    >  ah o  ad�\�\ 0 _x2remainder _x2Remainder m  dg  0    k  o~  r  o{ J  ow  o  or�[�[ 0 	_leftgrid 	_leftGrid �Z o  ru�Y�Y 0 y1  �Z   n       1  xz�X
�X 
posn o  wx�W�W 0 
_windowone 
_windowOne �V L  |~�U�U  �V  �c  �b     l ���T�S�T  �S    !"! l ���R#�R  # @ : If the window is on the grid, move it right one grid size   " $%$ Z  ��&'�Q�P& F  ��()( =  ��*+* o  ���O�O 0 _x1remainder _x1Remainder+ m  ��,,  0   ) =  ��-.- o  ���N�N 0 _x2remainder _x2Remainder. m  ��//  0   ' k  ��00 121 r  ��343 J  ��55 676 l ��8�M8 [  ��9:9 o  ���L�L 0 	_leftgrid 	_leftGrid: o  ���K�K 0 	_gridsize 	_gridSize�M  7 ;�J; o  ���I�I 0 y1  �J  4 n      <=< 1  ���H
�H 
posn= o  ���G�G 0 
_windowone 
_windowOne2 >�F> L  ���E�E  �F  �Q  �P  % ?�D? l ���C�B�C  �B  �D    m    	@@�null     � ��  �System Events.appI��h���k   �~ �6 ������<��0 ��� �嘼�sevs   alis    �  Macintosh HD               �k�H+    �System Events.app                                                hT���        ����  	                CoreServices    �j��      ��e      �  �  �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��       �AAB�A  A �@
�@ .aevtoappnull  �   � ****B �?C�>�=DE�<
�? .aevtoappnull  �   � ****C k    �FF  GG  
HH  �;�;  �>  �=  D �:�: 0 n  E '�9�8�7�6@�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��������,/�9 @�8 0 	_gridsize 	_gridSize�7 �6 0 _screenwidth _screenWidth
�5 
prcs�4 0 _everyprocess _everyProcess
�3 .corecnte****       ****
�2 
cobj
�1 
pisf�0 0 
_frontmost 
_frontMost�/ 0 _frontmostapp _frontMostApp
�. 
cwin�- 0 
_windowone 
_windowOne
�, 
posn�+ 0 	_position  
�* 
ptsz�) 	0 _size  �( 0 x1  �' 0 y1  �& 
0 _width  �% 0 _height  �$ 0 x2  �# 0 y2  �" 0 	_x1number 	_x1Number
�! 
TEXT�  "0 _x1numberstring _x1NumberString� 0 _x1remainder _x1Remainder� 0 	_x2number 	_x2Number� "0 _x2numberstring _x2NumberString� 0 _x2remainder _x2Remainder
� .sysorondlong        doub� 0 	_leftgrid 	_leftGrid� 0 
_rightgrid 
_rightGrid
� 
bool�<��E�O�E�O��*�-E�O +k�j kh  ��/�,E�O�e  *�/E�Y h[OY��O��k/E�O��,E�O�a ,E` O��k/E` O��l/E` O_ �k/E` O_ �l/E` O_ _ E` O_ _ E` O_ �!E` O_ a &E` O_ �i/E` O_ �!E` O_ a &E` O_ �i/E` O_ j � E`  O_ j � E` !O_ !_  _ lv�a ,FO_ ��l! _  �_ lv��,FOhY hO_ �l! _  �_ lv��,FOhY hO_ ��
 _ a "a #&
 _ a $a #& _  _ lv��,FOhY hO_ a % 	 _ a & a #& _  �_ lv��,FOhY hOPU ascr  ��ޭ