FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0 This doesn't work yet because lookups are hosed     � 	 	 `   T h i s   d o e s n ' t   w o r k   y e t   b e c a u s e   l o o k u p s   a r e   h o s e d   
  
 l     ��  ��    H B Get all ASINs, EANs, and ISBNs linked on front document in Safari     �   �   G e t   a l l   A S I N s ,   E A N s ,   a n d   I S B N s   l i n k e d   o n   f r o n t   d o c u m e n t   i n   S a f a r i      l     ��  ��    ~ x Since we're in Safari anyway, we have Javascript do the heavy lifting, since it understands DOM and Regular Expressions     �   �   S i n c e   w e ' r e   i n   S a f a r i   a n y w a y ,   w e   h a v e   J a v a s c r i p t   d o   t h e   h e a v y   l i f t i n g ,   s i n c e   i t   u n d e r s t a n d s   D O M   a n d   R e g u l a r   E x p r e s s i o n s      l         r         m        �  , 
 v a r   r e s u l t   =   n e w   A r r a y ( 0 ) ; 
 f o r   ( v a r   l i n k I n d e x   =   0 ;   l i n k I n d e x   <   d o c u m e n t . l i n k s . l e n g t h ;   l i n k I n d e x + + )   { 
 	 v a r   m e d i a C o d e s   =   d o c u m e n t . l i n k s [ l i n k I n d e x ] . h r e f . r e p l a c e ( ' - ' ,   ' ' ) . m a t c h ( / \ b ( [ 0 - 9 ] { 9 } [ 0 - 9 X ] | [ 0 - 9 ] { 1 3 } | B 0 0 0 [ A - Z 0 - 9 ] { 6 } ) \ b / i g ) ; 
 	 i f   ( m e d i a C o d e s   = =   n u l l ) 
 	 	 c o n t i n u e ; 
 	 
 	 i f   ( m e d i a C o d e s . t o S t r i n g ( ) . i n d e x O f ( ' , ' )   <   0 )   { 
 	 	 i f   ( r e s u l t . t o S t r i n g ( ) . i n d e x O f ( m e d i a C o d e s )   <   0 ) 
 	 	 	 r e s u l t . p u s h ( m e d i a C o d e s ) ; 
 	 }   e l s e   { 	 
 	 	 m e d i a C o d e s   =   m e d i a C o d e s . t o S t r i n g ( ) . s p l i t ( ' , ' ) ; 
 	 	 f o r   ( v a r   s t r i n g I n d e x   =   0 ;   s t r i n g I n d e x   <   m e d i a C o d e s . l e n g t h ;   s t r i n g I n d e x + + )   { 
 	 	 	 i f   ( r e s u l t . t o S t r i n g ( ) . i n d e x O f ( m e d i a C o d e s [ s t r i n g I n d e x ] )   <   0 ) 
 	 	 	 	 r e s u l t . p u s h ( m e d i a C o d e s [ s t r i n g I n d e x ] ) ; 
 	 	 } 
 	 } 
 } 
 	 r e s u l t . t o S t r i n g ( ) ; 
  o      ���� 40 findmediacodesjavascript findMediaCodesJavascript  R L> a comma-separated string of unique (but not necessarily valid) media codes     �   � >   a   c o m m a - s e p a r a t e d   s t r i n g   o f   u n i q u e   ( b u t   n o t   n e c e s s a r i l y   v a l i d )   m e d i a   c o d e s      l     ��������  ��  ��       !   l   	 "���� " r    	 # $ # m     % % � & &  , $ l      '���� ' 1    ��
�� 
txdl��  ��  ��  ��   !  ( ) ( l  
 " *���� * O   
 " + , + k    ! - -  . / . r     0 1 0 l    2���� 2 N     3 3 4    �� 4
�� 
docu 4 m    ���� ��  ��   1 o      ���� "0 browserdocument browserDocument /  5�� 5 r    ! 6 7 6 n    8 9 8 2   ��
�� 
citm 9 l    :���� : I   �� ; <
�� .sfridojsnull���    obj  ; o    ���� 40 findmediacodesjavascript findMediaCodesJavascript < �� =��
�� 
dcnm = o    ���� "0 browserdocument browserDocument��  ��  ��   7 o      ���� 0 alllinks allLinks��   , m   
  > >�                                                                                  sfri   alis    F  
Roast Beef                 ��H+   D3�
Safari.app                                                      F����%        ����  	                Applications    ��v�      ���     D3�  "Roast Beef:Applications:Safari.app   
 S a f a r i . a p p   
 R o a s t   B e e f  Applications/Safari.app   / ��  ��  ��   )  ? @ ? l     ��������  ��  ��   @  A B A l  # ) C���� C I   # )�� D���� 0 validate_and_add   D  E�� E o   $ %���� 0 alllinks allLinks��  ��  ��  ��   B  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J S M End logical flow. Begin handlers. Check out that hot hot tail-end recursion.    K � L L �   E n d   l o g i c a l   f l o w .   B e g i n   h a n d l e r s .   C h e c k   o u t   t h a t   h o t   h o t   t a i l - e n d   r e c u r s i o n . I  M N M l     ��������  ��  ��   N  O P O i      Q R Q I      �� S���� 0 validate_and_add   S  T�� T o      ���� 0 alllinks allLinks��  ��   R k     � U U  V W V Z     X Y���� X =     Z [ Z o     ���� 0 alllinks allLinks [ J    ����   Y L    	����  ��  ��   W  \ ] \ l   ��������  ��  ��   ]  ^ _ ^ r     ` a ` n    b c b 4   �� d
�� 
cobj d m    ����  c o    ���� 0 alllinks allLinks a o      ���� 0 	mediacode 	mediaCode _  e f e Z   * g h���� g A     i j i n     k l k 1    ��
�� 
leng l o    ���� 0 	mediacode 	mediaCode j m    ���� 
 h L    & m m I    %�� n���� 0 validate_and_add   n  o�� o n    ! p q p 1    !��
�� 
rest q o    ���� 0 alllinks allLinks��  ��  ��  ��   f  r s r O   + � t u t P   2 � v�� w v k   7 � x x  y z y l  7 7�� { |��   { { u creating a new medium with an asin, ean, or isbn will just load it from Amazon. Other properties are likely ignored.    | � } } �   c r e a t i n g   a   n e w   m e d i u m   w i t h   a n   a s i n ,   e a n ,   o r   i s b n   w i l l   j u s t   l o a d   i t   f r o m   A m a z o n .   O t h e r   p r o p e r t i e s   a r e   l i k e l y   i g n o r e d . z  ~�� ~ Z   7 �  � ���  =  7 = � � � n  7 ; � � � 4  8 ;�� �
�� 
cha  � m   9 :����  � o   7 8���� 0 	mediacode 	mediaCode � m   ; < � � � � �  b � I  @ E�� ���
�� .DLb2Looknull���     **** � o   @ A���� 0 	mediacode 	mediaCode��   �  � � � F   H [ � � � =  H M � � � n   H K � � � 1   I K��
�� 
leng � o   H I���� 0 	mediacode 	mediaCode � m   K L���� 
 � n  P Y � � � I   Q Y�� ����� 0 validate_isbn validate_ISBN �  � � � n  Q T � � � 2  R T��
�� 
cha  � o   Q R���� 0 	mediacode 	mediaCode �  ��� � m   T U����  ��  ��   �  f   P Q �  � � � I  ^ c�� ���
�� .DLb2Looknull���     **** � o   ^ _���� 0 	mediacode 	mediaCode��   �  � � � F   f y � � � =  f k � � � n   f i � � � 1   g i��
�� 
leng � o   f g���� 0 	mediacode 	mediaCode � m   i j����  � n  n w � � � I   o w�� ����� 0 validate_ean validate_EAN �  � � � n  o r � � � 2  p r��
�� 
cha  � o   o p���� 0 	mediacode 	mediaCode �  ��� � m   r s����  ��  ��   �  f   n o �  ��� � I  | ��� ���
�� .DLb2Looknull���     **** � o   | }���� 0 	mediacode 	mediaCode��  ��  ��  ��  ��   w ����
�� conscase��   u n   + / � � � 4  , /�� �
�� 
docu � m   - .����  � m   + , � �                                                                                  DLb2   alis    �  
Roast Beef                 ��H+   x��Delicious Library 2.app                                         |@��[��        ����  	                Development     ��v�      �\+=     x�� G"� F�c D��  ERoast Beef:Users:dragon:Temporary:Development:Delicious Library 2.app   0  D e l i c i o u s   L i b r a r y   2 . a p p   
 R o a s t   B e e f  :Users/dragon/Temporary/Development/Delicious Library 2.app  /    ��   s  ��� � I   � ��� ����� 0 validate_and_add   �  ��� � n   � � � � � 1   � ���
�� 
rest � o   � ����� 0 alllinks allLinks��  ��  ��   P  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 validate_ean validate_EAN �  � � � o      ���� 0 characterlist characterList �  ��� � o      ���� 	0 total  ��  ��   � k     L � �  � � � r      � � � c      � � � l     ����� � n     � � � 4   �� �
�� 
cobj � m    ��  � o     �~�~ 0 characterlist characterList��  ��   � m    �}
�} 
long � o      �|�| 0 currentdigit currentDigit �  � � � Z  	  � ��{�z � =   	  � � � `   	  � � � l  	  ��y�x � n   	  � � � 1   
 �w
�w 
leng � o   	 
�v�v 0 characterlist characterList�y  �x   � m    �u�u  � m    �t�t   � r     � � � ]     � � � o    �s�s 0 currentdigit currentDigit � m    �r�r  � o      �q�q 0 currentdigit currentDigit�{  �z   �  � � � Z   5 � ��p�o � ?    " � � � l     ��n�m � n      � � � 1     �l
�l 
leng � o    �k�k 0 characterlist characterList�n  �m   � m     !�j�j  � L   % 1 � � I   % 0�i ��h�i 0 validate_ean validate_EAN �  � � � n   & ) � � � 1   ' )�g
�g 
rest � o   & '�f�f 0 characterlist characterList �  ��e � [   ) , � � � o   ) *�d�d 0 currentdigit currentDigit � o   * +�c�c 	0 total  �e  �h  �p  �o   �  � � � Z  6 C � ��b�a � =   6 9 � � � o   6 7�`�` 0 currentdigit currentDigit � m   7 8�_�_   � r   < ? � � � m   < =�^�^ 
 � o      �]�] 0 currentdigit currentDigit�b  �a   �  ��\ � L   D L � � =   D K � � � o   D E�[�[ 0 currentdigit currentDigit � \   E J � � � m   E F�Z�Z 
 � `   F I � � � o   F G�Y�Y 	0 total   � m   G H�X�X 
�\   �  � � � l     �W�V�U�W  �V  �U   �  �T  i     I      �S�R�S 0 validate_isbn validate_ISBN  o      �Q�Q 0 characterlist characterList �P o      �O�O 	0 total  �P  �R   k     H 	 Z    !
�N�M
 ?      n      1    �L
�L 
leng o     �K�K 0 characterlist characterList m    �J�J  L     I    �I�H�I 0 validate_isbn validate_ISBN  n   	  1   
 �G
�G 
rest o   	 
�F�F 0 characterlist characterList �E [     ]     l   �D�C c     n    4   �B 
�B 
cobj  m    �A�A  o    �@�@ 0 characterlist characterList m    �?
�? 
long�D  �C   l   !�>�=! n    "#" 1    �<
�< 
leng# o    �;�; 0 characterlist characterList�>  �=   o    �:�: 	0 total  �E  �H  �N  �M  	 $%$ l  " "�9�8�7�9  �8  �7  % &'& P   " ?(�6)( Z   ' >*+�5,* =  ' --.- n  ' +/0/ 4  ( +�41
�4 
cobj1 m   ) *�3�3��0 o   ' (�2�2 0 characterlist characterList. m   + ,22 �33  x+ r   0 3454 m   0 1�1�1 
5 o      �0�0 0 
checkdigit 
checkDigit�5  , r   6 >676 c   6 <898 n  6 ::;: 4  7 :�/<
�/ 
cobj< m   8 9�.�.��; o   6 7�-�- 0 characterlist characterList9 m   : ;�,
�, 
long7 o      �+�+ 0 
checkdigit 
checkDigit�6  ) �*�)
�* conscase�)  ' =>= l  @ @�(�'�&�(  �'  �&  > ?�%? L   @ H@@ =   @ GABA \   @ ECDC m   @ A�$�$ D l  A DE�#�"E `   A DFGF o   A B�!�! 	0 total  G m   B C� �  �#  �"  B o   E F�� 0 
checkdigit 
checkDigit�%  �T       
�HIJKL MN��  H ��������� 0 validate_and_add  � 0 validate_ean validate_EAN� 0 validate_isbn validate_ISBN
� .aevtoappnull  �   � ****� 40 findmediacodesjavascript findMediaCodesJavascript� "0 browserdocument browserDocument� 0 alllinks allLinks�  I � R��OP�� 0 validate_and_add  � �Q� Q  �� 0 alllinks allLinks�  O ��� 0 alllinks allLinks� 0 	mediacode 	mediaCodeP ���
�	� �� w� ������
� 
cobj
� 
leng�
 

�	 
rest� 0 validate_and_add  
� 
docu
� 
cha 
� .DLb2Looknull���     ****� 0 validate_isbn validate_ISBN
� 
bool� � 0 validate_ean validate_EAN� ��jv  hY hO��k/E�O��,� *��,k+ Y hO��k/ Vg� Q��k/�  
�j 
Y ?��,� 	 )��-jl+ �& 
�j 
Y !��,� 	 )��-jl+ �& 
�j 
Y hVUO*��,k+ J �  �����RS���  0 validate_ean validate_EAN�� ��T�� T  ������ 0 characterlist characterList�� 	0 total  ��  R �������� 0 characterlist characterList�� 	0 total  �� 0 currentdigit currentDigitS ������������
�� 
cobj
�� 
long
�� 
leng
�� 
rest�� 0 validate_ean validate_EAN�� 
�� M��k/�&E�O��,l#j  
�m E�Y hO��,k *��,��l+ Y hO�j  �E�Y hO���# K ������UV���� 0 validate_isbn validate_ISBN�� ��W�� W  ������ 0 characterlist characterList�� 	0 total  ��  U �������� 0 characterlist characterList�� 	0 total  �� 0 
checkdigit 
checkDigitV 	����������)2����
�� 
leng
�� 
rest
�� 
cobj
�� 
long�� 0 validate_isbn validate_ISBN�� 
�� �� I��,k *��,��k/�&��, �l+ Y hOg� ��i/�  �E�Y 
��i/�&E�VO��#� L ��X����YZ��
�� .aevtoappnull  �   � ****X k     )[[  \\   ]]  (^^  A����  ��  ��  Y  Z  �� %�� >���������������� 40 findmediacodesjavascript findMediaCodesJavascript
�� 
txdl
�� 
docu�� "0 browserdocument browserDocument
�� 
dcnm
�� .sfridojsnull���    obj 
�� 
citm�� 0 alllinks allLinks�� 0 validate_and_add  �� *�E�O�*�,FO� *�k/E�O���l �-E�UO*�k+ M __  >����
�� 
docu�� N ��`�� `   abcdefghijklmnopqrst������������������������a �uu  1 0 5 4 6 6 2 5 4 7b �vv  B 0 0 0 6 7 L 6 T Qc �ww  0 7 3 6 8 1 4 5 6 6d �xx  1 1 9 4 8 8 8 8 6 9e �yy  0 6 1 8 3 6 7 5 1 9f �zz  0 7 9 2 2 7 0 7 2 Xg �{{  0 1 5 2 0 0 2 8 1 2h �||  B 0 0 0 U 4 E U 4 8i �}}  B 0 0 0 0 0 J K M Xj �~~  0 3 8 7 3 4 5 8 5 Xk �  B 0 0 0 0 6 S K T Wl ���  0 4 3 9 3 2 4 3 6 Xm ���  0 3 0 0 0 7 7 5 1 3n ���  0 6 8 8 1 2 5 3 9 5o ���  0 5 9 5 3 1 8 1 5 0p ���  B 0 0 0 E A C B E 4q ���  B 0 0 0 I 5 3 O F Ur ���  B 0 0 0 N 8 F V B Ws ���  B 0 0 0 U 7 Z T J At ���  1 0 5 3 0 7 5 8 5 6��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �   ascr  ��ޭ