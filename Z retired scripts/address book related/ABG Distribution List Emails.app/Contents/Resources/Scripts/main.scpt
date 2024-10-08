FasdUAS 1.101.10   ��   ��    k             l     ��  ��      author: Martin Michel     � 	 	 ,   a u t h o r :   M a r t i n   M i c h e l   
  
 l     ��  ��      created: 02.08.2008     �   (   c r e a t e d :   0 2 . 0 8 . 2 0 0 8      l     ��  ��     
 required:     �      r e q u i r e d :      l     ��  ��      � Mac OS X 10.5 Leopard     �   0   "   M a c   O S   X   1 0 . 5   L e o p a r d      l     ��  ��      tested on:     �      t e s t e d   o n :      l     ��   !��     &   � Intel- and PowerPC-based Macs    ! � " " @   "   I n t e l -   a n d   P o w e r P C - b a s e d   M a c s   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' t n This AppleScript let's you choose an Address Book Group and then displays the email address for every person,    ( � ) ) �   T h i s   A p p l e S c r i p t   l e t ' s   y o u   c h o o s e   a n   A d d r e s s   B o o k   G r o u p   a n d   t h e n   d i s p l a y s   t h e   e m a i l   a d d r e s s   f o r   e v e r y   p e r s o n , &  * + * l     �� , -��   , m g which is used when the person is contacted through the chosen group (distribution list email address).    - � . . �   w h i c h   i s   u s e d   w h e n   t h e   p e r s o n   i s   c o n t a c t e d   t h r o u g h   t h e   c h o s e n   g r o u p   ( d i s t r i b u t i o n   l i s t   e m a i l   a d d r e s s ) . +  / 0 / l     �� 1 2��   1 m g As AppleScript itself cannot access this information, a Python script utilizing the PyObjC AddressBook    2 � 3 3 �   A s   A p p l e S c r i p t   i t s e l f   c a n n o t   a c c e s s   t h i s   i n f o r m a t i o n ,   a   P y t h o n   s c r i p t   u t i l i z i n g   t h e   P y O b j C   A d d r e s s B o o k 0  4 5 4 l     �� 6 7��   6 , & framework is used as a helper script.    7 � 8 8 L   f r a m e w o r k   i s   u s e d   a s   a   h e l p e r   s c r i p t . 5  9 : 9 l     �� ; <��   ; V P The script can come in handy when you want to create a custom serial mailing :)    < � = = �   T h e   s c r i p t   c a n   c o m e   i n   h a n d y   w h e n   y o u   w a n t   t o   c r e a t e   a   c u s t o m   s e r i a l   m a i l i n g   : ) :  > ? > l     ��������  ��  ��   ?  @ A @ j     �� B�� 0 mytitle   B m      C C � D D 8 A B G   D i s t r i b u t i o n   L i s t   E m a i l s A  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I D > I am called when the user opens the script with a doubleclick    J � K K |   I   a m   c a l l e d   w h e n   t h e   u s e r   o p e n s   t h e   s c r i p t   w i t h   a   d o u b l e c l i c k H  L M L i     N O N I     ������
�� .aevtoappnull  �   � ****��  ��   O Q     � P Q R P k    � S S  T U T l   �� V W��   V 6 0 asking the user to choose an address book group    W � X X `   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   a d d r e s s   b o o k   g r o u p U  Y Z Y r    
 [ \ [ n    ] ^ ] I    �������� 0 chooseabgroup  ��  ��   ^  f     \ o      ���� 0 chosenabgrouprecord   Z  _ ` _ l   �� a b��   a 7 1 no address book groups availabe or user canceled    b � c c b   n o   a d d r e s s   b o o k   g r o u p s   a v a i l a b e   o r   u s e r   c a n c e l e d `  d e d Z     f g���� f =    h i h o    ���� 0 chosenabgrouprecord   i m    ��
�� 
msng g L    ����  ��  ��   e  j k j l   �� l m��   l + % unique id of the chosen address book    m � n n J   u n i q u e   i d   o f   t h e   c h o s e n   a d d r e s s   b o o k k  o p o r     q r q n     s t s 4    �� u
�� 
cobj u m    ����  t o    ���� 0 chosenabgrouprecord   r o      ���� 0 	abgroupid   p  v w v l   �� x y��   x &   name of the chosen address book    y � z z @   n a m e   o f   t h e   c h o s e n   a d d r e s s   b o o k w  { | { r    % } ~ } n    #  �  4     #�� �
�� 
cobj � m   ! "����  � o     ���� 0 chosenabgrouprecord   ~ o      ���� 0 abgroupname   |  � � � l  & &�� � ���   � K E getting the distribution list emails of the chosen adress book group    � � � � �   g e t t i n g   t h e   d i s t r i b u t i o n   l i s t   e m a i l s   o f   t h e   c h o s e n   a d r e s s   b o o k   g r o u p �  � � � r   & . � � � n  & , � � � I   ' ,�� ����� 0 getdlistemails   �  ��� � o   ' (���� 0 	abgroupid  ��  ��   �  f   & ' � o      ���� 0 dlistrecord   �  � � � l  / /�� � ���   � 6 0 no members available in this address book group    � � � � `   n o   m e m b e r s   a v a i l a b l e   i n   t h i s   a d d r e s s   b o o k   g r o u p �  � � � Z   / ; � ����� � =  / 2 � � � o   / 0���� 0 dlistrecord   � m   0 1��
�� 
msng � L   5 7����  ��  ��   �  � � � l  < <�� � ���   � %  unique id of the member/person    � � � � >   u n i q u e   i d   o f   t h e   m e m b e r / p e r s o n �  � � � r   < B � � � n   < @ � � � 4   = @�� �
�� 
cobj � m   > ?����  � o   < =���� 0 dlistrecord   � o      ���� 0 	personids   �  � � � l  C C�� � ���   � T N email address used when contacting the person/member through the chosen group    � � � � �   e m a i l   a d d r e s s   u s e d   w h e n   c o n t a c t i n g   t h e   p e r s o n / m e m b e r   t h r o u g h   t h e   c h o s e n   g r o u p �  � � � r   C I � � � n   C G � � � 4   D G�� �
�� 
cobj � m   E F����  � o   C D���� 0 dlistrecord   � o      ���� 0 dlistemails   �  � � � r   J O � � � n   J M � � � 1   K M��
�� 
leng � o   J K���� 0 	personids   � o      ���� 0 countpersonids   �  � � � l  P P�� � ���   � R L this is just a demo that displays the found distribution list email address    � � � � �   t h i s   i s   j u s t   a   d e m o   t h a t   d i s p l a y s   t h e   f o u n d   d i s t r i b u t i o n   l i s t   e m a i l   a d d r e s s �  � � � l  P P�� � ���   � + % for all contacts in the chosen group    � � � � J   f o r   a l l   c o n t a c t s   i n   t h e   c h o s e n   g r o u p �  � � � Y   P � ��� � ��� � k   Z � � �  � � � r   Z ` � � � n   Z ^ � � � 4   [ ^�� �
�� 
cobj � o   \ ]���� 0 i   � o   Z [���� 0 	personids   � o      ���� 0 personid   �  � � � r   a g � � � n   a e � � � 4   b e�� �
�� 
cobj � o   c d���� 0 i   � o   a b���� 0 dlistemails   � o      ���� 0 
dlistemail   �  � � � r   h � � � � n  h n � � � I   i n�� ����� 0 getpersondata   �  ��� � o   i j���� 0 personid  ��  ��   �  f   h i � J       � �  � � � o      ���� 0 personfname   �  � � � o      ���� 0 personlname   �  ��� � o      ���� 0 personorganization  ��   �  ��� � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � �  � b   � � b   � � m   � � �  A B   G r o u p :   o   � ����� 0 abgroupname   o   � ���
�� 
ret   m   � � �  M e m b e r :   � o   � ����� 0 personfname   � 1   � ���
�� 
spac � o   � ����� 0 personlname   � o   � ���
�� 
ret  � m   � �		 �

  C o m p a n y :   � o   � ����� 0 personorganization   � o   � ���
�� 
ret  � m   � � �  E m a i l :   � o   � ����� 0 
dlistemail   � ����
�� 
appr o   � ����� 0 mytitle  ��  ��   �  f   � ���  �� 0 i   � m   S T����  � o   T U���� 0 countpersonids  ��   � �� l  � �����   !  catching unexpected errors    � 6   c a t c h i n g   u n e x p e c t e d   e r r o r s��   Q R      ��
�� .ascrerr ****      � **** o      ���� 
0 errmsg   ����
�� 
errn o      ���� 
0 errnum  ��   R k   � �  l  � �����   %  ignoring 'User canceled'-error    � >   i g n o r i n g   ' U s e r   c a n c e l e d ' - e r r o r �� Z   � ����� >  � � o   � ����� 
0 errnum   m   � ������� n  � � !  I   � ���"���� 0 	dsperrmsg  " #$# o   � ����� 
0 errmsg  $ %�% o   � ��~�~ 
0 errnum  �  ��  !  f   � ���  ��  ��   M &'& l     �}�|�{�}  �|  �{  ' ()( l     �z*+�z  * s m I am returning a list containing the person's first name, last name and organization for the given person id   + �,, �   I   a m   r e t u r n i n g   a   l i s t   c o n t a i n i n g   t h e   p e r s o n ' s   f i r s t   n a m e ,   l a s t   n a m e   a n d   o r g a n i z a t i o n   f o r   t h e   g i v e n   p e r s o n   i d) -.- i    
/0/ I      �y1�x�y 0 getpersondata  1 2�w2 o      �v�v 0 personid  �w  �x  0 k     _33 454 O     X676 k    W88 9:9 r    ;<; n    =>= 4    �u?
�u 
cobj? m    �t�t > l   @�s�r@ 6   ABA 2    �q
�q 
azf4B =   CDC 1   	 �p
�p 
ID  D o    �o�o 0 personid  �s  �r  < o      �n�n 0 	personobj  : EFE r    GHG c    IJI l   K�m�lK n    LML 1    �k
�k 
azf7M o    �j�j 0 	personobj  �m  �l  J m    �i
�i 
utxtH o      �h�h 0 personfname  F NON Z    +PQ�g�fP =   !RSR o    �e�e 0 personfname  S m     TT �UU  m i s s i n g   v a l u eQ r   $ 'VWV m   $ %XX �YY  W o      �d�d 0 personfname  �g  �f  O Z[Z r   , 3\]\ c   , 1^_^ l  , /`�c�b` n   , /aba 1   - /�a
�a 
azf8b o   , -�`�` 0 	personobj  �c  �b  _ m   / 0�_
�_ 
utxt] o      �^�^ 0 personlname  [ cdc Z   4 Aef�]�\e =  4 7ghg o   4 5�[�[ 0 personlname  h m   5 6ii �jj  m i s s i n g   v a l u ef r   : =klk m   : ;mm �nn  l o      �Z�Z 0 personlname  �]  �\  d opo r   B Iqrq c   B Gsts l  B Eu�Y�Xu n   B Evwv 1   C E�W
�W 
az38w o   B C�V�V 0 	personobj  �Y  �X  t m   E F�U
�U 
utxtr o      �T�T 0 personorganization  p x�Sx Z   J Wyz�R�Qy =  J M{|{ o   J K�P�P 0 personorganization  | m   K L}} �~~  m i s s i n g   v a l u ez r   P S� m   P Q�� ���  � o      �O�O 0 personorganization  �R  �Q  �S  7 m     ���                                                                                  adrb  alis    d  Danger Mouse               �h�'H+     Address Book.app                                                  !��        ����  	                Applications    �i�      �l�         *Danger Mouse:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    D a n g e r   M o u s e  Applications/Address Book.app   / ��  5 ��N� L   Y _�� J   Y ^�� ��� o   Y Z�M�M 0 personfname  � ��� o   Z [�L�L 0 personlname  � ��K� o   [ \�J�J 0 personorganization  �K  �N  . ��� l     �I�H�G�I  �H  �G  � ��� l     �F���F  � ; 5 I am asking the user to choose an Address Book Group   � ��� j   I   a m   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   A d d r e s s   B o o k   G r o u p� ��� l     �E���E  � R L I return a list containing the id and name of the chosen Address Book Group   � ��� �   I   r e t u r n   a   l i s t   c o n t a i n i n g   t h e   i d   a n d   n a m e   o f   t h e   c h o s e n   A d d r e s s   B o o k   G r o u p� ��� l     �D���D  � V P or missing value in case no groups are available or the user cancels the dialog   � ��� �   o r   m i s s i n g   v a l u e   i n   c a s e   n o   g r o u p s   a r e   a v a i l a b l e   o r   t h e   u s e r   c a n c e l s   t h e   d i a l o g� ��� i    ��� I      �C�B�A�C 0 chooseabgroup  �B  �A  � k    g�� ��� r     ��� n     ��� 1   	 �@
�@ 
psxp� l    	��?�>� b     	��� l    ��=�<� c     ��� l    ��;�:� I    �9��8
�9 .earsffdralis        afdr�  f     �8  �;  �:  � m    �7
�7 
utxt�=  �<  � m    �� ��� B C o n t e n t s : R e s o u r c e s : S c r i p t s : a b x . p y�?  �>  � o      �6�6 0 pyscriptpath  � ��� r    ��� b    ��� b    ��� m    �� ���   / u s r / b i n / p y t h o n  � n    ��� 1    �5
�5 
strq� o    �4�4 0 pyscriptpath  � m    �� ���    g e t g r o u p s� o      �3�3 0 command  � ��� l   �2�1�0�2  �1  �0  � ��� r    !��� n    ��� 2   �/
�/ 
cpar� l   ��.�-� I   �,��+
�, .sysoexecTEXT���     TEXT� o    �*�* 0 command  �+  �.  �-  � o      �)�) 0 
shelllines  � ��� Z   " ;���(�'� =  " &��� o   " #�&�& 0 
shelllines  � J   # %�%�%  � k   ) 7�� ��� r   ) ,��� m   ) *�� ��� b Y o u r   A d r e s s   B o o k   d o e s   n o t   c o n t a i n   a n y   g r o u p s   y e t .� o      �$�$ 
0 errmsg  � ��� n  - 4��� I   . 4�#��"�# 0 	dsperrmsg  � ��� o   . /�!�! 
0 errmsg  � �� � m   / 0�� ���  - -�   �"  �  f   - .� ��� L   5 7�� m   5 6�
� 
msng�  �(  �'  � ��� l  < <����  � C = the Python script returns tab delimited lines containing the   � ��� z   t h e   P y t h o n   s c r i p t   r e t u r n s   t a b   d e l i m i t e d   l i n e s   c o n t a i n i n g   t h e� ��� l  < <����  � 6 0 ids and names of the address book groups, e.g.:   � ��� `   i d s   a n d   n a m e s   o f   t h e   a d d r e s s   b o o k   g r o u p s ,   e . g . :� ��� l  < <����  � : 4 181C5BBB-FE2A-419F-AD6E-D2A92A678B66:ABGroup	Hotels   � ��� h   1 8 1 C 5 B B B - F E 2 A - 4 1 9 F - A D 6 E - D 2 A 9 2 A 6 7 8 B 6 6 : A B G r o u p 	 H o t e l s� ��� l  < <����  � ? 9 FF2EEE74-9F40-11D8-BC68-000A95971BFE:ABGroup	Restaurants   � ��� r   F F 2 E E E 7 4 - 9 F 4 0 - 1 1 D 8 - B C 6 8 - 0 0 0 A 9 5 9 7 1 B F E : A B G r o u p 	 R e s t a u r a n t s� ��� l  < <����  �   �   � ���    &� ��� r   < @��� J   < >��  � o      �� 0 abgroupnames  �    r   A E J   A C��   o      �� 0 
abgroupids    X   F �� k   V � 	
	 r   V _ n  V ] 1   Y ]�
� 
txdl 1   V Y�
� 
ascr o      �� 0 	olddelims  
  r   ` m J   ` e � 1   ` c�
� 
tab �   n      1   h l�
� 
txdl 1   e h�
� 
ascr  r   n � n   n s 2  o s�
� 
citm o   n o�� 0 shelline   J        o      �
�
 0 	abgroupid    �	  o      �� 0 abgroupname  �	   !"! r   � �#$# o   � ��� 0 	olddelims  $ n     %&% 1   � ��
� 
txdl& 1   � ��
� 
ascr" '(' r   � �)*) b   � �+,+ o   � ��� 0 
abgroupids  , o   � ��� 0 	abgroupid  * o      �� 0 
abgroupids  ( -�- r   � �./. b   � �010 o   � �� �  0 abgroupnames  1 o   � ����� 0 abgroupname  / o      ���� 0 abgroupnames  �  � 0 shelline   o   I J���� 0 
shelllines   232 l  � ���45��  4 ] W we have to number the address book group names, so that we can later choose/return the   5 �66 �   w e   h a v e   t o   n u m b e r   t h e   a d d r e s s   b o o k   g r o u p   n a m e s ,   s o   t h a t   w e   c a n   l a t e r   c h o o s e / r e t u r n   t h e3 787 l  � ���9:��  9 * $ corresponding address book group id   : �;; H   c o r r e s p o n d i n g   a d d r e s s   b o o k   g r o u p   i d8 <=< r   � �>?> J   � �����  ? o      ���� 0 	menuitems  = @A@ r   � �BCB m   � �����  C o      ���� 0 counter  A DED X   � �F��GF k   � �HH IJI r   � �KLK [   � �MNM o   � ����� 0 counter  N m   � ����� L o      ���� 0 counter  J OPO Z   � �QR��SQ A   � �TUT o   � ����� 0 counter  U m   � ����� 
R r   � �VWV c   � �XYX l  � �Z����Z b   � �[\[ m   � �]] �^^  0\ o   � ����� 0 counter  ��  ��  Y m   � ���
�� 
utxtW o      ���� 0 
strcounter  ��  S r   � �_`_ l  � �a����a c   � �bcb o   � ����� 0 counter  c m   � ���
�� 
utxt��  ��  ` o      ���� 0 
strcounter  P d��d r   � �efe b   � �ghg o   � ����� 0 	menuitems  h l  � �i����i b   � �jkj b   � �lml o   � ����� 0 
strcounter  m m   � �nn �oo   k o   � ����� 0 abgroupname  ��  ��  f o      ���� 0 	menuitems  ��  �� 0 abgroupname  G o   � ����� 0 abgroupnames  E pqp l  � ���rs��  r > 8 finally asking the user to choose an address book group   s �tt p   f i n a l l y   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   a d d r e s s   b o o k   g r o u pq uvu I  ���wx
�� .gtqpchltns    @   @ ns  w o   � ����� 0 	menuitems  x ��yz
�� 
prmpy m   � �{{ �|| H P l e a s e   c h o o s e   a n   A d d r e s s   B o o k   G r o u p :z ��}~
�� 
okbt} m   � � ���  S e l e c t~ ����
�� 
cnbt� m   � ��� ���  C a n c e l� ����
�� 
appr� o   ����� 0 mytitle  � ����
�� 
empL� m  
��
�� boovfals� �����
�� 
mlsl��  v ��� r  ��� 1  ��
�� 
rslt� o      ���� 0 	usrchoice  � ���� Z  g������ > ��� o  ���� 0 	usrchoice  � m  ��
�� boovfals� k  b�� ��� r  $��� l "������ n  "��� 4  "���
�� 
cobj� m   !���� � o  ���� 0 	usrchoice  ��  ��  � o      ���� 0 chosenmenuitem  � ��� r  %8��� I %6�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  ),�� ���   � �����
�� 
psin� o  /0���� 0 chosenmenuitem  ��  � o      ���� 0 spaceoffset  � ��� r  9P��� c  9L��� l 9H������ c  9H��� l 9F������ n  9F��� 7:F����
�� 
cha � m  @B���� � m  CE���� � o  9:���� 0 chosenmenuitem  ��  ��  � m  FG��
�� 
utxt��  ��  � m  HK��
�� 
long� o      ���� 0 idx  � ���� L  Qb�� J  Qa�� ��� n  QX��� 4  RW���
�� 
cobj� o  SV���� 0 idx  � o  QR���� 0 
abgroupids  � ���� n  X_��� 4  Y^���
�� 
cobj� o  Z]���� 0 idx  � o  XY���� 0 abgroupnames  ��  ��  ��  � L  eg�� m  ef��
�� 
msng��  � ��� l     ��������  ��  ��  � ��� l     ������  � o i I am returning a list containing the person ids and distribution list emails for a given address book id   � ��� �   I   a m   r e t u r n i n g   a   l i s t   c o n t a i n i n g   t h e   p e r s o n   i d s   a n d   d i s t r i b u t i o n   l i s t   e m a i l s   f o r   a   g i v e n   a d d r e s s   b o o k   i d� ��� i    ��� I      ������� 0 getdlistemails  � ���� o      ���� 0 	abgroupid  ��  ��  � k     ��� ��� r     ��� n     ��� 1   	 ��
�� 
psxp� l    	������ b     	��� l    ������ c     ��� l    ������ I    �����
�� .earsffdralis        afdr�  f     ��  ��  ��  � m    ��
�� 
utxt��  ��  � m    �� ��� B C o n t e n t s : R e s o u r c e s : S c r i p t s : a b x . p y��  ��  � o      ���� 0 pyscriptpath  � ��� r    ��� b    ��� b    ��� b    ��� m    �� ���   / u s r / b i n / p y t h o n  � n    ��� 1    ��
�� 
strq� o    ���� 0 pyscriptpath  � m    �� ���     g e t d l i s t e m a i l s  � n    ��� 1    ��
�� 
strq� o    ���� 0 	abgroupid  � o      ���� 0 command  � ��� l   ��������  ��  ��  � ��� r    %��� n    #��� 2  ! #��
�� 
cpar� l   !������ I   !�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 command  ��  ��  ��  � o      ���� 0 
shelllines  � ��� Z   & ?������� =  & *� � o   & '���� 0 
shelllines    J   ' )����  � k   - ;  r   - 0 m   - . � v T h e   c h o s e n   A d d r e s s   B o o k   G r o u p   d o e s   n o t   c o n t a i n   a n y   m e m b e r s . o      ���� 
0 errmsg   	 n  1 8

 I   2 8������ 0 	dsperrmsg    o   2 3���� 
0 errmsg   �� m   3 4 �  - -��  ��    f   1 2	 � L   9 ; m   9 :�~
�~ 
msng�  ��  ��  �  l  @ @�}�|�{�}  �|  �{    r   @ D J   @ B�z�z   o      �y�y 0 	personids    r   E I J   E G�x�x   o      �w�w 0 dlistemails    l  J J�v�u�t�v  �u  �t    !  X   J �"�s#" k   Z �$$ %&% r   Z c'(' n  Z a)*) 1   ] a�r
�r 
txdl* 1   Z ]�q
�q 
ascr( o      �p�p 0 	olddelims  & +,+ r   d q-.- J   d i// 0�o0 1   d g�n
�n 
tab �o  . n     121 1   l p�m
�m 
txdl2 1   i l�l
�l 
ascr, 343 r   r �565 n   r w787 2  s w�k
�k 
citm8 o   r s�j�j 0 shelline  6 J      99 :;: o      �i�i 0 personid  ; <�h< o      �g�g 0 
dlistemail  �h  4 =>= r   � �?@? o   � ��f�f 0 	olddelims  @ n     ABA 1   � ��e
�e 
txdlB 1   � ��d
�d 
ascr> CDC r   � �EFE b   � �GHG o   � ��c�c 0 	personids  H o   � ��b�b 0 personid  F o      �a�a 0 	personids  D I�`I r   � �JKJ b   � �LML o   � ��_�_ 0 dlistemails  M o   � ��^�^ 0 
dlistemail  K o      �]�] 0 dlistemails  �`  �s 0 shelline  # o   M N�\�\ 0 
shelllines  ! NON l  � ��[�Z�Y�[  �Z  �Y  O P�XP L   � �QQ J   � �RR STS o   � ��W�W 0 	personids  T U�VU o   � ��U�U 0 dlistemails  �V  �X  � VWV l     �T�S�R�T  �S  �R  W XYX l     �QZ[�Q  Z 1 + I am displaying error messages to the user   [ �\\ V   I   a m   d i s p l a y i n g   e r r o r   m e s s a g e s   t o   t h e   u s e rY ]�P] i    ^_^ I      �O`�N�O 0 	dsperrmsg  ` aba o      �M�M 
0 errmsg  b c�Lc o      �K�K 
0 errnum  �L  �N  _ O     .ded k    -ff ghg I   	�J�I�H
�J .miscactvnull��� ��� null�I  �H  h i�Gi I  
 -�Fjk
�F .sysodlogaskr        TEXTj b   
 lml b   
 non b   
 pqp b   
 rsr b   
 tut b   
 vwv b   
 xyx m   
 zz �{{ 0 S o r r y ,   a n   e r r o r   o c c u r e d :y o    �E
�E 
ret w o    �D
�D 
ret u o    �C�C 
0 errmsg  s o    �B
�B 
ret q m    || �}}  (o o    �A�A 
0 errnum  m m    ~~ �  )k �@��
�@ 
btns� J    �� ��?� m    �� ���  O K�?  � �>��
�> 
dflt� m    �=�= � �<��
�< 
disp� m     !�;
�; stic    � �:��
�: 
givu� m   " #�9�9 � �8��7
�8 
appr� o   $ )�6�6 0 mytitle  �7  �G  e  f     �P       �5� C������������4������3�2�1�0�/�.�5  � �-�,�+�*�)�(�'�&�%�$�#�"�!� �����������- 0 mytitle  
�, .aevtoappnull  �   � ****�+ 0 getpersondata  �* 0 chooseabgroup  �) 0 getdlistemails  �( 0 	dsperrmsg  �' 0 chosenabgrouprecord  �& 0 	abgroupid  �% 0 abgroupname  �$ 0 dlistrecord  �# 0 	personids  �" 0 dlistemails  �! 0 countpersonids  �  0 personid  � 0 
dlistemail  � 0 personfname  � 0 personlname  � 0 personorganization  �  �  �  �  �  �  � � O�����
� .aevtoappnull  �   � ****�  �  � ���� 0 i  � 
0 errmsg  � 
0 errnum  � �����
�	��������� ������������	������������ 0 chooseabgroup  � 0 chosenabgrouprecord  
� 
msng
� 
cobj�
 0 	abgroupid  �	 0 abgroupname  � 0 getdlistemails  � 0 dlistrecord  � 0 	personids  � 0 dlistemails  
� 
leng� 0 countpersonids  � 0 personid  � 0 
dlistemail  �  0 getpersondata  �� 0 personfname  �� 0 personlname  �� 0 personorganization  
�� .miscactvnull��� ��� null
�� 
ret 
�� 
spac
�� 
appr
�� .sysodlogaskr        TEXT�� 
0 errmsg  � ������
�� 
errn�� 
0 errnum  ��  ������ 0 	dsperrmsg  � � �)j+  E�O��  hY hO��k/E�O��l/E�O)�k+ E�O��  hY hO��k/E�O��l/E�O��,E�O �k�kh  ��/E�O��/E�O)�k+ E[�k/E�Z[�l/E` Z[�m/E` ZO) A*j Oa �%_ %a %�%_ %_ %_ %a %_ %_ %a %�%a b   l U[OY��OPW X  �a  )��l+ Y h� ��0���������� 0 getpersondata  �� ����� �  ���� 0 personid  ��  � ������������ 0 personid  �� 0 	personobj  �� 0 personfname  �� 0 personlname  �� 0 personorganization  � ������������TX��im��}�
�� 
azf4�  
�� 
ID  
�� 
cobj
�� 
azf7
�� 
utxt
�� 
azf8
�� 
az38�� `� U*�-�[�,\Z�81�k/E�O��,�&E�O��  �E�Y hO��,�&E�O��  �E�Y hO��,�&E�O��  �E�Y hUO���mv� ������������� 0 chooseabgroup  ��  ��  � ������������������������������������ 0 pyscriptpath  �� 0 command  �� 0 
shelllines  �� 
0 errmsg  �� 0 abgroupnames  �� 0 
abgroupids  �� 0 shelline  �� 0 	olddelims  �� 0 	abgroupid  �� 0 abgroupname  �� 0 	menuitems  �� 0 counter  �� 0 
strcounter  �� 0 	usrchoice  �� 0 chosenmenuitem  �� 0 spaceoffset  �� 0 idx  � *�������������������������������������]n��{������������������������������
�� .earsffdralis        afdr
�� 
utxt
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
cpar�� 0 	dsperrmsg  
�� 
msng
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ascr
�� 
txdl
�� 
tab 
�� 
citm�� 

�� 
prmp
�� 
okbt
�� 
cnbt
�� 
appr
�� 
empL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
long��h)j  �&�%�,E�O��,%�%E�O�j �-E�O�jv  �E�O)��l+ O�Y hOjvE�OjvE�O V�[��l kh _ a ,E�O_ kv_ a ,FO�a -E[�k/E�Z[�l/E�ZO�_ a ,FO��%E�O��%E�[OY��OjvE�OjE�O ?�[��l kh 	�kE�O�a  a �%�&E�Y ��&E�O��a %�%%E�[OY��O�a a a a a a a b   a fa fa   !O_ "E�O�f I��k/E�O*a #a $a %�a & 'E�O�[a (\[Zk\Zl2�&a )&E^ O��] /E��] /ElvY �� ������������� 0 getdlistemails  �� ����� �  ���� 0 	abgroupid  ��  � ������������������������ 0 	abgroupid  �� 0 pyscriptpath  �� 0 command  �� 0 
shelllines  �� 
0 errmsg  �� 0 	personids  �� 0 dlistemails  �� 0 shelline  �� 0 	olddelims  �� 0 personid  �� 0 
dlistemail  � ���������������������������������
�� .earsffdralis        afdr
�� 
utxt
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
cpar�� 0 	dsperrmsg  
�� 
msng
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ascr
�� 
txdl
�� 
tab 
�� 
citm�� �)j  �&�%�,E�O��,%�%��,%E�O�j �-E�O�jv  �E�O)��l+ O�Y hOjvE�OjvE�O V�[��l kh _ a ,E�O_ kv_ a ,FO�a -E[�k/E�Z[�l/E�ZO�_ a ,FO��%E�O��%E�[OY��O��lv� ��_���������� 0 	dsperrmsg  �� ����� �  ������ 
0 errmsg  �� 
0 errnum  ��  � ������ 
0 errmsg  �� 
0 errnum  � ��z��|~�����~�}�|�{�z�y�x
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
� 
dflt
�~ 
disp
�} stic    
�| 
givu�{ 
�z 
appr�y 

�x .sysodlogaskr        TEXT�� /) +*j  O��%�%�%�%�%�%�%��kv�k�����b   � U� �w��w �  ��� ��� X C E 2 4 B 9 6 9 - 3 3 6 F - 4 B B 8 - 9 3 6 3 - 1 B 4 C E B E B B 5 D D : A B G r o u p� ���  M a c f a n s� �v��v �  ��� �u��u �  ������������� ��� Z D 5 5 6 4 1 F B - B B A 1 - 4 B 3 4 - B B A 2 - 6 9 A 1 F 6 3 9 2 2 B 6 : A B P e r s o n� ��� Z 1 9 B F D 9 2 0 - F D E 8 - 4 D B B - 8 0 B C - 9 F E F 7 0 F 4 C A 6 D : A B P e r s o n� ��� Z 5 F 4 B C D D 3 - 9 B 7 6 - 4 F D 2 - B 8 D E - 5 5 1 5 F F 6 D 2 C 3 C : A B P e r s o n� ��� Z 6 8 F 0 3 C 1 2 - 6 3 F C - 4 F 0 5 - B F 2 C - 9 5 F A 1 3 F D D F 7 0 : A B P e r s o n� ��� Z A D 1 A D 6 6 9 - 6 D D C - 4 0 4 E - 8 A D 4 - 3 2 9 B 9 7 7 7 D 4 D 2 : A B P e r s o n� ��� Z 9 F 5 C 7 E E 7 - 8 2 2 3 - 4 9 E 8 - A 0 0 8 - E C 2 0 7 6 8 3 C B 4 3 : A B P e r s o n� ��� Z 7 7 E E B B 7 E - D C 3 1 - 4 B D 2 - 8 E 0 8 - 6 8 8 3 A 0 A 6 D B E F : A B P e r s o n� ��� Z F 6 9 3 9 B 0 0 - B 1 8 D - 4 9 E 6 - A 8 0 5 - 1 7 0 C 1 1 3 5 C 5 C A : A B P e r s o n� ��� Z D 9 F A 0 D 5 9 - 2 5 D 1 - 4 3 4 7 - 8 4 C F - 5 1 0 8 7 4 B E 6 F 9 8 : A B P e r s o n� ��� Z C A 5 7 8 9 9 C - A 2 8 D - 4 9 A F - 8 4 5 A - B 3 8 B 1 F 8 4 D 1 1 7 : A B P e r s o n� ��� Z 3 7 D 2 B E 1 2 - 9 4 6 9 - 4 A A 8 - B 0 3 2 - 5 9 D C 2 9 E 4 0 7 4 0 : A B P e r s o n� ��� Z E A F 4 3 0 F F - 0 5 9 C - 4 2 8 9 - 8 D A E - 0 0 6 8 F B 5 7 5 7 E D : A B P e r s o n� �t��t �  ������������� ��� . c r o s b i e c l a n @ c o m c a s t . n e t� ��� ( c h u g h _ y o g i @ y a h o o . c o m� ��� ( k s w e s t r a @ c o m c a s t . n e t� ��� 2 p a n g e l i d e s 2 @ s b c g l o b a l . n e t� ��� $ a n n a t m u h @ y a h o o . c o m� ��� 4 g e n a n g e l i d e s @ s b c g l o b a l . n e t� ��� $ l m y o r k @ c o m c a s t . n e t� ��� ( p h e r n d o n f u s d @ a o l . c o m� ��� . m e r y l s h a t z m a n @ y a h o o . c o m� ��� * c g e b h a r d t @ c o m c a s t . n e t� ��� 0 b r y a n . g e b h a r d t @ g m a i l . c o m� ��� ( m o i n a s h a i q @ g m a i l . c o m�4 � ��� 
 P e t e r� ���  A n g e l i d e s�3  �2  �1  �0  �/  �.   ascr  ��ޭ