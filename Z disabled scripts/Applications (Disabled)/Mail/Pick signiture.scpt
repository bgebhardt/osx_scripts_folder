FasdUAS 1.101.10   ��   ��    k             l     �� ��    B < script that will allow you to pick an account and signature       	  l     �� 
��   
 I C if signature name matches account name it will use that signature.    	     l     �� ��    9 3 otherwise it will ask you to pick a signature too.         l     ������  ��        l   b ��  O    b    k   a       Q         r        4   �� 
�� 
bcke  m   	 
������  o      ���� 0 msg    R      ������
�� .ascrerr ****      � ****��  ��    k            l   �� !��   ! A ; assume the error is because there are no outgoing messages       " # " l   �� $��   $   return immediately    #  %�� % L    ����  ��     & ' & l   ������  ��   '  ( ) ( l   �� *��   * , & warn about multiple outgoing messages    )  + , + Z    J - .���� - ?    ! / 0 / l    1�� 1 I   �� 2��
�� .corecnte****       **** 2 2   ��
�� 
bcke��  ��   0 m     ����  . Q   $ F 3 4 5 3 I  ' <�� 6��
�� .sysodlogaskr        TEXT 6 b   ' 8 7 8 7 b   ' 4 9 : 9 b   ' 2 ; < ; b   ' 0 = > = m   ' ( ? ?  
There are     > l  ( / @�� @ I  ( /�� A��
�� .corecnte****       **** A 2  ( +��
�� 
bcke��  ��   < m   0 1 B B D > outgoing messages.  Using last created message with subject:     : o   2 3��
�� 
ret  8 n   4 7 C D C 1   5 7��
�� 
subj D o   4 5���� 0 msg  ��   4 R      ������
�� .ascrerr ****      � ****��  ��   5 L   D F����  ��  ��   ,  E F E l  K K������  ��   F  G H G l  K K�� I��   I ; 5 now pick an account (only from the enabled accounts)    H  J K J r   K R L M L n  K P N O N I   L P�������� 0 enabledaccts enabledAccts��  ��   O  f   K L M o      ���� 0 thelist theList K  P Q P Q   S t R S T R r   V j U V U n   V f W X W 4   a f�� Y
�� 
cobj Y m   d e����  X l  V a Z�� Z I  V a�� [ \
�� .gtqpchltTEXT  @   @ TEXT [ o   V W���� 0 thelist theList \ �� ] ^
�� 
prmp ] m   X Y _ _  Choose a signature:    ^ �� `��
�� 
mlsl ` m   Z [��
�� boovfals��  ��   V o      ���� 0 acctname acctName S R      ������
�� .ascrerr ****      � ****��  ��   T L   r t����   Q  a b a I  u |�� c��
�� .ascrcmnt****      � **** c o   u x���� 0 acctname acctName��   b  d e d l  } }������  ��   e  f g f 4   } ��� h
�� 
mact h o   � ����� 0 acctname acctName g  i j i I  � ��� k��
�� .ascrcmnt****      � **** k m   � � l l 
 here   ��   j  m n m l  � �������  ��   n  o p o l  � ��� q��   q A ; if a signature exists that matches the account name use it    p  r s r r   � � t u t m   � � v v       u o      ���� 0 thesig theSig s  w x w Q   � y z { y r   � � | } | 4   � ��� ~
�� 
situ ~ o   � ����� 0 acctname acctName } o      ���� 0 thesig theSig z R      ������
�� .ascrerr ****      � ****��  ��   { k   �    � � � l  � ��� ���   � !  otherwise pick a signature    �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � �  picking signature   ��   �  ��� � Z   � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thesig theSig � m   � � � �       � k   �  � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � 2   � ���
�� 
situ � o      ���� 0 thelist theList �  � � � Q   � � � � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � l  � � ��� � I  � ��� � �
�� .gtqpchltTEXT  @   @ TEXT � o   � ����� 0 thelist theList � �� � �
�� 
prmp � m   � � � �  Choose a signature:    � �� ���
�� 
mlsl � m   � ���
�� boovfals��  ��   � o      ���� 0 	theresult 	theResult � R      ������
�� .ascrerr ****      � ****��  ��   � L   � �����   �  � � � l  � �������  ��   �  ��� � r   �  � � � 4   � ��� �
�� 
situ � o   � ����� 0 	theresult 	theResult � o      ���� 0 thesig theSig��  ��  ��  ��   x  � � � l ������  ��   �  � � � l �� ���   �   set the sender    �  � � � r   � � � n   � � � 1  ��
�� 
emad � 4  �� �
�� 
mact � o  	���� 0 acctname acctName � o      ���� 0 	theemails 	theEmails �  � � � l ������  ��   �  � � � l �� ���   � 4 . for some reason the account sender format is:    �  � � � l �� ���   � "  "full name <email address>"    �  � � � l �� ���   �   built the string    �  � � � r  7 � � � b  3 � � � b  / � � � b  & � � � n  " � � � 1  "��
�� 
flln � 4  �� �
�� 
mact � o  ���� 0 acctname acctName � m  "% � �   <    � n  &. � � � 4  ).�� �
�� 
cobj � m  ,-����  � o  &)�� 0 	theemails 	theEmails � m  /2 � �  >    � o      �~�~ 0 	acctemail 	acctEmail �  � � � I 8?�} ��|
�} .ascrcmnt****      � **** � o  8;�{�{ 0 	acctemail 	acctEmail�|   �  � � � l @@�z ��z   � $  set the sender to that string    �  � � � r  @I � � � o  @C�y�y 0 	acctemail 	acctEmail � n       � � � 1  DH�x
�x 
sndr � o  CD�w�w 0 msg   �  � � � l JJ�v�u�v  �u   �  � � � l JJ�t ��t   �   set the signature    �  � � � l JJ�s ��s   � , &set message signature of msg to theSig    �  � � � l JJ�r�q�r  �q   �  � � � l JJ�p ��p   � < 6 use this to put the signature at the end of the email    �  � � � l JJ�o ��o   � h b it's probably only want we want half the time, but hopefully it's the right half of the time.  :)    �  � � � r  J_ � � � b  JY � � � b  JQ � � � n  JO � � � 1  KO�n
�n 
ctnt � o  JK�m�m 0 msg   � o  OP�l
�l 
ret  � n  QX � � � 1  TX�k
�k 
ctnt � o  QT�j�j 0 thesig theSig � n       � � � 1  Z^�i
�i 
ctnt � o  YZ�h�h 0 msg   �    l ``�g�f�g  �f    l ``�e�e   H B alternatively just copy and paste text to current insertion point     l ``�d�d     not working yet    �c l  ``�b	�b  	 � �	set (the clipboard) to content of theSig
	tell application "System Events"
		tell process "Mail"
			click menu item "Paste" of menu "Edit" of menu bar 1
		end tell
	end tell
   �c    m     

�null     � ��  ^Mail.app���@� �0�L��� 80���p� �0 {    )       �(�K� ���� {emal   alis    2  Kermit                     ���ZH+    ^Mail.app                                                         F�a*@        ����  	                Applications    ��>�      �a��      ^  Kermit:Applications:Mail.app    M a i l . a p p    K e r m i t  Applications/Mail.app   / ��  ��     l     �a�`�a  �`   �_ i      I      �^�]�\�^ 0 enabledaccts enabledAccts�]  �\   O     9 k    8  r     J    �[�[   o      �Z�Z 0 thelist theList  l  	 	�Y�Y     build a list     X   	 5�X Z    0�W�V =     !  n    "#" 1    �U
�U 
isac# o    �T�T 0 i  ! m    �S
�S boovtrue r   # ,$%$ b   # *&'& o   # $�R�R 0 thelist theList' l  $ )(�Q( c   $ ))*) n   $ '+,+ 1   % '�P
�P 
pnam, o   $ %�O�O 0 i  * m   ' (�N
�N 
list�Q  % o      �M�M 0 thelist theList�W  �V  �X 0 i   2   �L
�L 
mact -�K- L   6 8.. o   6 7�J�J 0 thelist theList�K   m     
�_       �I/01�I  / �H�G�H 0 enabledaccts enabledAccts
�G .aevtoappnull  �   � ****0 �F�E�D23�C�F 0 enabledaccts enabledAccts�E  �D  2 �B�A�B 0 thelist theList�A 0 i  3 
�@�?�>�=�<�;�:
�@ 
mact
�? 
kocl
�> 
cobj
�= .corecnte****       ****
�< 
isac
�; 
pnam
�: 
list�C :� 6jvE�O +*�-[��l kh ��,e  ���,�&%E�Y h[OY��O�U1 �94�8�756�6
�9 .aevtoappnull  �   � ****4 k    b77  �5�5  �8  �7  5  6 '
�4�3�2�1�0 ? B�/�.�-�,�+�* _�)�(�'�&�%�$�# l v�"�! ��  � ����� � ����
�4 
bcke�3 0 msg  �2  �1  
�0 .corecnte****       ****
�/ 
ret 
�. 
subj
�- .sysodlogaskr        TEXT�, 0 enabledaccts enabledAccts�+ 0 thelist theList
�* 
prmp
�) 
mlsl�( 
�' .gtqpchltTEXT  @   @ TEXT
�& 
cobj�% 0 acctname acctName
�$ .ascrcmnt****      � ****
�# 
mact�" 0 thesig theSig
�! 
situ
�  
pnam� 0 	theresult 	theResult
� 
emad� 0 	theemails 	theEmails
� 
flln� 0 	acctemail 	acctEmail
� 
sndr
� 
ctnt�6c�_ *�i/E�W 	X  hO*�-j k ' �*�-j %�%�%��,%j 
W 	X  hY hO)j+ E�O ����fa  a k/E` W 	X  hO_ j O*a _ /EOa j Oa E` O *a _ /E` W ]X  a j O_ a ,a   A*a -a ,E�O ��a �fa  a k/E` W 	X  hO*a _ /E` Y hO*a _ /a ,E`  O*a _ /a !,a "%_  a k/%a #%E` $O_ $j O_ $�a %,FO�a &,�%_ a &,%�a &,FOPU ascr  ��ޭ