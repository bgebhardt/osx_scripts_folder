FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     ��������  ��  ��     	 
 	 l    	 ����  n     	    4    �� 
�� 
cobj  m    ����   n        I    �������� 0 displaysize displaySize��  ��     f     ��  ��   
     l     ��������  ��  ��        l  
  ����  r   
     I  
 �� ��
�� .sysorondlong        doub  l  
  ����  ^   
     l  
  ����  n   
     4    �� 
�� 
cobj  m    ����   n  
    !   I    �������� 0 displaysize displaySize��  ��   !  f   
 ��  ��    m    ���� ��  ��  ��    o      ���� 0 	_gridsize 	_gridSize��  ��     " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 4 . function returns width of the primary display    ' � ( ( \   f u n c t i o n   r e t u r n s   w i d t h   o f   t h e   p r i m a r y   d i s p l a y %  ) * ) i      + , + I      �������� 0 displaysize displaySize��  ��   , k     7 - -  . / . l     �� 0 1��   0 / ) this only works with one display for now    1 � 2 2 R   t h i s   o n l y   w o r k s   w i t h   o n e   d i s p l a y   f o r   n o w /  3�� 3 Z     7 4 5�� 6 4 =     7 8 7 n     9 : 9 I    �������� 0 isonedisplay isOneDisplay��  ��   :  f      8 m    ��
�� boovtrue 5 k   
 , ; ;  < = < O   
 & > ? > k    % @ @  A B A r     C D C n     E F E 1    ��
�� 
pbnd F n     G H G m    ��
�� 
cwin H 1    ��
�� 
desk D o      ���� 0 screen_resolution   B  I J I r     K L K n     M N M 4    �� O
�� 
cobj O m    ����  N o    ���� 0 screen_resolution   L o      ���� 0 screen_width   J  P�� P r    % Q R Q n    # S T S 4     #�� U
�� 
cobj U m   ! "����  T o     ���� 0 screen_resolution   R o      ���� 0 screen_height  ��   ? m   
  V V�                                                                                  MACS  alis    t  Danger Mouse               Ʉ�ZH+   -�m
Finder.app                                                      .���(JG        ����  	                CoreServices    Ʌ�      �(��     -�m -�` -�_  6Danger Mouse:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��   =  W�� W L   ' , X X J   ' + Y Y  Z [ Z o   ' (���� 0 screen_width   [  \�� \ o   ( )���� 0 screen_height  ��  ��  ��   6 k   / 7 ] ]  ^ _ ^ I  / 4�� `��
�� .sysodlogaskr        TEXT ` m   / 0 a a � b b � S c r i p t   d o e s n ' t   w o r k   w i t h   m u l t i p l e   d i s p l a y s   r i g h t   n o w .   [ f u n c t i o n :   d i s p l a y W i d t h ( ) ]��   _  c�� c L   5 7 d d m   5 6����  ��  ��   *  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i R L alternate approach that might work with mult displays.  Need to try it out.    j � k k �   a l t e r n a t e   a p p r o a c h   t h a t   m i g h t   w o r k   w i t h   m u l t   d i s p l a y s .     N e e d   t o   t r y   i t   o u t . h  l m l i     n o n I      ��������  0 displaysizealt displaySizeAlt��  ��   o k     + p p  q r q r      s t s m      u u � v v | / u s r / s b i n / s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   g r e p   R e s o l u t i o n t o      ���� 0 command   r  w x w r     y z y n     { | { 2  	 ��
�� 
cwor | l   	 }���� } I   	�� ~��
�� .sysoexecTEXT���     TEXT ~ o    ���� 0 command  ��  ��  ��   z o      ���� 
0 output   x  ��  r    + � � � n     � � � J     � �  � � � 4    �� �
�� 
cobj � m    ����  �  ��� � 4    �� �
�� 
cobj � m    ���� ��   � o    ���� 
0 output   � J       � �  � � � o      ���� 0 dspwidth   �  ��� � o      ���� 0 	dspheight  ��  ��   m  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � %  returns if one display or not.    � � � � >   r e t u r n s   i f   o n e   d i s p l a y   o r   n o t . �  ��� � i     � � � I      �������� 0 isonedisplay isOneDisplay��  ��   � O      � � � k     � �  � � � l   ��������  ��  ��   �  ��� � Z     � ��� � � ?     � � � l    ����� � I   �� ���
�� .corecnte****       **** � 2    ��
�� 
dskp��  ��  ��   � m    ����  � L     � � m    ��
�� boovfals��   � L     � � m    ��
�� boovtrue��   � m      � ��                                                                                  sevs  alis    �  Danger Mouse               Ʉ�ZH+   -�mSystem Events.app                                               .����        ����  	                CoreServices    Ʌ�      � PB     -�m -�` -�_  =Danger Mouse:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��       
�� � � � � �����������   � ������������������ 0 displaysize displaySize��  0 displaysizealt displaySizeAlt�� 0 isonedisplay isOneDisplay
�� .aevtoappnull  �   � ****�� 0 	_gridsize 	_gridSize��  ��  ��   � �� ,��� � ��~�� 0 displaysize displaySize��  �   � �}�|�{�} 0 screen_resolution  �| 0 screen_width  �{ 0 screen_height   � 	�z V�y�x�w�v�u a�t�z 0 isonedisplay isOneDisplay
�y 
desk
�x 
cwin
�w 
pbnd
�v 
cobj�u 
�t .sysodlogaskr        TEXT�~ 8)j+  e  '� *�,�,�,E�O��m/E�O���/E�UO��lvY 
�j Oj � �s o�r�q � ��p�s  0 displaysizealt displaySizeAlt�r  �q   � �o�n�m�l�o 0 command  �n 
0 output  �m 0 dspwidth  �l 0 	dspheight   �  u�k�j�i�h
�k .sysoexecTEXT���     TEXT
�j 
cwor
�i 
cobj�h �p ,�E�O�j �-E�O�[�l/\[��/\ZlvE[�k/E�Z[�l/E�Z � �g ��f�e � ��d�g 0 isonedisplay isOneDisplay�f  �e   �   �  ��c�b
�c 
dskp
�b .corecnte****       ****�d � *�-j k fY eU � �a ��`�_ � ��^
�a .aevtoappnull  �   � **** � k      � �  	 � �  �]�]  �`  �_   �   � �\�[�Z�Y�X�\ 0 displaysize displaySize
�[ 
cobj�Z 
�Y .sysorondlong        doub�X 0 	_gridsize 	_gridSize�^ )j+  �k/EO)j+  �k/�!j E��� x��  ��  ��   ascr  ��ޭ