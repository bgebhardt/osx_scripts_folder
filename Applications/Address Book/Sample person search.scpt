FasdUAS 1.101.10   ��   ��    k             l    	 ��  r     	  	  I    �� 
 
�� .sysodlogaskr        TEXT 
 m         Search for a person     �� ��
�� 
dtxt  m        Enter a name   ��   	 o      ���� 0 mysearch mySearch��        l  
  ��  I  
 �� ��
�� .ascrcmnt****      � ****  o   
 ���� 0 mysearch mySearch��  ��        l     ������  ��        l   $ ��  Z    $  ����  =       n        1    ��
�� 
bhit  o    ���� 0 mysearch mySearch  m        OK     I     �� ���� &0 searchaddressbook SearchAddressBook    ��   n     ! " ! 1    ��
�� 
ttxt " o    ���� 0 mysearch mySearch��  ��  ��  ��  ��     # $ # l     ������  ��   $  % & % l     �� '��   '   returns a person record    &  ( ) ( i      * + * I      �� ,���� &0 searchaddressbook SearchAddressBook ,  -�� - o      ���� 0 	thesearch 	theSearch��  ��   + O     � . / . k    � 0 0  1 2 1 l   ������  ��   2  3 4 3 r     5 6 5 m    ������ 6 o      ���� 0 	theperson 	thePerson 4  7 8 7 r     9 : 9 6   ; < ; 2   ��
�� 
azf4 < E     = > = 1    ��
�� 
pnam > o    ���� 0 	thesearch 	theSearch : o      ���� 0 	theresult 	theResult 8  ? @ ? l   ������  ��   @  A B A r     C D C J    ����   D o      ���� 0 	thechoice 	theChoice B  E F E l   ������  ��   F  G H G Z    � I J K L I =    # M N M l   ! O�� O I   !�� P��
�� .corecnte****       **** P o    ���� 0 	theresult 	theResult��  ��   N m   ! "����   J k   & . Q Q  R S R I  & +�� T��
�� .sysodlogaskr        TEXT T m   & ' U U   No one found by that name.   ��   S  V�� V L   , . W W m   , -��������   K  X Y X =   1 8 Z [ Z l  1 6 \�� \ I  1 6�� ]��
�� .corecnte****       **** ] o   1 2���� 0 	theresult 	theResult��  ��   [ m   6 7����  Y  ^�� ^ k   ; c _ _  ` a ` l  ; ;�� b��   b 6 0 if we get only one choice set the person to it.    a  c d c l  ; ;�� e��   e * $ first confirm it's the right person    d  f g f r   ; A h i h l  ; ? j�� j n   ; ? k l k 4   < ?�� m
�� 
cobj m m   = >����  l o   ; <���� 0 	theresult 	theResult��   i o      ���� 0 	theperson 	thePerson g  n o n l  B B������  ��   o  p q p I  B R�� r s
�� .sysodlogaskr        TEXT r b   B I t u t b   B G v w v m   B C x x  Found     w n   C F y z y 1   D F��
�� 
pnam z o   C D���� 0 	theperson 	thePerson u m   G H { { " .  Is this the right person?    s �� |��
�� 
btns | J   J N } }  ~  ~ m   J K � � 	 Yes      ��� � m   K L � �  No   ��  ��   q  � � � Z   S a � ����� � =  S X � � � n   S V � � � 1   T V��
�� 
bhit � 1   S T��
�� 
rslt � m   V W � �  No    � L   [ ] � � m   [ \��������  ��   �  ��� � l  b b������  ��  ��  ��   L k   f � � �  � � � r   f j � � � J   f h����   � o      ���� 0 namelist nameList �  � � � X   k � ��� � � k   } � � �  � � � I  } ��� ���
�� .ascrcmnt****      � **** � l  } � ��� � e   } � � � n   } � � � � 1   ~ ���
�� 
pnam � o   } ~���� 0 i  ��  ��   �  ��� � r   � � � � � b   � � � � � o   � ����� 0 namelist nameList � J   � � � �  ��� � l  � � ��� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 i  ��  ��   � o      ���� 0 namelist nameList��  �� 0 i   � o   n o���� 0 	theresult 	theResult �  � � � l  � �������  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � o   � ����� 0 namelist nameList��   �  � � � r   � � � � � I  � ��� ���
�� .gtqpchltTEXT  @   @ TEXT � o   � ����� 0 namelist nameList��   � o      ���� 0 	thechoice 	theChoice �  � � � l  � �������  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � �  theChoice is     � o   � ����� 0 	thechoice 	theChoice��   �  � � � l  � ��� ���   � &   make sure a choice was selected    �  � � � Z   � � � ����� � =   � � � � � l  � � ��� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thechoice 	theChoice��  ��   � m   � �����  � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � l  � � ��� � 6 � � � � � 2  � ���
�� 
azf4 � =  � � � � � 1   � ���
�� 
pnam � l  � � ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 	thechoice 	theChoice��  ��   � o      �� 0 	theperson 	thePerson��  ��   �  ��~ � l  � ��}�|�}  �|  �~   H  � � � l  � ��{�z�{  �z   �  � � � I  � ��y ��x
�y .ascrcmnt****      � **** � o   � ��w�w 0 	theperson 	thePerson�x   �  � � � I  � ��v ��u
�v .ascrcmnt****      � **** � l  � � ��t � e   � � � � n   � � � � � 1   � ��s
�s 
pnam � o   � ��r�r 0 	theperson 	thePerson�t  �u   �  � � � L   � � � � o   � ��q�q 0 	theperson 	thePerson �  ��p � l  � ��o�n�o  �n  �p   / m      � ��null     ߀��  ^Address Book.app0�LÀutxt�T�� �� �p   f���    �Tp��R���`D adrb  alis    R  Kermit                     ���ZH+    ^Address Book.app                                                 ����P        ����  	                Applications    ��>�      ���      ^  $Kermit:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    K e r m i t  Applications/Address Book.app   / ��   )  ��m � l     �l�k�l  �k  �m       �j � � ��j   � �i�h�i &0 searchaddressbook SearchAddressBook
�h .aevtoappnull  �   � **** � �g +�f�e � ��d�g &0 searchaddressbook SearchAddressBook�f �c ��c  �  �b�b 0 	thesearch 	theSearch�e   � �a�`�_�^�]�\�a 0 	thesearch 	theSearch�` 0 	theperson 	thePerson�_ 0 	theresult 	theResult�^ 0 	thechoice 	theChoice�] 0 namelist nameList�\ 0 i   �  ��[ ��Z�Y U�X�W x {�V � ��U�T ��S�R�Q �
�[ 
azf4 �  
�Z 
pnam
�Y .corecnte****       ****
�X .sysodlogaskr        TEXT
�W 
cobj
�V 
btns
�U 
rslt
�T 
bhit
�S 
kocl
�R .ascrcmnt****      � ****
�Q .gtqpchltTEXT  @   @ TEXT�d �� �iE�O*�-�[�,\Z�@1E�OjvE�O�j j  �j OiY ��j k  -��k/E�O��,%�%���lvl O��,�  iY hOPY mjvE�O (�[a �l kh ��,Ej O���,kv%E�[OY��O�j O�j E�Oa �%j O�j k  *�-�[�,\Z��k/81�k/E�Y hOPO�j O��,Ej O�OPU � �P ��O�N � ��M
�P .aevtoappnull  �   � **** � k     $ � �   � �   � �  �L�L  �O  �N   �   � 
 �K �J�I�H�G �F�E
�K 
dtxt
�J .sysodlogaskr        TEXT�I 0 mysearch mySearch
�H .ascrcmnt****      � ****
�G 
bhit
�F 
ttxt�E &0 searchaddressbook SearchAddressBook�M %���l E�O�j O��,�  *��,k+ 	Y hascr  ��ޭ