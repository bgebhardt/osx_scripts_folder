FasdUAS 1.101.10   ��   ��    k             l     ��  ��    + % updated on 9/12/10 by Bryan Gebhardt     � 	 	 J   u p d a t e d   o n   9 / 1 2 / 1 0   b y   B r y a n   G e b h a r d t   
  
 l     ��  ��    ? 9 will return the emails of the selected addressbook group     �   r   w i l l   r e t u r n   t h e   e m a i l s   o f   t h e   s e l e c t e d   a d d r e s s b o o k   g r o u p      l     ��������  ��  ��        l     ��  ��    %  TODO: clean up returned string     �   >   T O D O :   c l e a n   u p   r e t u r n e d   s t r i n g      l     ��  ��    , & TODO: rework the path to script lines     �   L   T O D O :   r e w o r k   t h e   p a t h   t o   s c r i p t   l i n e s      l     ��������  ��  ��        l     ��   ��      author: Martin Michel      � ! ! ,   a u t h o r :   M a r t i n   M i c h e l   " # " l     �� $ %��   $   created: 02.08.2008    % � & & (   c r e a t e d :   0 2 . 0 8 . 2 0 0 8 #  ' ( ' l     �� ) *��   )  
 required:    * � + +    r e q u i r e d : (  , - , l     �� . /��   .   � Mac OS X 10.5 Leopard    / � 0 0 0   "   M a c   O S   X   1 0 . 5   L e o p a r d -  1 2 1 l     �� 3 4��   3   tested on:    4 � 5 5    t e s t e d   o n : 2  6 7 6 l     �� 8 9��   8 &   � Intel- and PowerPC-based Macs    9 � : : @   "   I n t e l -   a n d   P o w e r P C - b a s e d   M a c s 7  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ? t n This AppleScript let's you choose an Address Book Group and then displays the email address for every person,    @ � A A �   T h i s   A p p l e S c r i p t   l e t ' s   y o u   c h o o s e   a n   A d d r e s s   B o o k   G r o u p   a n d   t h e n   d i s p l a y s   t h e   e m a i l   a d d r e s s   f o r   e v e r y   p e r s o n , >  B C B l     �� D E��   D m g which is used when the person is contacted through the chosen group (distribution list email address).    E � F F �   w h i c h   i s   u s e d   w h e n   t h e   p e r s o n   i s   c o n t a c t e d   t h r o u g h   t h e   c h o s e n   g r o u p   ( d i s t r i b u t i o n   l i s t   e m a i l   a d d r e s s ) . C  G H G l     �� I J��   I m g As AppleScript itself cannot access this information, a Python script utilizing the PyObjC AddressBook    J � K K �   A s   A p p l e S c r i p t   i t s e l f   c a n n o t   a c c e s s   t h i s   i n f o r m a t i o n ,   a   P y t h o n   s c r i p t   u t i l i z i n g   t h e   P y O b j C   A d d r e s s B o o k H  L M L l     �� N O��   N , & framework is used as a helper script.    O � P P L   f r a m e w o r k   i s   u s e d   a s   a   h e l p e r   s c r i p t . M  Q R Q l     �� S T��   S V P The script can come in handy when you want to create a custom serial mailing :)    T � U U �   T h e   s c r i p t   c a n   c o m e   i n   h a n d y   w h e n   y o u   w a n t   t o   c r e a t e   a   c u s t o m   s e r i a l   m a i l i n g   : ) R  V W V l     ��������  ��  ��   W  X Y X j     �� Z�� 0 mytitle   Z m      [ [ � \ \ L A B G   D i s t r i b u t i o n   L i s t   E m a i l s   L a u n c h b a r Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ j    �� a�� &0 runinscripteditor runInScriptEditor a m    ��
�� boovfals `  b c b j    �� d�� 0 override_pyscriptpath   d m     e e � f f � / U s e r s / b l u r e m p l o y e e / D o w n l o a d s / C h r o m e / A B G   D i s t r i b u t i o n   L i s t   E m a i l s   c o p y . a p p / C o n t e n t s / R e s o u r c e s / S c r i p t s / a b x . p y c  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k #  pass in string name of group    l � m m :   p a s s   i n   s t r i n g   n a m e   o f   g r o u p j  n o n l     �� p q��   p   works for LaunchBar    q � r r (   w o r k s   f o r   L a u n c h B a r o  s t s i   	  u v u I      �� w���� 0 handle_string   w  x�� x o      ���� 0 	thestring 	theString��  ��   v n     y z y I    �� {���� 0 runme runMe {  |�� | o    ���� 0 	thestring 	theString��  ��   z  f      t  } ~ } l     ��������  ��  ��   ~   �  i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k      � �  � � � l     �� � ���   �   tests    � � � �    t e s t s �  � � � l     �� � ���   �  lookupabgroup("")    � � � � " l o o k u p a b g r o u p ( " " ) �  � � � l     �� � ���   � 0 *lookupabgroup("Parcel Tax 2010 Exec Comm")    � � � � T l o o k u p a b g r o u p ( " P a r c e l   T a x   2 0 1 0   E x e c   C o m m " ) �  � � � l     �� � ���   � 3 -my handle_string("Parcel Tax 2010 Exec Comm")    � � � � Z m y   h a n d l e _ s t r i n g ( " P a r c e l   T a x   2 0 1 0   E x e c   C o m m " ) �  � � � l     ��������  ��  ��   �  ��� � n     � � � I    �� ����� 0 runme runMe �  ��� � m     � � � � �  ��  ��   �  f     ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � D > I am called when the user opens the script with a doubleclick    � � � � |   I   a m   c a l l e d   w h e n   t h e   u s e r   o p e n s   t h e   s c r i p t   w i t h   a   d o u b l e c l i c k �  � � � i     � � � I      �� ����� 0 runme runMe �  ��� � o      ���� 0 thegroup theGroup��  ��   � Q     � � � � � k    � � �  � � � l   �� � ���   � L F if no group passed in asking the user to choose an address book group    � � � � �   i f   n o   g r o u p   p a s s e d   i n   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   a d d r e s s   b o o k   g r o u p �  � � � Z     � ��� � � =    � � � o    ���� 0 thegroup theGroup � m     � � � � �   � r   	  � � � n  	  � � � I   
 �������� 0 chooseabgroup  ��  ��   �  f   	 
 � o      ���� 0 chosenabgrouprecord  ��   � l    � � � � r     � � � n    � � � I    �� ����� 0 lookupabgroup   �  ��� � o    ���� 0 thegroup theGroup��  ��   �  f     � o      ���� 0 chosenabgrouprecord   �   lookup the group    � � � � "   l o o k u p   t h e   g r o u p �  � � � l   �� � ���   � 7 1 no address book groups availabe or user canceled    � � � � b   n o   a d d r e s s   b o o k   g r o u p s   a v a i l a b e   o r   u s e r   c a n c e l e d �  � � � Z    ( � ����� � =    � � � o    ���� 0 chosenabgrouprecord   � m    ��
�� 
msng � L   " $����  ��  ��   �  � � � l  ) )�� � ���   � + % unique id of the chosen address book    � � � � J   u n i q u e   i d   o f   t h e   c h o s e n   a d d r e s s   b o o k �  � � � r   ) / � � � n   ) - � � � 4   * -�� �
�� 
cobj � m   + ,����  � o   ) *���� 0 chosenabgrouprecord   � o      ���� 0 	abgroupid   �  � � � l  0 0�� � ���   � &   name of the chosen address book    � � � � @   n a m e   o f   t h e   c h o s e n   a d d r e s s   b o o k �  � � � r   0 6 � � � n   0 4 � � � 4   1 4�� �
�� 
cobj � m   2 3����  � o   0 1���� 0 chosenabgrouprecord   � o      ���� 0 abgroupname   �  � � � l  7 7�� � ���   � K E getting the distribution list emails of the chosen adress book group    � � � � �   g e t t i n g   t h e   d i s t r i b u t i o n   l i s t   e m a i l s   o f   t h e   c h o s e n   a d r e s s   b o o k   g r o u p �  � � � r   7 ? � � � n  7 = � � � I   8 =�� ����� 0 getdlistemails   �  ��� � o   8 9���� 0 	abgroupid  ��  ��   �  f   7 8 � o      ���� 0 dlistrecord   �  � � � l  @ @�� ��    6 0 no members available in this address book group    � `   n o   m e m b e r s   a v a i l a b l e   i n   t h i s   a d d r e s s   b o o k   g r o u p �  Z   @ L���� =  @ C o   @ A���� 0 dlistrecord   m   A B��
�� 
msng L   F H����  ��  ��   	
	 l  M M����   %  unique id of the member/person    � >   u n i q u e   i d   o f   t h e   m e m b e r / p e r s o n
  r   M S n   M Q 4   N Q��
�� 
cobj m   O P����  o   M N���� 0 dlistrecord   o      ���� 0 	personids    l  T T����   T N email address used when contacting the person/member through the chosen group    � �   e m a i l   a d d r e s s   u s e d   w h e n   c o n t a c t i n g   t h e   p e r s o n / m e m b e r   t h r o u g h   t h e   c h o s e n   g r o u p  r   T Z n   T X 4   U X�� 
�� 
cobj  m   V W����  o   T U���� 0 dlistrecord   o      ���� 0 dlistemails   !"! r   [ `#$# n   [ ^%&% 1   \ ^��
�� 
leng& o   [ \���� 0 	personids  $ o      ���� 0 countpersonids  " '(' l  a a�������  ��  �  ( )*) r   a d+,+ m   a b-- �..  , o      �~�~ *0 dlistemailsasstring dlistEmailsAsString* /0/ l  e e�}12�}  1 &   put the emails on the clipboard   2 �33 @   p u t   t h e   e m a i l s   o n   t h e   c l i p b o a r d0 454 l  e e�|67�|  6 R L this is just a demo that displays the found distribution list email address   7 �88 �   t h i s   i s   j u s t   a   d e m o   t h a t   d i s p l a y s   t h e   f o u n d   d i s t r i b u t i o n   l i s t   e m a i l   a d d r e s s5 9:9 l  e e�{;<�{  ; + % for all contacts in the chosen group   < �== J   f o r   a l l   c o n t a c t s   i n   t h e   c h o s e n   g r o u p: >?> Y   e �@�zAB�y@ k   o �CC DED r   o uFGF n   o sHIH 4   p s�xJ
�x 
cobjJ o   q r�w�w 0 i  I o   o p�v�v 0 	personids  G o      �u�u 0 personid  E KLK r   v |MNM n   v zOPO 4   w z�tQ
�t 
cobjQ o   x y�s�s 0 i  P o   v w�r�r 0 dlistemails  N o      �q�q 0 
dlistemail  L RSR r   } �TUT b   } �VWV b   } �XYX o   } ~�p�p *0 dlistemailsasstring dlistEmailsAsStringY m   ~ ZZ �[[  ,  W o   � ��o�o 0 
dlistemail  U o      �n�n *0 dlistemailsasstring dlistEmailsAsStringS \]\ l  � ��m^_�m  ^ W Q set {personfname, personlname, personorganization} to my getpersondata(personid)   _ �`` �   s e t   { p e r s o n f n a m e ,   p e r s o n l n a m e ,   p e r s o n o r g a n i z a t i o n }   t o   m y   g e t p e r s o n d a t a ( p e r s o n i d )] a�la O   � �bcb k   � �dd efe l  � ��kgh�k  g  				activate   h �ii  	 	 	 	 a c t i v a t ef j�jj l  � ��ikl�i  k � �				display dialog "AB Group: " & abgroupname & return & "Member: " & personfname & space & personlname & return & "Company: " & personorganization & return & "Email: " & dlistemail with title mytitle   l �mm� 	 	 	 	 d i s p l a y   d i a l o g   " A B   G r o u p :   "   &   a b g r o u p n a m e   &   r e t u r n   &   " M e m b e r :   "   &   p e r s o n f n a m e   &   s p a c e   &   p e r s o n l n a m e   &   r e t u r n   &   " C o m p a n y :   "   &   p e r s o n o r g a n i z a t i o n   &   r e t u r n   &   " E m a i l :   "   &   d l i s t e m a i l   w i t h   t i t l e   m y t i t l e�j  c  f   � ��l  �z 0 i  A m   h i�h�h B o   i j�g�g 0 countpersonids  �y  ? non I  � ��fp�e
�f .JonspClpnull���     ****p o   � ��d�d *0 dlistemailsasstring dlistEmailsAsString�e  o q�cq l  � ��brs�b  r !  catching unexpected errors   s �tt 6   c a t c h i n g   u n e x p e c t e d   e r r o r s�c   � R      �auv
�a .ascrerr ****      � ****u o      �`�` 
0 errmsg  v �_w�^
�_ 
errnw o      �]�] 
0 errnum  �^   � k   � �xx yzy l  � ��\{|�\  { %  ignoring 'User canceled'-error   | �}} >   i g n o r i n g   ' U s e r   c a n c e l e d ' - e r r o rz ~�[~ Z   � ���Z�Y >  � ���� o   � ��X�X 
0 errnum  � m   � ��W�W��� n  � ���� I   � ��V��U�V 0 	dsperrmsg  � ��� o   � ��T�T 
0 errmsg  � ��S� o   � ��R�R 
0 errnum  �S  �U  �  f   � ��Z  �Y  �[   � ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N���N  � s m I am returning a list containing the person's first name, last name and organization for the given person id   � ��� �   I   a m   r e t u r n i n g   a   l i s t   c o n t a i n i n g   t h e   p e r s o n ' s   f i r s t   n a m e ,   l a s t   n a m e   a n d   o r g a n i z a t i o n   f o r   t h e   g i v e n   p e r s o n   i d� ��� i    ��� I      �M��L�M 0 getpersondata  � ��K� o      �J�J 0 personid  �K  �L  � k     _�� ��� O     X��� k    W�� ��� r    ��� n    ��� 4    �I�
�I 
cobj� m    �H�H � l   ��G�F� 6   ��� 2    �E
�E 
azf4� =   ��� 1   	 �D
�D 
ID  � o    �C�C 0 personid  �G  �F  � o      �B�B 0 	personobj  � ��� r    ��� c    ��� l   ��A�@� n    ��� 1    �?
�? 
azf7� o    �>�> 0 	personobj  �A  �@  � m    �=
�= 
utxt� o      �<�< 0 personfname  � ��� Z    +���;�:� =   !��� o    �9�9 0 personfname  � m     �� ���  m i s s i n g   v a l u e� r   $ '��� m   $ %�� ���  � o      �8�8 0 personfname  �;  �:  � ��� r   , 3��� c   , 1��� l  , /��7�6� n   , /��� 1   - /�5
�5 
azf8� o   , -�4�4 0 	personobj  �7  �6  � m   / 0�3
�3 
utxt� o      �2�2 0 personlname  � ��� Z   4 A���1�0� =  4 7��� o   4 5�/�/ 0 personlname  � m   5 6�� ���  m i s s i n g   v a l u e� r   : =��� m   : ;�� ���  � o      �.�. 0 personlname  �1  �0  � ��� r   B I��� c   B G��� l  B E��-�,� n   B E��� 1   C E�+
�+ 
az38� o   B C�*�* 0 	personobj  �-  �,  � m   E F�)
�) 
utxt� o      �(�( 0 personorganization  � ��'� Z   J W���&�%� =  J M��� o   J K�$�$ 0 personorganization  � m   K L�� ���  m i s s i n g   v a l u e� r   P S��� m   P Q�� ���  � o      �#�# 0 personorganization  �&  �%  �'  � m     ���                                                                                  adrb  alis    d  Danger Mouse               �h�'H+     Address Book.app                                                  !��        ����  	                Applications    �i�      �l�         *Danger Mouse:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    D a n g e r   M o u s e  Applications/Address Book.app   / ��  � ��"� L   Y _�� J   Y ^�� ��� o   Y Z�!�! 0 personfname  � ��� o   Z [� �  0 personlname  � ��� o   [ \�� 0 personorganization  �  �"  � ��� l     ����  �  �  � ��� l     ����  � ; 5 I am asking the user to choose an Address Book Group   � ��� j   I   a m   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   A d d r e s s   B o o k   G r o u p� ��� l     ����  � R L I return a list containing the id and name of the chosen Address Book Group   � ��� �   I   r e t u r n   a   l i s t   c o n t a i n i n g   t h e   i d   a n d   n a m e   o f   t h e   c h o s e n   A d d r e s s   B o o k   G r o u p� ��� l     ����  � 7 1 or missing value in case no groups are available   � ��� b   o r   m i s s i n g   v a l u e   i n   c a s e   n o   g r o u p s   a r e   a v a i l a b l e�    i     I      ���� 0 chooseabgroup  �  �   k    {  Z     !�	 =    

 o     �� &0 runinscripteditor runInScriptEditor m    �
� boovfals r   
  n   
  1    �
� 
psxp l  
 �� b   
  l  
 �� c   
  l  
 �� I  
 �
�	
�
 .earsffdralis        afdr  f   
 �	  �  �   m    �
� 
utxt�  �   m     � B C o n t e n t s : R e s o u r c e s : S c r i p t s : a b x . p y�  �   o      �� 0 pyscriptpath  �  	 r    ! o    �� 0 override_pyscriptpath   o      �� 0 pyscriptpath    l  " "����  �  �    r   " + !  b   " )"#" b   " '$%$ m   " #&& �''   / u s r / b i n / p y t h o n  % n   # &()( 1   $ &�
� 
strq) o   # $� �  0 pyscriptpath  # m   ' (** �++    g e t g r o u p s! o      ���� 0 command   ,-, l  , ,��������  ��  ��  - ./. r   , 5010 n   , 3232 2  1 3��
�� 
cpar3 l  , 14����4 I  , 1��5��
�� .sysoexecTEXT���     TEXT5 o   , -���� 0 command  ��  ��  ��  1 o      ���� 0 
shelllines  / 676 Z   6 O89����8 =  6 ::;: o   6 7���� 0 
shelllines  ; J   7 9����  9 k   = K<< =>= r   = @?@? m   = >AA �BB b Y o u r   A d r e s s   B o o k   d o e s   n o t   c o n t a i n   a n y   g r o u p s   y e t .@ o      ���� 
0 errmsg  > CDC n  A HEFE I   B H��G���� 0 	dsperrmsg  G HIH o   B C���� 
0 errmsg  I J��J m   C DKK �LL  - -��  ��  F  f   A BD M��M L   I KNN m   I J��
�� 
msng��  ��  ��  7 OPO l  P P��QR��  Q C = the Python script returns tab delimited lines containing the   R �SS z   t h e   P y t h o n   s c r i p t   r e t u r n s   t a b   d e l i m i t e d   l i n e s   c o n t a i n i n g   t h eP TUT l  P P��VW��  V 6 0 ids and names of the address book groups, e.g.:   W �XX `   i d s   a n d   n a m e s   o f   t h e   a d d r e s s   b o o k   g r o u p s ,   e . g . :U YZY l  P P��[\��  [ : 4 181C5BBB-FE2A-419F-AD6E-D2A92A678B66:ABGroup	Hotels   \ �]] h   1 8 1 C 5 B B B - F E 2 A - 4 1 9 F - A D 6 E - D 2 A 9 2 A 6 7 8 B 6 6 : A B G r o u p 	 H o t e l sZ ^_^ l  P P��`a��  ` ? 9 FF2EEE74-9F40-11D8-BC68-000A95971BFE:ABGroup	Restaurants   a �bb r   F F 2 E E E 7 4 - 9 F 4 0 - 1 1 D 8 - B C 6 8 - 0 0 0 A 9 5 9 7 1 B F E : A B G r o u p 	 R e s t a u r a n t s_ cdc l  P P��ef��  e   �   f �gg    &d hih r   P Tjkj J   P R����  k o      ���� 0 abgroupnames  i lml r   U Ynon J   U W����  o o      ���� 0 
abgroupids  m pqp X   Z �r��sr k   j �tt uvu r   j swxw n  j qyzy 1   m q��
�� 
txdlz 1   j m��
�� 
ascrx o      ���� 0 	olddelims  v {|{ r   t �}~} J   t y ���� 1   t w��
�� 
tab ��  ~ n     ��� 1   | ���
�� 
txdl� 1   y |��
�� 
ascr| ��� r   � ���� n   � ���� 2  � ���
�� 
citm� o   � ����� 0 shelline  � J      �� ��� o      ���� 0 	abgroupid  � ���� o      ���� 0 abgroupname  ��  � ��� r   � ���� o   � ����� 0 	olddelims  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� b   � ���� o   � ����� 0 
abgroupids  � o   � ����� 0 	abgroupid  � o      ���� 0 
abgroupids  � ���� r   � ���� b   � ���� o   � ����� 0 abgroupnames  � o   � ����� 0 abgroupname  � o      ���� 0 abgroupnames  ��  �� 0 shelline  s o   ] ^���� 0 
shelllines  q ��� l  � �������  � ] W we have to number the address book group names, so that we can later choose/return the   � ��� �   w e   h a v e   t o   n u m b e r   t h e   a d d r e s s   b o o k   g r o u p   n a m e s ,   s o   t h a t   w e   c a n   l a t e r   c h o o s e / r e t u r n   t h e� ��� l  � �������  � * $ corresponding address book group id   � ��� H   c o r r e s p o n d i n g   a d d r e s s   b o o k   g r o u p   i d� ��� r   � ���� J   � �����  � o      ���� 0 	menuitems  � ��� r   � ���� m   � �����  � o      ���� 0 counter  � ��� X   � ������ k   � ��� ��� r   � ���� [   � ���� o   � ����� 0 counter  � m   � ����� � o      ���� 0 counter  � ��� Z   � ������� A   � ���� o   � ����� 0 counter  � m   � ����� 
� r   � ���� c   � ���� l  � ������� b   � ���� m   � ��� ���  0� o   � ����� 0 counter  ��  ��  � m   � ���
�� 
utxt� o      ���� 0 
strcounter  ��  � r   � ���� l  � ������� c   � ���� o   � ����� 0 counter  � m   � ���
�� 
utxt��  ��  � o      ���� 0 
strcounter  � ���� r   � ���� b   � ���� o   � ����� 0 	menuitems  � l  � ������� b   � ���� b   � ���� o   � ����� 0 
strcounter  � m   � ��� ���   � o   � ����� 0 abgroupname  ��  ��  � o      ���� 0 	menuitems  ��  �� 0 abgroupname  � o   � ����� 0 abgroupnames  � ��� l  � �������  � > 8 finally asking the user to choose an address book group   � ��� p   f i n a l l y   a s k i n g   t h e   u s e r   t o   c h o o s e   a n   a d d r e s s   b o o k   g r o u p� ��� I  �%����
�� .gtqpchltns    @   @ ns  � o   � ����� 0 	menuitems  � ����
�� 
prmp� m   �� ��� H P l e a s e   c h o o s e   a n   A d d r e s s   B o o k   G r o u p :� ����
�� 
okbt� m  	�� ���  S e l e c t� ����
�� 
cnbt� m  �� ���  C a n c e l� ����
�� 
appr� o  ���� 0 mytitle  � ����
�� 
empL� m  ��
�� boovfals� �����
�� 
mlsl��  � ��� r  &+��� 1  &)��
�� 
rslt� o      ���� 0 	usrchoice  � ���� Z  ,{������ > ,/��� o  ,-���� 0 	usrchoice  � m  -.��
�� boovfals� k  2v��    r  28 l 26���� n  26 4  36��
�� 
cobj m  45����  o  23���� 0 	usrchoice  ��  ��   o      ���� 0 chosenmenuitem   	 r  9L

 I 9J����
�� .sysooffslong    ��� null��   ��
�� 
psof m  =@ �    ����
�� 
psin o  CD���� 0 chosenmenuitem  ��   o      ���� 0 spaceoffset  	  r  Md c  M` l M\���� c  M\ l MZ���� n  MZ 7NZ��
�� 
cha  m  TV����  m  WY����  o  MN���� 0 chosenmenuitem  ��  ��   m  Z[��
�� 
utxt��  ��   m  \_��
�� 
long o      ���� 0 idx    �  L  ev!! J  eu"" #$# n  el%&% 4  fk�~'
�~ 
cobj' o  gj�}�} 0 idx  & o  ef�|�| 0 
abgroupids  $ (�{( n  ls)*) 4  mr�z+
�z 
cobj+ o  nq�y�y 0 idx  * o  lm�x�x 0 abgroupnames  �{  �  ��  � L  y{,, m  yz�w
�w 
msng��   -.- l     �v�u�t�v  �u  �t  . /0/ l     �s12�s  1 B < I am looking up the group record based on a passed in group   2 �33 x   I   a m   l o o k i n g   u p   t h e   g r o u p   r e c o r d   b a s e d   o n   a   p a s s e d   i n   g r o u p0 454 l     �r67�r  6 R L I return a list containing the id and name of the chosen Address Book Group   7 �88 �   I   r e t u r n   a   l i s t   c o n t a i n i n g   t h e   i d   a n d   n a m e   o f   t h e   c h o s e n   A d d r e s s   B o o k   G r o u p5 9:9 l     �q;<�q  ; V P or missing value in case no groups are available or the user cancels the dialog   < �== �   o r   m i s s i n g   v a l u e   i n   c a s e   n o   g r o u p s   a r e   a v a i l a b l e   o r   t h e   u s e r   c a n c e l s   t h e   d i a l o g: >?> i     @A@ I      �pB�o�p 0 lookupabgroup  B C�nC o      �m�m 0 thegroup theGroup�n  �o  A k     �DD EFE Z     !GH�lIG =    JKJ o     �k�k &0 runinscripteditor runInScriptEditorK m    �j
�j boovfalsH r   
 LML n   
 NON 1    �i
�i 
psxpO l  
 P�h�gP b   
 QRQ l  
 S�f�eS c   
 TUT l  
 V�d�cV I  
 �bW�a
�b .earsffdralis        afdrW  f   
 �a  �d  �c  U m    �`
�` 
utxt�f  �e  R m    XX �YY B C o n t e n t s : R e s o u r c e s : S c r i p t s : a b x . p y�h  �g  M o      �_�_ 0 pyscriptpath  �l  I r    !Z[Z o    �^�^ 0 override_pyscriptpath  [ o      �]�] 0 pyscriptpath  F \]\ l  " "�\�[�Z�\  �[  �Z  ] ^_^ r   " +`a` b   " )bcb b   " 'ded m   " #ff �gg   / u s r / b i n / p y t h o n  e n   # &hih 1   $ &�Y
�Y 
strqi o   # $�X�X 0 pyscriptpath  c m   ' (jj �kk    g e t g r o u p sa o      �W�W 0 command  _ lml l  , ,�V�U�T�V  �U  �T  m non r   , 5pqp n   , 3rsr 2  1 3�S
�S 
cpars l  , 1t�R�Qt I  , 1�Pu�O
�P .sysoexecTEXT���     TEXTu o   , -�N�N 0 command  �O  �R  �Q  q o      �M�M 0 
shelllines  o vwv Z   6 Oxy�L�Kx =  6 :z{z o   6 7�J�J 0 
shelllines  { J   7 9�I�I  y k   = K|| }~} r   = @� m   = >�� ��� b Y o u r   A d r e s s   B o o k   d o e s   n o t   c o n t a i n   a n y   g r o u p s   y e t .� o      �H�H 
0 errmsg  ~ ��� n  A H��� I   B H�G��F�G 0 	dsperrmsg  � ��� o   B C�E�E 
0 errmsg  � ��D� m   C D�� ���  - -�D  �F  �  f   A B� ��C� L   I K�� m   I J�B
�B 
msng�C  �L  �K  w ��� l  P P�A���A  � C = the Python script returns tab delimited lines containing the   � ��� z   t h e   P y t h o n   s c r i p t   r e t u r n s   t a b   d e l i m i t e d   l i n e s   c o n t a i n i n g   t h e� ��� l  P P�@���@  � 6 0 ids and names of the address book groups, e.g.:   � ��� `   i d s   a n d   n a m e s   o f   t h e   a d d r e s s   b o o k   g r o u p s ,   e . g . :� ��� l  P P�?���?  � : 4 181C5BBB-FE2A-419F-AD6E-D2A92A678B66:ABGroup	Hotels   � ��� h   1 8 1 C 5 B B B - F E 2 A - 4 1 9 F - A D 6 E - D 2 A 9 2 A 6 7 8 B 6 6 : A B G r o u p 	 H o t e l s� ��� l  P P�>���>  � ? 9 FF2EEE74-9F40-11D8-BC68-000A95971BFE:ABGroup	Restaurants   � ��� r   F F 2 E E E 7 4 - 9 F 4 0 - 1 1 D 8 - B C 6 8 - 0 0 0 A 9 5 9 7 1 B F E : A B G r o u p 	 R e s t a u r a n t s� ��� l  P P�=���=  �   �   � ���    &� ��� r   P T��� J   P R�<�<  � o      �;�; 0 abgroupnames  � ��� r   U Y��� J   U W�:�:  � o      �9�9 0 
abgroupids  � ��� X   Z ���8�� k   j ��� ��� r   j s��� n  j q��� 1   m q�7
�7 
txdl� 1   j m�6
�6 
ascr� o      �5�5 0 	olddelims  � ��� r   t ���� J   t y�� ��4� 1   t w�3
�3 
tab �4  � n     ��� 1   | ��2
�2 
txdl� 1   y |�1
�1 
ascr� ��� r   � ���� n   � ���� 2  � ��0
�0 
citm� o   � ��/�/ 0 shelline  � J      �� ��� o      �.�. 0 	abgroupid  � ��-� o      �,�, 0 abgroupname  �-  � ��� r   � ���� o   � ��+�+ 0 	olddelims  � n     ��� 1   � ��*
�* 
txdl� 1   � ��)
�) 
ascr� ��� l  � ��(�'�&�(  �'  �&  � ��� l  � ��%���%  � W Q HACK: look for the matching group name; only return this in the list of choices.   � ��� �   H A C K :   l o o k   f o r   t h e   m a t c h i n g   g r o u p   n a m e ;   o n l y   r e t u r n   t h i s   i n   t h e   l i s t   o f   c h o i c e s .� ��� Z   � ����$�#� =  � ���� o   � ��"�" 0 abgroupname  � o   � ��!�! 0 thegroup theGroup� k   � ��� ��� r   � ���� b   � ���� o   � �� �  0 
abgroupids  � o   � ��� 0 	abgroupid  � o      �� 0 
abgroupids  � ��� r   � ���� b   � ���� o   � ��� 0 abgroupnames  � o   � ��� 0 abgroupname  � o      �� 0 abgroupnames  �  �$  �#  � ��� l  � �����  �  �  �  �8 0 shelline  � o   ] ^�� 0 
shelllines  � ��� l  � �����  �  �  � ��� I  � ����
� .ascrcmnt****      � ****� o   � ��� 0 
abgroupids  �  � ��� I  � ����
� .ascrcmnt****      � ****� o   � ��� 0 abgroupnames  �  � ��� l  � ���
�	�  �
  �	  � ��� Z   � ������ =  � ���� o   � ��� 0 
abgroupids  � J   � ���  � L   � ��� m   � ��
� 
msng�  � L   � ��� J   � ���    n   � � 4   � ��
� 
cobj m   � ���  o   � ��� 0 
abgroupids   �  n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 abgroupnames  �   �  ? 	
	 l     ��������  ��  ��  
  l     ����   o i I am returning a list containing the person ids and distribution list emails for a given address book id    � �   I   a m   r e t u r n i n g   a   l i s t   c o n t a i n i n g   t h e   p e r s o n   i d s   a n d   d i s t r i b u t i o n   l i s t   e m a i l s   f o r   a   g i v e n   a d d r e s s   b o o k   i d  i   ! $ I      ������ 0 getdlistemails   �� o      ���� 0 	abgroupid  ��  ��   k     �  Z     !�� =     o     ���� &0 runinscripteditor runInScriptEditor m    ��
�� boovfals r   
  n   
  !  1    ��
�� 
psxp! l  
 "����" b   
 #$# l  
 %����% c   
 &'& l  
 (����( I  
 ��)��
�� .earsffdralis        afdr)  f   
 ��  ��  ��  ' m    ��
�� 
utxt��  ��  $ m    ** �++ B C o n t e n t s : R e s o u r c e s : S c r i p t s : a b x . p y��  ��   o      ���� 0 pyscriptpath  ��   r    !,-, o    ���� 0 override_pyscriptpath  - o      ���� 0 pyscriptpath   ./. l  " "��������  ��  ��  / 010 I  " )��2��
�� .ascrcmnt****      � ****2 n   " %343 1   # %��
�� 
strq4 o   " #���� 0 	abgroupid  ��  1 565 r   * 7787 b   * 59:9 b   * 1;<; b   * /=>= m   * +?? �@@   / u s r / b i n / p y t h o n  > n   + .ABA 1   , .��
�� 
strqB o   + ,���� 0 pyscriptpath  < m   / 0CC �DD     g e t d l i s t e m a i l s  : n   1 4EFE 1   2 4��
�� 
strqF o   1 2���� 0 	abgroupid  8 o      ���� 0 command  6 GHG l  8 8��������  ��  ��  H IJI r   8 AKLK n   8 ?MNM 2  = ?��
�� 
cparN l  8 =O����O I  8 =��P��
�� .sysoexecTEXT���     TEXTP o   8 9���� 0 command  ��  ��  ��  L o      ���� 0 
shelllines  J QRQ Z   B [ST����S =  B FUVU o   B C���� 0 
shelllines  V J   C E����  T k   I WWW XYX r   I LZ[Z m   I J\\ �]] v T h e   c h o s e n   A d d r e s s   B o o k   G r o u p   d o e s   n o t   c o n t a i n   a n y   m e m b e r s .[ o      ���� 
0 errmsg  Y ^_^ n  M T`a` I   N T��b���� 0 	dsperrmsg  b cdc o   N O���� 
0 errmsg  d e��e m   O Pff �gg  - -��  ��  a  f   M N_ h��h L   U Wii m   U V��
�� 
msng��  ��  ��  R jkj l  \ \��������  ��  ��  k lml r   \ `non J   \ ^����  o o      ���� 0 	personids  m pqp r   a ersr J   a c����  s o      ���� 0 dlistemails  q tut l  f f��������  ��  ��  u vwv X   f �x��yx k   v �zz {|{ r   v }~} n  v }� 1   y }��
�� 
txdl� 1   v y��
�� 
ascr~ o      ���� 0 	olddelims  | ��� r   � ���� J   � ��� ���� 1   � ���
�� 
tab ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2  � ���
�� 
citm� o   � ����� 0 shelline  � J      �� ��� o      ���� 0 personid  � ���� o      ���� 0 
dlistemail  ��  � ��� r   � ���� o   � ����� 0 	olddelims  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� b   � ���� o   � ����� 0 	personids  � o   � ����� 0 personid  � o      ���� 0 	personids  � ���� r   � ���� b   � ���� o   � ����� 0 dlistemails  � o   � ����� 0 
dlistemail  � o      ���� 0 dlistemails  ��  �� 0 shelline  y o   i j���� 0 
shelllines  w ��� l  � ���������  ��  ��  � ���� L   � ��� J   � ��� ��� o   � ����� 0 	personids  � ���� o   � ����� 0 dlistemails  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  � 1 + I am displaying error messages to the user   � ��� V   I   a m   d i s p l a y i n g   e r r o r   m e s s a g e s   t o   t h e   u s e r� ���� i   % (��� I      ������� 0 	dsperrmsg  � ��� o      ���� 
0 errmsg  � ���� o      ���� 
0 errnum  ��  ��  � O     .��� k    -�� ��� I   	������
�� .miscactvnull��� ��� null��  ��  � ���� I  
 -����
�� .sysodlogaskr        TEXT� b   
 ��� b   
 ��� b   
 ��� b   
 ��� b   
 ��� b   
 ��� b   
 ��� m   
 �� ��� 0 S o r r y ,   a n   e r r o r   o c c u r e d :� o    ��
�� 
ret � o    ��
�� 
ret � o    ���� 
0 errmsg  � o    ��
�� 
ret � m    �� ���  (� o    ���� 
0 errnum  � m    �� ���  )� ����
�� 
btns� J    �� ���� m    �� ���  O K��  � ����
�� 
dflt� m    ���� � ����
�� 
disp� m     !��
�� stic    � ����
�� 
givu� m   " #�� � �~��}
�~ 
appr� o   $ )�|�| 0 mytitle  �}  ��  �  f     ��       �{� [�z e���������{  � �y�x�w�v�u�t�s�r�q�p�o�y 0 mytitle  �x &0 runinscripteditor runInScriptEditor�w 0 override_pyscriptpath  �v 0 handle_string  
�u .aevtoappnull  �   � ****�t 0 runme runMe�s 0 getpersondata  �r 0 chooseabgroup  �q 0 lookupabgroup  �p 0 getdlistemails  �o 0 	dsperrmsg  
�z boovfals� �n v�m�l���k�n 0 handle_string  �m �j��j �  �i�i 0 	thestring 	theString�l  � �h�h 0 	thestring 	theString� �g�g 0 runme runMe�k )�k+  � �f ��e�d���c
�f .aevtoappnull  �   � ****�e  �d  �  �  ��b�b 0 runme runMe�c )�k+ � �a ��`�_���^�a 0 runme runMe�` �]��] �  �\�\ 0 thegroup theGroup�_  � �[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�[ 0 thegroup theGroup�Z 0 chosenabgrouprecord  �Y 0 	abgroupid  �X 0 abgroupname  �W 0 dlistrecord  �V 0 	personids  �U 0 dlistemails  �T 0 countpersonids  �S *0 dlistemailsasstring dlistEmailsAsString�R 0 i  �Q 0 personid  �P 0 
dlistemail  �O 
0 errmsg  �N 
0 errnum  �  ��M�L�K�J�I�H-Z�G�F��E�D�M 0 chooseabgroup  �L 0 lookupabgroup  
�K 
msng
�J 
cobj�I 0 getdlistemails  
�H 
leng
�G .JonspClpnull���     ****�F 
0 errmsg  � �C�B�A
�C 
errn�B 
0 errnum  �A  �E���D 0 	dsperrmsg  �^ � ���  )j+ E�Y 
)�k+ E�O��  hY hO��k/E�O��l/E�O)�k+ E�O��  hY hO��k/E�O��l/E�O��,E�O�E�O *k�kh 	��/E�O��/E�O��%�%E�O) hU[OY��O�j 	OPW X 
 �� )��l+ Y h� �@��?�>���=�@ 0 getpersondata  �? �<��< �  �;�; 0 personid  �>  � �:�9�8�7�6�: 0 personid  �9 0 	personobj  �8 0 personfname  �7 0 personlname  �6 0 personorganization  � ��5��4�3�2�1���0���/��
�5 
azf4�  
�4 
ID  
�3 
cobj
�2 
azf7
�1 
utxt
�0 
azf8
�/ 
az38�= `� U*�-�[�,\Z�81�k/E�O��,�&E�O��  �E�Y hO��,�&E�O��  �E�Y hO��,�&E�O��  �E�Y hUO���mv� �.�-�,���+�. 0 chooseabgroup  �-  �,  � �*�)�(�'�&�%�$�#�"�!� �������* 0 pyscriptpath  �) 0 command  �( 0 
shelllines  �' 
0 errmsg  �& 0 abgroupnames  �% 0 
abgroupids  �$ 0 shelline  �# 0 	olddelims  �" 0 	abgroupid  �! 0 abgroupname  �  0 	menuitems  � 0 counter  � 0 
strcounter  � 0 	usrchoice  � 0 chosenmenuitem  � 0 spaceoffset  � 0 idx  � *���&�*��AK����������
���	������������ ����������
� .earsffdralis        afdr
� 
utxt
� 
psxp
� 
strq
� .sysoexecTEXT���     TEXT
� 
cpar� 0 	dsperrmsg  
� 
msng
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ascr
� 
txdl
� 
tab 
� 
citm�
 

�	 
prmp
� 
okbt
� 
cnbt
� 
appr
� 
empL
� 
mlsl� 
� .gtqpchltns    @   @ ns  
� 
rslt
�  
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
long�+|b  f  )j  �&�%�,E�Y 	b  E�O��,%�%E�O�j �-E�O�jv  �E�O)��l+ O�Y hOjvE�OjvE�O V�[��l kh _ a ,E�O_ kv_ a ,FO�a -E[�k/E�Z[�l/E�ZO�_ a ,FO��%E�O��%E�[OY��OjvE�OjE�O ?�[��l kh 	�kE�O�a  a �%�&E�Y ��&E�O��a %�%%E�[OY��O�a a a a a a a b   a fa fa   !O_ "E�O�f I��k/E�O*a #a $a %�a & 'E�O�[a (\[Zk\Zl2�&a )&E^ O��] /E��] /ElvY �� ��A���������� 0 lookupabgroup  �� ����� �  ���� 0 thegroup theGroup��  � ������������������������ 0 thegroup theGroup�� 0 pyscriptpath  �� 0 command  �� 0 
shelllines  �� 
0 errmsg  �� 0 abgroupnames  �� 0 
abgroupids  �� 0 shelline  �� 0 	olddelims  �� 0 	abgroupid  �� 0 abgroupname  � ����X��f��j��������������������������
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
citm
�� .ascrcmnt****      � ****�� �b  f  )j  �&�%�,E�Y 	b  E�O��,%�%E�O�j �-E�O�jv  �E�O)��l+ O�Y hOjvE�OjvE�O b�[��l kh _ a ,E�O_ kv_ a ,FO�a -E[�k/E�Z[�l/E�ZO�_ a ,FO��  ��%E�O��%E�Y hOP[OY��O�j O�j O�jv  �Y ��k/E��k/Elv� ������������ 0 getdlistemails  �� �� ��    ���� 0 	abgroupid  ��  � ������������������������ 0 	abgroupid  �� 0 pyscriptpath  �� 0 command  �� 0 
shelllines  �� 
0 errmsg  �� 0 	personids  �� 0 dlistemails  �� 0 shelline  �� 0 	olddelims  �� 0 personid  �� 0 
dlistemail  � ����*������?C����\f������������������
�� .earsffdralis        afdr
�� 
utxt
�� 
psxp
�� 
strq
�� .ascrcmnt****      � ****
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
citm�� �b  f  )j  �&�%�,E�Y 	b  E�O��,j O��,%�%��,%E�O�j �-E�O�jv  �E�O)��l+ O�Y hOjvE�OjvE�O V�[��l kh _ a ,E�O_ kv_ a ,FO�a -E[�k/E�Z[�l/E�ZO�_ a ,FO��%E�O��%E�[OY��O��lv� ����������� 0 	dsperrmsg  �� ����   ������ 
0 errmsg  �� 
0 errnum  ��   ������ 
0 errmsg  �� 
0 errnum   ��������������������������
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� stic    
�� 
givu�� 
�� 
appr�� 

�� .sysodlogaskr        TEXT�� /) +*j  O��%�%�%�%�%�%�%��kv�k�����b   � U ascr  ��ޭ