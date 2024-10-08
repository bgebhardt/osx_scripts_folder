FasdUAS 1.101.10   ��   ��    k             l     ��  ��    : 4http://harvey.nu/applescript_url_decode_routine.html     � 	 	 h h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ d e c o d e _ r o u t i n e . h t m l   
  
 l     ��������  ��  ��        l     ��  ��    s m Example URL: http://guide.opendns.com/?url=intranet%2Fdisplay%2FCDN%2FthePlatform%2BCMS%2BIntegration%2BPlan     �   �   E x a m p l e   U R L :   h t t p : / / g u i d e . o p e n d n s . c o m / ? u r l = i n t r a n e t % 2 F d i s p l a y % 2 F C D N % 2 F t h e P l a t f o r m % 2 B C M S % 2 B I n t e g r a t i o n % 2 B P l a n      l      ��  ��    A reader named Eric was inspired to send in the following url decoder. It seems to work, at least with ascii characters up to 127 (which is probably sufficient for many applications). For some higher number characters (like characters with umlauts, symbols etc) you may run into character encoding problems since the mac uses the mac roman character set, and most servers on the net use something like the windows latin set for encoding. (e.g. � might decode as �) see: convert macroman to windows-1252 encoding      �     A   r e a d e r   n a m e d   E r i c   w a s   i n s p i r e d   t o   s e n d   i n   t h e   f o l l o w i n g   u r l   d e c o d e r .   I t   s e e m s   t o   w o r k ,   a t   l e a s t   w i t h   a s c i i   c h a r a c t e r s   u p   t o   1 2 7   ( w h i c h   i s   p r o b a b l y   s u f f i c i e n t   f o r   m a n y   a p p l i c a t i o n s ) .   F o r   s o m e   h i g h e r   n u m b e r   c h a r a c t e r s   ( l i k e   c h a r a c t e r s   w i t h   u m l a u t s ,   s y m b o l s   e t c )   y o u   m a y   r u n   i n t o   c h a r a c t e r   e n c o d i n g   p r o b l e m s   s i n c e   t h e   m a c   u s e s   t h e   m a c   r o m a n   c h a r a c t e r   s e t ,   a n d   m o s t   s e r v e r s   o n   t h e   n e t   u s e   s o m e t h i n g   l i k e   t h e   w i n d o w s   l a t i n   s e t   f o r   e n c o d i n g .   ( e . g .   �   m i g h t   d e c o d e   a s   � )   s e e :   c o n v e r t   m a c r o m a n   t o   w i n d o w s - 1 2 5 2   e n c o d i n g        l      ��  ��   1+set theSampleURL to "http://harvey.nu/applescript_url_decode_routine.html?query=math%3A+one+%2B+two+%3D+three"set theText to text returned of (display dialog "decode what" default answer theSampleURL)set theTextDec to urldecode(theText) of medisplay dialog theTextDec default answer theTextDec
     �  V  s e t   t h e S a m p l e U R L   t o   " h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ d e c o d e _ r o u t i n e . h t m l ? q u e r y = m a t h % 3 A + o n e + % 2 B + t w o + % 3 D + t h r e e "  s e t   t h e T e x t   t o   t e x t   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   " d e c o d e   w h a t "   d e f a u l t   a n s w e r   t h e S a m p l e U R L )  s e t   t h e T e x t D e c   t o   u r l d e c o d e ( t h e T e x t )   o f   m e  d i s p l a y   d i a l o g   t h e T e x t D e c   d e f a u l t   a n s w e r   t h e T e x t D e c  
      l     ��������  ��  ��        l    L ����  O     L   !   k    K " "  # $ # r     % & % n     ' ( ' 1   
 ��
�� 
pURL ( n    
 ) * ) 1    
��
�� 
cTab * 4   �� +
�� 
cwin + m    ����  & o      ���� 0 oldurl oldURL $  , - , r     . / . n    0 1 0 I    �� 2���� 0 	urldecode   2  3�� 3 o    ���� 0 oldurl oldURL��  ��   1  f     / o      ���� 0 newurl newURL -  4 5 4 l   ��������  ��  ��   5  6 7 6 r    # 8 9 8 I   !���� :
�� .sysooffslong    ��� null��   : �� ; <
�� 
psof ; m     = = � > > < h t t p : / / g u i d e . o p e n d n s . c o m / ? u r l = < �� ?��
�� 
psin ? o    ���� 0 newurl newURL��   9 o      ���� 0 
is_opendns 
is_openDNS 7  @ A @ l  $ $�� B C��   B !  if we find the opendns url    C � D D 6   i f   w e   f i n d   t h e   o p e n d n s   u r l A  E F E Z   $ @ G H���� G =   $ ' I J I o   $ %���� 0 
is_opendns 
is_openDNS J m   % &����  H r   * < K L K b   * : M N M m   * + O O � P P  h t t p : / / N l  + 9 Q���� Q c   + 9 R S R n   + 5 T U T 7 , 5�� V W
�� 
cha  V m   0 2����  W  ;   3 4 U o   + ,���� 0 newurl newURL S m   5 8��
�� 
TEXT��  ��   L o      ���� 0 newurl newURL��  ��   F  X Y X l  A A��������  ��  ��   Y  Z [ Z l  A A�� \ ]��   \  display dialog newURL    ] � ^ ^ * d i s p l a y   d i a l o g   n e w U R L [  _�� _ r   A K ` a ` o   A B���� 0 newurl newURL a n       b c b 1   H J��
�� 
pURL c n   B H d e d 1   F H��
�� 
cTab e 4  B F�� f
�� 
cwin f m   D E���� ��   ! m      g g�                                                                                  sfri   alis    L  Danger Mouse               ��KXH+     
Safari.app                                                      ��/��        ����  	                Applications    �ڭ�      �0IK         $Danger Mouse:Applications:Safari.app   
 S a f a r i . a p p    D a n g e r   M o u s e  Applications/Safari.app   / ��  ��  ��     h i h l     ��������  ��  ��   i  j k j l     ��������  ��  ��   k  l m l i      n o n I      �� p���� 0 	urldecode   p  q�� q o      ���� 0 thetext theText��  ��   o k     � r r  s t s r      u v u m      w w � x x   v o      ���� 0 sdst sDst t  y z y r     { | { m     } } � ~ ~   0 1 2 3 4 5 6 7 8 9 A B C D E F | o      ���� 0 shex sHex z   �  r     � � � m    	����  � o      ���� 0 i   �  � � � V    � � � � k    � � �  � � � r     � � � n     � � � 4    �� �
�� 
cha  � o    ���� 0 i   � o    ���� 0 thetext theText � o      ���� 0 c   �  � � � Z    � � � � � � =      � � � o    ���� 0 c   � m     � � � � �  + � r   # ( � � � b   # & � � � o   # $���� 0 sdst sDst � m   $ % � � � � �    � o      ���� 0 sdst sDst �  � � � =   + . � � � o   + ,���� 0 c   � m   , - � � � � �  % �  ��� � k   1 � � �  � � � Z   1 M � ����� � ?   1 8 � � � o   1 2���� 0 i   � l  2 7 ����� � \   2 7 � � � l  2 5 ����� � n   2 5 � � � 1   3 5��
�� 
leng � o   2 3���� 0 thetext theText��  ��   � m   5 6���� ��  ��   � k   ; I � �  � � � I  ; F�� � �
�� .sysodlogaskr        TEXT � l  ; < ����� � m   ; < � � � � � Z I n v a l i d   U R L   E n c o d e d   s t r i n g   -   m i s s i n g   h e x   c h a r��  ��   � �� � �
�� 
btns � J   = @ � �  ��� � m   = > � � � � �  C r a p . . .��   � �� ���
�� 
disp � m   A B��
�� stic    ��   �  ��� � L   G I � � m   G H � � � � �  ��  ��  ��   �  � � � r   N b � � � \   N ` � � � l  N ^ ����� � I  N ^���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � l  P V ����� � n   P V � � � 4   Q V�� �
�� 
cha  � l  R U ����� � [   R U � � � o   R S���� 0 i   � m   S T���� ��  ��   � o   P Q���� 0 thetext theText��  ��   � �� ���
�� 
psin � o   Y Z���� 0 shex sHex��  ��  ��   � m   ^ _����  � o      ���� 0 icval1 iCVal1 �  � � � r   c w � � � \   c u � � � l  c s ����� � I  c s���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � l  e k ����� � n   e k � � � 4   f k�� �
�� 
cha  � l  g j ����� � [   g j � � � o   g h���� 0 i   � m   h i���� ��  ��   � o   e f���� 0 thetext theText��  ��   � � ��~
� 
psin � o   n o�}�} 0 shex sHex�~  ��  ��   � m   s t�|�|  � o      �{�{ 0 icval2 iCVal2 �  � � � Z   x � � ��z�y � G   x � � � � =   x { � � � o   x y�x�x 0 icval1 iCVal1 � m   y z�w�w�� � =   ~ � � � � o   ~ �v�v 0 icval2 iCVal2 � m    ��u�u�� � k   � � � �  � � � I  � ��t � �
�t .sysodlogaskr        TEXT � l  � � ��s�r � m   � � � � � � � r I n v a l i d   U R L   E n c o d e d   s t r i n g   -   n o t   2   h e x   c h a r s   a f t e r   %   s i g n�s  �r   � �q � �
�q 
btns � J   � � � �  ��p � m   � �   �  C r a p . . .�p   � �o�n
�o 
disp m   � ��m
�m stic    �n   � �l L   � � m   � � �  �l  �z  �y   �  r   � �	
	 b   � � o   � ��k�k 0 sdst sDst l  � ��j�i I  � ��h�g
�h .sysontocTEXT       shor l  � ��f�e [   � � ]   � � o   � ��d�d 0 icval1 iCVal1 m   � ��c�c  o   � ��b�b 0 icval2 iCVal2�f  �e  �g  �j  �i  
 o      �a�a 0 sdst sDst �` r   � � [   � � o   � ��_�_ 0 i   m   � ��^�^  o      �]�] 0 i  �`  ��   � r   � � b   � � o   � ��\�\ 0 sdst sDst o   � ��[�[ 0 c   o      �Z�Z 0 sdst sDst � �Y r   � � [   � � !  o   � ��X�X 0 i  ! m   � ��W�W  o      �V�V 0 i  �Y   � B    "#" o    �U�U 0 i  # n    $%$ 1    �T
�T 
leng% o    �S�S 0 thetext theText � &�R& L   � �'' o   � ��Q�Q 0 sdst sDst�R   m ()( l     �P�O�N�P  �O  �N  ) *+* l     �M,-�M  ,  thanks eric   - �..  t h a n k s   e r i c+ /0/ l     �L�K�J�L  �K  �J  0 121 l     �I34�I  3 %  applescript url encoding page    4 �55 >   a p p l e s c r i p t   u r l   e n c o d i n g   p a g e  2 676 l     �H89�H  8   applescript page    9 �:: $   a p p l e s c r i p t   p a g e  7 ;�G; l     �F�E�D�F  �E  �D  �G       
�C<=>?@�B�A�@�?�C  < �>�=�<�;�:�9�8�7�> 0 	urldecode  
�= .aevtoappnull  �   � ****�< 0 oldurl oldURL�; 0 newurl newURL�: 0 
is_opendns 
is_openDNS�9  �8  �7  = �6 o�5�4AB�3�6 0 	urldecode  �5 �2C�2 C  �1�1 0 thetext theText�4  A �0�/�.�-�,�+�*�0 0 thetext theText�/ 0 sdst sDst�. 0 shex sHex�- 0 i  �, 0 c  �+ 0 icval1 iCVal1�* 0 icval2 iCVal2B  w }�)�( � � � ��' ��&�%�$�# ��"�!� � � ��
�) 
leng
�( 
cha 
�' 
btns
�& 
disp
�% stic    �$ 
�# .sysodlogaskr        TEXT
�" 
psof
�! 
psin
�  .sysooffslong    ��� null
� 
bool� 
� .sysontocTEXT       shor�3 ��E�O�E�OkE�O �h���,��/E�O��  
��%E�Y ���  ����,l ���kv��� O�Y hO*��k/a �� kE�O*��l/a �� kE�O�i 
 	�i a & a �a kv��� Oa Y hO��a  �j %E�O�lE�Y ��%E�O�kE�[OY�IO�> �D��EF�
� .aevtoappnull  �   � ****D k     LGG  ��  �  �  E  F  g������� =���� O���

� 
cwin
� 
cTab
� 
pURL� 0 oldurl oldURL� 0 	urldecode  � 0 newurl newURL
� 
psof
� 
psin� 
� .sysooffslong    ��� null� 0 
is_opendns 
is_openDNS
� 
cha � 
�
 
TEXT� M� I*�k/�,�,E�O)�k+ E�O*����� E�O�k  ��[�\[Z�\62a &%E�Y hO�*�k/�,�,FU? �HH � h t t p : / / g u i d e . o p e n d n s . c o m / ? u r l = b u i l d - m p 1 % 2 F % 7 E p r u t h % 2 F t r u n k % 2 F r e l e a s e % 2 F c i t i z e n k a t e . d f s p l a s h . c o m@ �II | h t t p : / / b u i l d - m p 1 / ~ p r u t h / t r u n k / r e l e a s e / c i t i z e n k a t e . d f s p l a s h . c o m�B �A  �@  �?   ascr  ��ޭ