FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
This script adds the content of a mail message (first copied to the clipboard) to the end of the notes section of the contact who sent the message.

You can also choose it to be added to the currently selected contact.
     � 	 	� 
 T h i s   s c r i p t   a d d s   t h e   c o n t e n t   o f   a   m a i l   m e s s a g e   ( f i r s t   c o p i e d   t o   t h e   c l i p b o a r d )   t o   t h e   e n d   o f   t h e   n o t e s   s e c t i o n   o f   t h e   c o n t a c t   w h o   s e n t   t h e   m e s s a g e . 
 
 Y o u   c a n   a l s o   c h o o s e   i t   t o   b e   a d d e d   t o   t h e   c u r r e n t l y   s e l e c t e d   c o n t a c t . 
   
  
 l     ��������  ��  ��        l     ����  I    �� ��
�� .sysodlogaskr        TEXT  m        �   � D i d   y o u   c o p y   t h e   p a r t   o f   t h e   m e s s a g e   t o   c o p y   i n t o   t h e   c o n t a c t   t o   t h e   c l i p b o a r d ?��  ��  ��        l     ��������  ��  ��     ��  l  � ����  O   �    k   
�       r   
     n   
     4    �� 
�� 
cobj  m    ����   l  
   ����   e   
  ! ! 1   
 ��
�� 
slct��  ��    o      ���� 0 msg     " # " l   ��������  ��  ��   #  $ % $ r     & ' & n     ( ) ( 1    ��
�� 
rdrc ) o    ���� 0 msg   ' o      ���� 0 datereceived dateReceived %  * + * l   ��������  ��  ��   +  , - , l   �� . /��   .  get properties of msg    / � 0 0 * g e t   p r o p e r t i e s   o f   m s g -  1 2 1 l   ��������  ��  ��   2  3 4 3 r     5 6 5 n     7 8 7 1    ��
�� 
sndr 8 o    ���� 0 msg   6 o      ���� 0 
sendername 
senderName 4  9 : 9 l     �� ; <��   ; M G get the name before the email. Assumes format of name <email@blah.com>    < � = = �   g e t   t h e   n a m e   b e f o r e   t h e   e m a i l .   A s s u m e s   f o r m a t   o f   n a m e   < e m a i l @ b l a h . c o m > :  > ? > r     ; @ A @ c     9 B C B n     5 D E D 7  ! 5�� F G
�� 
cha  F m   % '����  G l  ( 4 H���� H \   ( 4 I J I l  ) 2 K���� K I  ) 2���� L
�� .sysooffslong    ��� null��   L �� M N
�� 
psof M m   + , O O � P P  < N �� Q��
�� 
psin Q o   - .���� 0 
sendername 
senderName��  ��  ��   J m   2 3���� ��  ��   E o     !���� 0 
sendername 
senderName C m   5 8��
�� 
TEXT A o      ���� 0 
sendername 
senderName ?  R S R l  < <��������  ��  ��   S  T U T O   <� V W V k   B� X X  Y Z Y l  B B�� [ \��   [   find the person    \ � ] ]     f i n d   t h e   p e r s o n Z  ^ _ ^ l  B B�� ` a��   `  		try    a � b b 
 	 	 t r y _  c d c r   B X e f e l  B T g���� g 6 B T h i h 2  B G��
�� 
azf4 i E   J S j k j 1   K O��
�� 
pnam k o   P R���� 0 
sendername 
senderName��  ��   f o      ���� 0 	theperson 	thePerson d  l m l l  Y Y��������  ��  ��   m  n o n Z   Y � p q���� p l  Y b r���� r =   Y b s t s l  Y ` u���� u I  Y `�� v��
�� .corecnte****       **** v o   Y \���� 0 	theperson 	thePerson��  ��  ��   t m   ` a����  ��  ��   q l  e � w x y w k   e � z z  { | { Z   e � } ~���� } =   e p  �  l  e n ����� � I  e n�� ���
�� .corecnte****       **** � 1   e j��
�� 
az48��  ��  ��   � m   n o����  ~ k   s � � �  � � � l  s s��������  ��  ��   �  � � � l  s s��������  ��  ��   �  � � � r   s � � � � e   s � � � n   s � � � � 1   | ���
�� 
pnam � n   s | � � � 4   y |�� �
�� 
cobj � m   z {����  � l  s y ����� � e   s y � � 1   s y��
�� 
az48��  ��   � o      ���� 0 thename theName �  � � � r   � � � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  N o   o n e   m a t c h e s   � o   � ����� 0 
sendername 
senderName � m   � � � � � � � D .     U s e   c u r r e n t l y   s e l e c t e d   c o n t a c t   � o   � ����� 0 thename theName � m   � � � � � � �  ?��   � o      ���� 0 dialogresult dialogResult �  � � � Z   � � � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 dialogresult dialogResult � m   � � � � � � �  O k � r   � � � � � l  � � ����� � e   � � � � 1   � ���
�� 
az48��  ��   � o      ���� 0 	theperson 	thePerson��   � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � �  N o   o n e   m a t c h e s   � o   � ����� 0 
sendername 
senderName � m   � � � � � � � D .     U s e   c u r r e n t l y   s e l e c t e d   c o n t a c t  ��   �  � � � L   � �����   �  ��� � l  � ���������  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   |  ��� � l  � ���������  ��  ��  ��   x   count is 0    y � � �    c o u n t   i s   0��  ��   o  � � � l  � �����~��  �  �~   �  � � � l  � ��}�|�{�}  �|  �{   �  � � � l  � ��z � ��z   �   if it is one person then    � � � � 2   i f   i t   i s   o n e   p e r s o n   t h e n �  ��y � Z   �� � � � � � l  � � ��x�w � =   � � � � � l  � � ��v�u � I  � ��t ��s
�t .corecnte****       **** � o   � ��r�r 0 	theperson 	thePerson�s  �v  �u   � m   � ��q�q �x  �w   � k   �a � �  � � � l  � ��p � ��p   � 7 1 now set the notes of the card to the notes plus     � � � � b   n o w   s e t   t h e   n o t e s   o f   t h e   c a r d   t o   t h e   n o t e s   p l u s   �  � � � l  � ��o � ��o   � < 6the date of the message plus the text on the clipboard    � � � � l t h e   d a t e   o f   t h e   m e s s a g e   p l u s   t h e   t e x t   o n   t h e   c l i p b o a r d �  � � � r   � � � � � n   � � � � � 1   � ��n
�n 
az37 � n   � � � � � 4   � ��m �
�m 
cobj � m   � ��l�l  � o   � ��k�k 0 	theperson 	thePerson � o      �j�j 0 thenote theNote �  � � � r   � � � � c   � � � � l  �  ��i�h � b   �  � � � b   � � � � � o   � ��g�g 0 datereceived dateReceived � o   � ��f
�f 
ret  � l  � � ��e�d � I  � ��c�b�a
�c .JonsgClp****    ��� null�b  �a  �e  �d  �i  �h   � m   �`
�` 
TEXT � o      �_�_ 0 	addednote 	addedNote �  � � � l 		�^�]�\�^  �]  �\   �  � � � I 	�[ ��Z
�[ .ascrcmnt****      � **** � o  	�Y�Y 0 thenote theNote�Z   �    I �X�W
�X .ascrcmnt****      � **** o  �V�V 0 	addednote 	addedNote�W    l �U�T�S�U  �T  �S    l �R�R   I C if there is no value in the note then set the note to the new note    �		 �   i f   t h e r e   i s   n o   v a l u e   i n   t h e   n o t e   t h e n   s e t   t h e   n o t e   t o   t h e   n e w   n o t e 

 Z  J�Q =   o  �P�P 0 thenote theNote m  �O
�O 
msng r  #1 o  #&�N�N 0 	addednote 	addedNote n       1  ,0�M
�M 
az37 n  &, 4  ),�L
�L 
cobj m  *+�K�K  o  &)�J�J 0 	theperson 	thePerson�Q   l 4J r  4J b  4? b  4;  o  47�I�I 0 thenote theNote  o  7:�H
�H 
ret  o  ;>�G�G 0 	addednote 	addedNote n      !"! 1  EI�F
�F 
az37" n  ?E#$# 4  BE�E%
�E 
cobj% m  CD�D�D $ o  ?B�C�C 0 	theperson 	thePerson   append the new note	    �&& *   a p p e n d   t h e   n e w   n o t e 	 '(' l KK�B�A�@�B  �A  �@  ( )*) I KR�?+�>
�? .ascrcmnt****      � ****+ o  KN�=�= 0 thenote theNote�>  * ,-, l SS�<�;�:�<  �;  �:  - ./. l SS�901�9  0 + % select the person updated to confirm   1 �22 J   s e l e c t   t h e   p e r s o n   u p d a t e d   t o   c o n f i r m/ 343 r  S_565 n  SY787 4  VY�89
�8 
cobj9 m  WX�7�7 8 o  SV�6�6 0 	theperson 	thePerson6 1  Y^�5
�5 
az484 :�4: l ``�3�2�1�3  �2  �1  �4   � ;<; l dm=�0�/= ?  dm>?> l dk@�.�-@ I dk�,A�+
�, .corecnte****       ****A o  dg�*�* 0 	theperson 	thePerson�+  �.  �-  ? m  kl�)�) �0  �/  < B�(B k  p�CC DED l pp�'FG�'  F !  otherwise display an error   G �HH 6   o t h e r w i s e   d i s p l a y   a n   e r r o rE I�&I I p��%J�$
�% .sysodlogaskr        TEXTJ b  p�KLK b  p�MNM b  pyOPO b  puQRQ m  psSS �TT , T o o   m a n y   p e o p l e   m a t c h  R o  st�#�# 0 
sendername 
senderNameP m  uxUU �VV  .   (N l 	y�W�"�!W l y�X� �X I y��Y�
� .corecnte****       ****Y o  y|�� 0 	theperson 	thePerson�  �   �  �"  �!  L m  ��ZZ �[[  )�$  �&  �(   � l ��\]^\ I ���_�
� .sysodlogaskr        TEXT_ b  ��`a` b  ��bcb m  ��dd �ee  N o   o n e   m a t c h e s  c o  ���� 0 
sendername 
senderNamea m  ��ff �gg  .�  ]   count is 0   ^ �hh    c o u n t   i s   0�y   W m   < ?ii�                                                                                  adrb   alis    d  Danger Mouse               ��KXH+     Address Book.app                                                ���u�        ����  	                Applications    �ڭ�      ���8         *Danger Mouse:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    D a n g e r   M o u s e  Applications/Address Book.app   / ��   U j�j l ������  �  �  �    m    kk�                                                                                  emal   alis    D  Danger Mouse               ��KXH+     Mail.app                                                         �C�L��        ����  	                Applications    �ڭ�      �M*`         "Danger Mouse:Applications:Mail.app    M a i l . a p p    D a n g e r   M o u s e  Applications/Mail.app   / ��  ��  ��  ��       �lmnopqrstu��������  l ���
�	��������� ������
� .aevtoappnull  �   � ****� 0 msg  �
 0 datereceived dateReceived�	 0 
sendername 
senderName� 0 	theperson 	thePerson� 0 thename theName� 0 dialogresult dialogResult� 0 thenote theNote� 0 	addednote 	addedNote�  �  �  �   ��  ��  ��  m ��v����wx��
�� .aevtoappnull  �   � ****v k    �yy  zz  ����  ��  ��  w  x - ��k������������������ O��������i��{���������� � � ����� � � ���������������SUZdf
�� .sysodlogaskr        TEXT
�� 
slct
�� 
cobj�� 0 msg  
�� 
rdrc�� 0 datereceived dateReceived
�� 
sndr�� 0 
sendername 
senderName
�� 
cha 
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
TEXT
�� 
azf4{  
�� 
pnam�� 0 	theperson 	thePerson
�� .corecnte****       ****
�� 
az48�� 0 thename theName�� 0 dialogresult dialogResult
�� 
bhit
�� 
az37�� 0 thenote theNote
�� 
ret 
�� .JonsgClp****    ��� null�� 0 	addednote 	addedNote
�� .ascrcmnt****      � ****
�� 
msng����j O��*�,E�k/E�O��,E�O��,E�O�[�\[Zk\Z*����� l2a &E�Oa Y*a -a [a ,\Z�@1E` O_ j j  u*a ,j k  a*a ,E�k/a ,EE` Oa �%a %_ %a %j E` O_ a ,a   *a ,EE` Y a �%a  %j OhOPOPY hOPY hO_ j k  �_ �k/a !,E` "O�_ #%*j $%a &E` %O_ "j &O_ %j &O_ "a '  _ %_ �k/a !,FY _ "_ #%_ %%_ �k/a !,FO_ "j &O_ �k/*a ,FOPY 7_ j k a (�%a )%_ j %a *%j Y a +�%a ,%j UOPUn || }������} ~��~ k���
�� 
mact� ���  G m a i l   I M A P
�� 
mbxp ��� 
 I N B O X
�� 
mssg��  2�
�� kfrmID  o ldt     �O1�p ���  " C i n d y   J o n e s "q ����� �  �� �� i�����
�� 
azf4� ��� Z 6 8 4 7 F 0 D 3 - 2 9 5 4 - 4 3 2 1 - A F 8 E - 7 0 9 1 D 0 1 3 8 0 D 4 : A B P e r s o n
�� kfrmID  r ���  C i n d y   J o n e ss �����
�� 
bhit� ���  O K��  t ��� � m a i d e n   n a m e :   M i l l e r 
 
 K a e l y n   " K a e l y "   A n n a l i e s e   J o n e s   b o r n   J a n u a r y   2 2 ,   2 0 0 7   a t   2   p mu ���� T u e s d a y ,   M a y   1 3 ,   2 0 0 8   1 1 : 5 2 : 5 2   A M  O h ,   b y   t h e   w a y ,   K a e l y   w i l l   b e c o m e   a   b i g   s i s t e r   t h i s   N o v e m b e r .     D o n ' t   k n o w   t h e   g e n d e r   y e t ,   b u t   s / h e ' s   m a d e   i t   t h r o u g h   t h e   f i r s t   t r i m e s t e r   ( t h a n k   g o o d n e s s -   M o m m y ' s   s t o m a c h   c a n ' t   t a k e   t o o   m u c h   m o r e ) .�  �  �  �  �  �  �   ascr  ��ޭ