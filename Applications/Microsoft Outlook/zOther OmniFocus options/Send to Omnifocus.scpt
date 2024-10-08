FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
Veritrope.com
Outlook 2011 to Omnifocus
VERSION 1.11
May 31, 2014

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/outlook-2011-to-omnifocus

// REQUIREMENTS
THIS SCRIPT REQUIRES OS X 10.9+ AND OUTLOOK 2011 SP1 OR GREATER!
More details on the script information page.

// CHANGELOG
1.11  ADDED SWITCH TO DISABLE ATTACHMENTS, CHANGE FROM APPLICATION NAME TO BUNDLE ID TO AVOID VIRTUAL MACHINE CONFLICTS WITH OUTLOOK
1.10  FIX FOR OMNIFOCUS 2.0, GROWL/NOTIFICATION CENTER SWITCH, STARTING TO INTEGRATE NOTIFICATION CENTER
1.01  ADDED ORGANIZER INFO FOR MEETINGS
1.00  FINAL (UPDATED GROWL CODE)
1.00  BETA 1 - ASSORTED BUG FIXES
0.99  REVISED GROWL CODE
0.98  INITIAL RELEASE 

// RECOMMENDED INSTALLATION INSTRUCTIONS:
1.) Save this script to ~/Documents/Microsoft User Data/Outlook Script Menu Items (Or Its Equivalent in Localized Language);
(You can navigate quickly to this folder by selecting:
 Outlook's Script Menu => About This Menu... => Open Folder)

2.) Give it a filename that enables a keyboard shortcut to be used. 
	
Example:
Saving the script with the name "Send to OmniFocus\mO.scpt" lets you press ?O to send items to Evernote!

3.) Enjoy!

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

     � 	 	�  
 V e r i t r o p e . c o m  
 O u t l o o k   2 0 1 1   t o   O m n i f o c u s  
 V E R S I O N   1 . 1 1  
 M a y   3 1 ,   2 0 1 4  
  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E  
 h t t p : / / v e r i t r o p e . c o m / c o d e / o u t l o o k - 2 0 1 1 - t o - o m n i f o c u s  
  
 / /   R E Q U I R E M E N T S  
 T H I S   S C R I P T   R E Q U I R E S   O S   X   1 0 . 9 +   A N D   O U T L O O K   2 0 1 1   S P 1   O R   G R E A T E R !  
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e .  
  
 / /   C H A N G E L O G  
 1 . 1 1     A D D E D   S W I T C H   T O   D I S A B L E   A T T A C H M E N T S ,   C H A N G E   F R O M   A P P L I C A T I O N   N A M E   T O   B U N D L E   I D   T O   A V O I D   V I R T U A L   M A C H I N E   C O N F L I C T S   W I T H   O U T L O O K  
 1 . 1 0     F I X   F O R   O M N I F O C U S   2 . 0 ,   G R O W L / N O T I F I C A T I O N   C E N T E R   S W I T C H ,   S T A R T I N G   T O   I N T E G R A T E   N O T I F I C A T I O N   C E N T E R  
 1 . 0 1     A D D E D   O R G A N I Z E R   I N F O   F O R   M E E T I N G S  
 1 . 0 0     F I N A L   ( U P D A T E D   G R O W L   C O D E )  
 1 . 0 0     B E T A   1   -   A S S O R T E D   B U G   F I X E S  
 0 . 9 9     R E V I S E D   G R O W L   C O D E  
 0 . 9 8     I N I T I A L   R E L E A S E    
  
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S :  
 1 . )   S a v e   t h i s   s c r i p t   t o   ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O u t l o o k   S c r i p t   M e n u   I t e m s   ( O r   I t s   E q u i v a l e n t   i n   L o c a l i z e d   L a n g u a g e ) ;  
 ( Y o u   c a n   n a v i g a t e   q u i c k l y   t o   t h i s   f o l d e r   b y   s e l e c t i n g :  
   O u t l o o k ' s   S c r i p t   M e n u   = >   A b o u t   T h i s   M e n u . . .   = >   O p e n   F o l d e r )  
  
 2 . )   G i v e   i t   a   f i l e n a m e   t h a t   e n a b l e s   a   k e y b o a r d   s h o r t c u t   t o   b e   u s e d .    
 	  
 E x a m p l e :  
 S a v i n g   t h e   s c r i p t   w i t h   t h e   n a m e   " S e n d   t o   O m n i F o c u s \ m O . s c p t "   l e t s   y o u   p r e s s  # O   t o   s e n d   i t e m s   t o   E v e r n o t e !  
  
 3 . )   E n j o y !  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
   
  
 l     ��������  ��  ��        l      ��  ��    � } 
======================================
// USER SWITCHES (YOU CAN CHANGE THESE!)
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U S E R   S W I T C H E S   ( Y O U   C A N   C H A N G E   T H E S E ! )  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��    8 2SET THIS TO "ON" IF YOU PREFER GROWL NOTIFICATIONS     �   d S E T   T H I S   T O   " O N "   I F   Y O U   P R E F E R   G R O W L   N O T I F I C A T I O N S      l     ��  ��    5 /TO OSX'S NOTIFICATION CENTER (DEFAULT IS "OFF")     �   ^ T O   O S X ' S   N O T I F I C A T I O N   C E N T E R   ( D E F A U L T   I S   " O F F " )      j     �� �� 0 growlswitch growlSwitch  m          � ! !  O F F   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 1 +SET THIS TO "OFF" IF YOU PREFER TO DISABLE     ' � ( ( V S E T   T H I S   T O   " O F F "   I F   Y O U   P R E F E R   T O   D I S A B L E   %  ) * ) l     �� + ,��   + - 'ATTACHMENT PROCESSING (DEFAULT IS "ON")    , � - - N A T T A C H M E N T   P R O C E S S I N G   ( D E F A U L T   I S   " O N " ) *  . / . j    �� 0�� 0 attachswitch attachSwitch 0 m     1 1 � 2 2  O N /  3 4 3 l     ��������  ��  ��   4  5 6 5 l     ��������  ��  ��   6  7 8 7 l      �� 9 :��   9 � � 
======================================
// OTHER PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
    : � ; ;    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   O T H E R   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G )  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 8  < = < j    �� >�� 0 successcount successCount > m    ����   =  ? @ ? j   	 �� A�� 0 growl_running growl_Running A m   	 
 B B � C C 
 f a l s e @  D E D j    �� F�� 0 mytitle myTitle F m     G G � H H  I t e m E  I J I j    �� K��  0 theattachments theAttachments K m     L L � M M   J  N O N j    �� P�� 0 thismessage thisMessage P m     Q Q � R R   O  S T S j    �� U�� 0 itemnum itemNum U m     V V � W W  0 T  X Y X j    �� Z�� 0 attnum attNum Z m     [ [ � \ \  0 Y  ] ^ ] j    �� _�� 0 errnum errNum _ m     ` ` � a a  0 ^  b c b j     $�� d�� 0 	errortext 	errorText d m     # e e � f f   c  g h g j   % )�� i�� 0 	the_class   i m   % ( j j � k k   h  l m l j   * -�� n�� 0 
list_props 
list_Props n J   * ,����   m  o p o j   . 2�� q�� 0 saveloc SaveLoc q m   . 1 r r � s s   p  t u t j   3 6�� v�� 0 newtask NewTask v J   3 5����   u  w x w l     ��������  ��  ��   x  y z y l      �� { |��   { k e 
======================================
// MAIN PROGRAM 
======================================
    | � } } �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �  	LET'S GO!    � � � �  L E T ' S   G O ! �  � � � l    ����� � Q     � � � � k    � � �  � � � l   �� � ���   �  CHECK FOR GROWL SWITCH    � � � � , C H E C K   F O R   G R O W L   S W I T C H �  � � � Z    � ����� � =   
 � � � o    ���� 0 growlswitch growlSwitch � m    	 � � � � �  O N � n    � � � I    �������� 0 
startgrowl 
startGrowl��  ��   �  f    ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �  SET UP ACTIVITIES    � � � � " S E T   U P   A C T I V I T I E S �  � � � r     � � � J    ����   � o      ���� 0 selecteditems selectedItems �  � � � l   ��������  ��  ��   �  � � � r    # � � � n   ! � � � I    !�������� 0 
item_check 
item_Check��  ��   �  f     � o      ���� 0 selecteditems selectedItems �  � � � l  $ $��������  ��  ��   �  � � � l  $ $�� � ���   �  MESSAGES SELECTED?    � � � � $ M E S S A G E S   S E L E C T E D ? �  � � � Z   $ j � ��� � � >  $ ' � � � o   $ %���� 0 selecteditems selectedItems � m   % &��
�� 
msng � k   * ` � �  � � � l  * *��������  ��  ��   �  � � � l  * *�� � ���   �  GET FILE COUNT    � � � �  G E T   F I L E   C O U N T �  � � � n  * 5 � � � I   + 5�� ����� 0 
item_count 
item_Count �  � � � o   + ,���� 0 selecteditems selectedItems �  ��� � o   , 1���� 0 	the_class  ��  ��   �  f   * + �  � � � l  6 6��������  ��  ��   �  � � � l  6 6�� � ���   � " ANNOUNCE THE EXPORT OF ITEMS    � � � � 8 A N N O U N C E   T H E   E X P O R T   O F   I T E M S �  � � � n  6 J � � � I   7 J�� ����� 0 process_items process_Items �  � � � o   7 <���� 0 itemnum itemNum �  � � � o   < A���� 0 attnum attNum �  ��� � o   A F���� 0 	the_class  ��  ��   �  f   6 7 �  � � � l  K K��������  ��  ��   �  � � � l  K K�� � ���   �  PROCESS ITEMS FOR EXPORT    � � � � 0 P R O C E S S   I T E M S   F O R   E X P O R T �  � � � n  K Q � � � I   L Q�� ����� 0 item_process item_Process �  ��� � o   L M���� 0 selecteditems selectedItems��  ��   �  f   K L �  � � � l  R R��������  ��  ��   �  � � � l  R R�� � ���   � % DELETE TEMP FOLDER IF IT EXISTS    � � � � > D E L E T E   T E M P   F O L D E R   I F   I T   E X I S T S �  � � � r   R ^ � � � n  R \ � � � I   S \�� ����� 0 trashfolder   �  ��� � o   S X���� 0 saveloc SaveLoc��  ��   �  f   R S � o      ���� 0 success   �  � � � l  _ _��������  ��  ��   �  ��� � l  _ _�� � ���   �  NO ITEMS SELECTED    � � � � " N O   I T E M S   S E L E C T E D��  ��   � r   c j �  � m   c d������  o      ���� 0 successcount successCount �  l  k k��������  ��  ��    l  k k��������  ��  ��    l  k k����    GROWL RESULTS    �		  G R O W L   R E S U L T S 

 Z   k �� =  k r o   k p�~�~ 0 growlswitch growlSwitch m   p q �  O N n  u � I   v ��}�|�} 0 growl_growler growl_Growler  o   v {�{�{ 0 successcount successCount �z o   { ��y�y 0 itemnum itemNum�z  �|    f   u v�   n  � � I   � ��x�w�x *0 notification_center notification_Center  o   � ��v�v 0 successcount successCount �u o   � ��t�t 0 itemnum itemNum�u  �w    f   � �   l  � ��s�r�q�s  �r  �q    !�p! l  � ��o"#�o  "   ERROR HANDLING    # �$$     E R R O R   H A N D L I N G  �p   � R      �n%&
�n .ascrerr ****      � ****% o      �m�m 0 errtext errText& �l'�k
�l 
errn' o      �j�j 0 errnum errNum�k   � k   �(( )*) O   � �+,+ r   � �-.- ?   � �/0/ l  � �1�i�h1 I  � ��g2�f
�g .corecnte****       ****2 l  � �3�e�d3 6  � �454 2   � ��c
�c 
prcs5 =  � �676 1   � ��b
�b 
bnid7 m   � �88 �99 0 c o m . G r o w l . G r o w l H e l p e r A p p�e  �d  �f  �i  �h  0 m   � ��a�a  . o      �`�` 0 isgrlrunning isGrlRunning, m   � �::�                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  * ;<; l  � ��_�^�]�_  �^  �]  < =�\= P   �>�[?> Z   �
@A�Z�Y@ o   � ��X�X 0 isgrlrunning isGrlRunningA k   �BB CDC Z   � �EF�WGE =  � �HIH o   � ��V�V 0 errnum errNumI m   � ��U�U��F k   � �JJ KLK r   � �MNM m   � �OO �PP < t e l l   a p p l i c a t i o n   " G r o w l "  
 	 	 	 	N o      �T�T 
0 part_1  L Q�SQ r   � �RSR m   � �TT �UUT n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " F a i l u r e   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " U s e r   C a n c e l l e d "   d e s c r i p t i o n   " U s e r   C a n c e l l e d "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 	 	 e n d   t e l lS o      �R�R 
0 part_2  �S  �W  G k   � �VV WXW l  � ��QYZ�Q  Y   GROWL FAILURE FOR ERROR   Z �[[ 0   G R O W L   F A I L U R E   F O R   E R R O RX \�P\ r   � �]^] m   � �__ �``� n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " F a i l u r e   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " I m p o r t   F a i l u r e "   d e s c r i p t i o n   " F a i l e d   t o   e x p o r t   d u e   t o   t h e   f o l l o w i n g   e r r o r :   "   &   r e t u r n   &   e r r T e x t   �  
 	 	 	 	 	 a p p l i c a t i o n   n a m e   " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 e n d   t e l l^ o      �O�O 
0 part_2  �P  D aba l  � ��N�M�L�N  �M  �L  b cdc l  � ��Kef�K  e %  NON-GROWL ERROR MSG. FOR ERROR   f �gg >   N O N - G R O W L   E R R O R   M S G .   F O R   E R R O Rd h�Jh I  ��Iij
�I .sysodlogaskr        TEXTi b   � �klk b   � �mnm b   � �opo m   � �qq �rr . I t e m   F a i l e d   t o   I m p o r t :  p o   � ��H�H 0 errnum errNumn o   � ��G
�G 
ret l o   � ��F�F 0 errtext errTextj �Es�D
�E 
disps m  �C�C  �D  �J  �Z  �Y  �[  ? �B�A
�B consrmte�A  �\  ��  ��   � tut l     �@�?�>�@  �?  �>  u vwv l      �=xy�=  x v p 
======================================
// PREPARATORY SUBROUTINES 
======================================
   y �zz �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   P R E P A R A T O R Y   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
w {|{ l     �<�;�:�<  �;  �:  | }~} l     �9��9    
APP DETECT   � ���  A P P   D E T E C T~ ��� i   7 :��� I      �8��7�8 0 appisrunning appIsRunning� ��6� o      �5�5 0 appname appName�6  �7  � O    ��� E    ��� l   	��4�3� n    	��� 1    	�2
�2 
pnam� 2   �1
�1 
prcs�4  �3  � o   	 
�0�0 0 appname appName� m     ���                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  �  SET UP ACTIVITIES   � ��� " S E T   U P   A C T I V I T I E S� ��� i   ; >��� I      �+�*�)�+ 0 
item_check 
item_Check�*  �)  � O     ���� k    ��� ��� Q    ����(� l   ����� k    ��� ��� r    ��� 1    �'
�' 
sele� o      �&�& 0 selecteditems selectedItems� ��� r    ��� l   ��%�$� n    ��� m    �#
�# 
pcls� o    �"�" 0 selecteditems selectedItems�%  �$  � o      �!�! 0 	raw_class 	raw_Class� ��� Z    Z��� �� =   ��� o    �� 0 	raw_class 	raw_Class� m    �
� 
list� k    V�� ��� r    !��� J    ��  � o      �� 0 	classlist 	classList� ��� X   " =���� s   2 8��� n   2 5��� m   3 5�
� 
pcls� o   2 3�� 0 selecteditem selectedItem� n      ���  ;   6 7� o   5 6�� 0 	classlist 	classList� 0 selecteditem selectedItem� o   % &�� 0 selecteditems selectedItems� ��� Z   > V����� E   > A��� o   > ?�� 0 	classlist 	classList� m   ? @�
� 
cTsk� r   D K��� m   D E�� ���  T a s k� o      �� 0 	the_class  �  � r   N V��� l  N T���� n   N T��� m   R T�
� 
pcls� n   N R��� 4   O R��
� 
cobj� m   P Q�� � o   N O�� 0 selecteditems selectedItems�  �  � o      �
�
 0 	raw_class 	raw_Class�  �   �  � ��� Z  [ l���	�� =  [ ^��� o   [ \�� 0 	raw_class 	raw_Class� m   \ ]�
� 
cEvt� r   a h��� m   a b�� ���  C a l e n d a r� o      �� 0 	the_class  �	  �  � ��� Z  m ~����� =  m p��� o   m n�� 0 	raw_class 	raw_Class� m   n o�
� 
cNot� r   s z��� m   s t�� ���  N o t e� o      � �  0 	the_class  �  �  � ��� Z   �������� =   ���� o    ����� 0 	raw_class 	raw_Class� m   � ���
�� 
cTsk� r   � ���� m   � ��� ���  T a s k� o      ���� 0 	the_class  ��  ��  � ��� Z  � �������� =  � ���� o   � ����� 0 	raw_class 	raw_Class� m   � ���
�� 
cAbE� r   � ���� m   � ��� ���  C o n t a c t� o      ���� 0 	the_class  ��  ��  �    Z  � ����� =  � � o   � ����� 0 	raw_class 	raw_Class m   � ���
�� 
inm  r   � � m   � � �		  M e s s a g e o      ���� 0 	the_class  ��  ��   
��
 Z  � ����� =  � � o   � ����� 0 	raw_class 	raw_Class m   � ���
�� 
ctxt r   � � m   � � �  T e x t o      ���� 0 	the_class  ��  ��  ��  �   GET MESSAGES   � �    G E T   M E S S A G E S� R      ������
�� .ascrerr ****      � ****��  ��  �(  � �� L   � � o   � ����� 0 selecteditems selectedItems��  � 5     ����
�� 
capp m     � * c o m . m i c r o s o f t . O u t l o o k
�� kfrmID  �  l     ��������  ��  ��    l     ����   ( "GET COUNT OF ITEMS AND ATTACHMENTS    � D G E T   C O U N T   O F   I T E M S   A N D   A T T A C H M E N T S  !  i   ? B"#" I      ��$���� 0 
item_count 
item_Count$ %&% o      ���� 0 selecteditems selectedItems& '��' o      ���� 0 	the_class  ��  ��  # O     c()( Z    b*+��,* >   -.- o    	���� 0 	the_class  . m   	 
// �00  T e x t+ k    X11 232 r    454 v    66 7��7 I   ��8��
�� .corecnte****       ****8 o    ���� 0 selecteditems selectedItems��  ��  5 o      ���� 0 itemnum itemNum3 9:9 r    #;<; m    ����  < o      ���� 0 attnum attNum: =��= Q   $ X>?��> X   ' O@��A@ r   7 JBCB [   7 DDED o   7 <���� 0 attnum attNumE l  < CF����F I  < C��G��
�� .corecnte****       ****G n   < ?HIH m   = ?��
�� 
cAtcI o   < =���� "0 selectedmessage selectedMessage��  ��  ��  C o      ���� 0 attnum attNum�� "0 selectedmessage selectedMessageA o   * +���� 0 selecteditems selectedItems? R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  , r   [ bJKJ m   [ \���� K o      ���� 0 itemnum itemNum) 5     ��L��
�� 
cappL m    MM �NN * c o m . m i c r o s o f t . O u t l o o k
�� kfrmID  ! OPO l     ��������  ��  ��  P QRQ l      ��ST��  S ~ x 
======================================
// PROCESS OUTLOOK ITEMS SUBROUTINE
======================================
   T �UU �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   P R O C E S S   O U T L O O K   I T E M S   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
R VWV l     ��������  ��  ��  W XYX i   C FZ[Z I      ��\���� 0 item_process item_Process\ ]��] o      ���� 0 selecteditems selectedItems��  ��  [ O    �^_^ k   �`` aba l   ��������  ��  ��  b cdc l   ��ef��  e  TEXT ITEM CLIP   f �gg  T E X T   I T E M   C L I Pd h��h Z   �ij��ki =   lml l   n����n n    opo m   	 ��
�� 
pclsp o    	���� 0 selecteditems selectedItems��  ��  m m    ��
�� 
ctxtj k    Aqq rsr r    tut o    ���� 0 selecteditems selectedItemsu o      ���� 0 oftitle OFTitles vwv r    xyx m    zz �{{ 4 T e x t   C l i p p i n g   f r o m   O u t l o o ky o      ���� 0 
thecontent 
theContentw |}| l   ��������  ��  ��  } ~~ l   ������  �  CREATE IN OMNIFOCUS    � ��� ( C R E A T E   I N   O M N I F O C U S   ��� O    9��� O    8��� r   # 7��� I  # 1�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   % &��
�� 
FCit� �����
�� 
prdt� K   ' -�� ����
�� 
pnam� o   ( )���� 0 oftitle OFTitle� �����
�� 
FCno� o   * +���� 0 
thecontent 
theContent��  ��  � o      ���� 0 newtask NewTask� l    ������ 4    ���
�� 
docu� m    ���� ��  ��  � m    ���                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l  : :��������  ��  ��  � ��� l  : :������  � 1 +ITEM HAS FINISHED -- COUNT IT AS A SUCCESS!   � ��� V I T E M   H A S   F I N I S H E D   - -   C O U N T   I T   A S   A   S U C C E S S !� ���� r   : A��� m   : ;���� � o      ���� 0 successcount successCount��  ��  k k   D��� ��� l  D D������  �  FULL ITEM EXPORT   � ���   F U L L   I T E M   E X P O R T� ���� X   D������ k   T��� ��� r   T [��� l  T Y������ n   T Y��� 1   U Y��
�� 
pALL� o   T U���� 0 selecteditem selectedItem��  ��  � o      ���� 0 theprops theProps� ��� Q   \ {����� k   _ r�� ��� r   _ j��� n   _ d��� 2  ` d��
�� 
cAtc� o   _ `���� 0 selecteditem selectedItem� o      ��  0 theattachments theAttachments� ��~� r   k r��� n   k p��� 2  l p�}
�} 
Ttee� o   k l�|�| 0 selecteditem selectedItem� o      �{�{ 0 raw_attendees raw_Attendees�~  � R      �z�y�x
�z .ascrerr ****      � ****�y  �x  ��  � ��� l  | |�w�v�u�w  �v  �u  � ��� l  | |�t���t  �  SET UP SOME VALUES   � ��� $ S E T   U P   S O M E   V A L U E S� ��� r   | ���� m   | �s
�s 
msng� o      �r�r &0 thecompletiondate theCompletionDate� ��� r   � ���� m   � ��q
�q 
msng� o      �p�p 0 thestartdate theStartDate� ��� r   � ���� m   � ��o
�o 
msng� o      �n�n 0 
theduedate 
theDueDate� ��� r   � ���� m   � ��m
�m boovfals� o      �l�l 0 theflag theFlag� ��� l  � ��k�j�i�k  �j  �i  � ��� l  � ��h���h  � #  GET OUTLOOK ITEM INFORMATION   � ��� :   G E T   O U T L O O K   I T E M   I N F O R M A T I O N� ��� r   � ���� J   � ��g�g  � o      �f�f 0 	the_vcard 	the_vCard� ��� l  � ��e�d�c�e  �d  �c  � ��� l  � ��b���b  �  WHAT KIND OF ITEM IS IT?   � ��� 0 W H A T   K I N D   O F   I T E M   I S   I T ?� ��� Z   �u����� =  � ���� o   � ��a�a 0 	the_class  � m   � ��� ���  C a l e n d a r� k   ���� ��� l  � ��`�_�^�`  �_  �^  � ��� l   � ��]���]  �   // CALENDAR ITEM    � ��� $   / /   C A L E N D A R   I T E M  � ��� l  � ��\�[�Z�\  �[  �Z  � ��� l  � ��Y �Y     PREPARE THE TEMPLATE	    � * P R E P A R E   T H E   T E M P L A T E 	�  l  � ��X�X    LEFT SIDE (FORM FIELDS)    � . L E F T   S I D E   ( F O R M   F I E L D S ) 	 r   � �

 m   � � �  E v e n t :     o      �W�W 0 l_1  	  r   � � m   � � �  S t a r t   T i m e :     o      �V�V 0 l_2    r   � � m   � � �  E n d   T i m e :     o      �U�U 0 l_3    r   � � m   � � �  L o c a t i o n :     o      �T�T 0 l_4    !  r   � �"#" m   � �$$ �%%  N o t e s     :# o      �S�S 0 l_5  ! &'& l  � ��R�Q�P�R  �Q  �P  ' ()( l  � ��O*+�O  *  RIGHT SIDE (DATA FIELDS)   + �,, 0 R I G H T   S I D E   ( D A T A   F I E L D S )) -.- r   � �/0/ l  � �1�N�M1 n   � �232 1   � ��L
�L 
subj3 o   � ��K�K 0 theprops theProps�N  �M  0 o      �J�J 0 r_1  . 454 r   � �676 l  � �8�I�H8 n   � �9:9 1   � ��G
�G 
offs: o   � ��F�F 0 theprops theProps�I  �H  7 o      �E�E 0 r_2  5 ;<; r   � �=>= l  � �?�D�C? n   � �@A@ 1   � ��B
�B 
endTA o   � ��A�A 0 theprops theProps�D  �C  > o      �@�@ 0 r_3  < BCB r   � �DED l  � �F�?�>F n   � �GHG 1   � ��=
�= 
ilocH o   � ��<�< 0 theprops theProps�?  �>  E o      �;�; 0 the_location the_LocationC IJI Z  � �KL�:�9K =  � �MNM o   � ��8�8 0 the_location the_LocationN m   � ��7
�7 
msngL r   � �OPO m   � �QQ �RR  N o n eP o      �6�6 0 the_location the_Location�:  �9  J STS r   �UVU o   ��5�5 0 the_location the_LocationV o      �4�4 0 r_4  T WXW l �3�2�1�3  �2  �1  X YZY l �0[\�0  [  	THE NOTES   \ �]]  T H E   N O T E SZ ^_^ r  `a` m  
bb �cc  a o      �/�/ 0 	the_notes  _ ded r  fgf l h�.�-h I �,�+�*
�, .misccurdldt    ��� null�+  �*  �.  �-  g o      �)�) 0 item_created item_Createde iji Q  .kl�(k r  %mnm l !o�'�&o n  !pqp 1  !�%
�% 
PlTCq o  �$�$ 0 theprops theProps�'  �&  n o      �#�# 0 	the_notes  l R      �"�!� 
�" .ascrerr ****      � ****�!  �   �(  j rsr Z /Dtu��t = /6vwv o  /2�� 0 	the_notes  w m  25�
� 
msngu r  9@xyx m  9<zz �{{  y o      �� 0 	the_notes  �  �  s |}| l EE����  �  �  } ~~ l EE����  � * $ADD ATTENDEE INFO IF IT'S A MEETING    � ��� H A D D   A T T E N D E E   I N F O   I F   I T ' S   A   M E E T I N G   ��� Z  E5����� ?  EL��� l EJ���� I EJ���
� .corecnte****       ****� o  EF�� 0 raw_attendees raw_Attendees�  �  �  � m  JK��  � k  O1�� ��� r  O`��� b  O\��� b  OX��� m  OR�� ��� H < s t r o n g > O r g a n i z e d   B y :   < / s t r o n g > < b r / >� l RW���� n  RW��� 1  SW�
� 
orGA� o  RS�� 0 selecteditem selectedItem�  �  � m  X[�� ���  < b r / > < b r / >� o      �
�
 0 the_organizer the_Organizer� ��� r  al��� b  ah��� m  ad�� ��� & I n v i t e d   A t t e n d e e s :  � o  dg�	
�	 
ret � o      �� 0 the_attendees the_Attendees� ��� X  m���� k  }�� ��� l }}����  �  �  � ��� l }}����  �  GET ATTENDEE DATA   � ��� " G E T   A T T E N D E E   D A T A� ��� r  }���� l }����� n  }���� m  ��� 
�  
emad� o  }����� 0 raw_attendee raw_Attendee�  �  � o      ���� &0 raw_emailattendee raw_EmailAttendee� ��� r  ����� c  ����� l �������� n  ����� 1  ����
�� 
pnam� o  ������ &0 raw_emailattendee raw_EmailAttendee��  ��  � m  ����
�� 
ctxt� o      ���� 0 attend_name attend_Name� ��� r  ����� l �������� n  ����� 1  ����
�� 
Stts� o  ������ 0 raw_attendee raw_Attendee��  ��  � o      ���� 0 
raw_status 
raw_Status� ��� l ����������  ��  ��  � ��� l ��������  �  COERCE STATUS TO TEXT   � ��� * C O E R C E   S T A T U S   T O   T E X T� ��� Z  �������� E  ����� o  ������ 0 
raw_status 
raw_Status� m  ����
�� eACsASnr� r  ����� m  ���� ���  N o t   R e s p o n d e d� o      ���� 0 attend_status attend_Status� ��� E  ����� o  ������ 0 
raw_status 
raw_Status� m  ����
�� eACsASac� ��� r  ����� m  ���� ���  A c c e p t e d� o      ���� 0 attend_status attend_Status� ��� E  ����� o  ������ 0 
raw_status 
raw_Status� m  ����
�� eACsASde� ��� r  ����� m  ���� ���  D e c l i n e d� o      ���� 0 attend_status attend_Status� ��� E  ����� o  ������ 0 
raw_status 
raw_Status� m  ����
�� eACsASte� ���� r  ����� m  ���� ��� ( T e n t a t i v e l y   A c c e p t e d� o      ���� 0 attend_status attend_Status��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �  COMPILE THE ATTENDEE DATA   � ��� 2 C O M P I L E   T H E   A T T E N D E E   D A T A� ��� r  �
��� b  �   b  � b  �� b  �� o  ������ 0 attend_name attend_Name m  �� �		    ( o  ������ 0 attend_status attend_Status m  �

 �  ) o  ��
�� 
ret � o      ���� 0 attend_string attend_String� �� r   b   o  ���� 0 the_attendees the_Attendees o  ���� 0 attend_string attend_String o      ���� 0 the_attendees the_Attendees��  � 0 raw_attendee raw_Attendee� o  pq���� 0 raw_attendees raw_Attendees�  r  + l '���� b  ' b  # o  ���� 0 the_organizer the_Organizer o  "���� 0 the_attendees the_Attendees o  #&���� 0 	the_notes  ��  ��   o      ���� 0 	the_notes   �� r  ,1 m  ,/ �   o      ���� 0 raw_attendees raw_Attendees��  �  �  �   l 66��������  ��  ��    !"! l 66��#$��  #  ASSEMBLE THE TEMPLATE   $ �%% * A S S E M B L E   T H E   T E M P L A T E" &'& r  6w()( b  6u*+* b  6q,-, b  6m./. b  6i010 b  6e232 b  6a454 b  6]676 b  6Y898 b  6U:;: b  6S<=< b  6O>?> b  6K@A@ b  6IBCB b  6EDED b  6AFGF b  6?HIH b  6;JKJ o  67���� 0 l_1  K o  7:���� 0 r_1  I o  ;>��
�� 
ret G o  ?@���� 0 l_2  E o  AD���� 0 r_2  C o  EH��
�� 
ret A o  IJ���� 0 l_3  ? o  KN���� 0 r_3  = o  OR��
�� 
ret ; o  ST���� 0 l_4  9 o  UX���� 0 r_4  7 o  Y\��
�� 
ret 5 o  ]`��
�� 
ret 3 o  ad��
�� 
ret 1 o  eh��
�� 
ret / o  il���� 0 	the_notes  - o  mp��
�� 
ret + o  qt��
�� 
ret ) o      ���� 0 
thecontent 
theContent' LML l xx��������  ��  ��  M NON l xx��PQ��  P  EXPORT VCARD DATA   Q �RR " E X P O R T   V C A R D   D A T AO STS Q  x�UV��U k  {�WW XYX r  {�Z[Z l {�\����\ n  {�]^] 1  |���
�� 
iCal^ o  {|���� 0 theprops theProps��  ��  [ o      ���� 0 
vcard_data  Y _`_ r  ��aba m  ��cc �dd  . i c sb o      ���� 0 vcard_extension  ` e��e r  ��fgf n ��hih I  ����j���� 0 
write_file 
write_Filej klk o  ������ 0 r_1  l mnm o  ������ 0 
vcard_data  n o��o o  ������ 0 vcard_extension  ��  ��  i  f  ��g o      ���� 0 	the_vcard 	the_vCard��  V R      ������
�� .ascrerr ****      � ****��  ��  ��  T pqp l ����������  ��  ��  q rsr r  ��tut o  ������ 0 r_1  u o      ���� 0 oftitle OFTitles vwv l ����������  ��  ��  w x��x l  ����yz��  y   // NOTE ITEM    z �{{    / /   N O T E   I T E M  ��  � |}| = ��~~ o  ������ 0 	the_class   m  ���� ���  n o t e} ��� k  ��� ��� l ����������  ��  ��  � ��� l ��������  �  PREPARE THE TEMPLATE	   � ��� * P R E P A R E   T H E   T E M P L A T E 	� ��� l ��������  �  LEFT SIDE (FORM FIELDS)   � ��� . L E F T   S I D E   ( F O R M   F I E L D S )� ��� r  ����� m  ���� ���  N o t e :    � o      ���� 0 l_1  � ��� r  ����� m  ���� ���   C r e a t i o n   D a t e :    � o      ���� 0 l_2  � ��� r  ����� m  ���� ���  C a t e g o r y :    � o      ���� 0 l_3  � ��� r  ����� m  ���� ���  � o      ���� 0 l_4  � ��� r  ����� m  ���� ���  N o t e s :    � o      ���� 0 l_5  � ��� l ����������  ��  ��  � ��� l ��������  �  RIGHT SIDE (DATA FIELDS)   � ��� 0 R I G H T   S I D E   ( D A T A   F I E L D S )� ��� r  ����� n  ����� 1  ����
�� 
pnam� o  ������ 0 theprops theProps� o      ���� 0 r_1  � ��� r  ����� n  ����� 1  ����
�� 
ascd� o  ������ 0 theprops theProps� o      ���� 0 item_created item_Created� ��� r  ����� l �����~� c  ����� o  ���}�} 0 item_created item_Created� m  ���|
�| 
ctxt�  �~  � o      �{�{ 0 r_2  � ��� l ���z�y�x�z  �y  �x  � ��� l ���w���w  �  GET CATEGORY INFO   � ��� " G E T   C A T E G O R Y   I N F O� ��� r  � ��� l ����v�u� n  ����� m  ���t
�t 
cCtg� o  ���s�s 0 theprops theProps�v  �u  � o      �r�r 0 the_cats the_Cats� ��� r  ��� J  �q�q  � o      �p�p 0 	list_cats 	list_Cats� ��� r  ��� l ��o�n� I �m��l
�m .corecnte****       ****� o  �k�k 0 the_cats the_Cats�l  �o  �n  � o      �j�j 0 	count_cat 	count_Cat� ��� X  f��i�� k  &a�� ��� r  &1��� l &-��h�g� c  &-��� n  &+��� 1  )+�f
�f 
pnam� o  &)�e�e 0 the_cat the_Cat� m  +,�d
�d 
ctxt�h  �g  � o      �c�c 0 cat_name cat_Name� ��� s  2:��� o  25�b�b 0 cat_name cat_Name� l     ��a�`� n      ���  ;  89� o  58�_�_ 0 	list_cats 	list_Cats�a  �`  � ��^� Z  ;a���]�� ?  ;@��� o  ;>�\�\ 0 	count_cat 	count_Cat� m  >?�[�[ � k  CU�� ��� s  CK� � m  CF �  ,    l     �Z�Y n        ;  IJ o  FI�X�X 0 	list_cats 	list_Cats�Z  �Y  � �W r  LU l LQ	�V�U	 \  LQ

 o  LO�T�T 0 	count_cat 	count_Cat m  OP�S�S �V  �U   o      �R�R 0 	count_cat 	count_Cat�W  �]  � r  Xa l X]�Q�P \  X] o  X[�O�O 0 	count_cat 	count_Cat m  [\�N�N �Q  �P   o      �M�M 0 	count_cat 	count_Cat�^  �i 0 the_cat the_Cat� o  �L�L 0 the_cats the_Cats�  l gg�K�J�I�K  �J  �I    r  gn o  gj�H�H 0 	list_cats 	list_Cats o      �G�G 0 r_3    r  ov m  or �   o      �F�F 0 r_4    l ww�E�D�C�E  �D  �C     r  w�!"! n  w|#$# 1  x|�B
�B 
ascd$ o  wx�A�A 0 theprops theProps" o      �@�@ 0 item_created item_Created  %&% l ���?�>�=�?  �>  �=  & '(' l ���<)*�<  )  	THE NOTES   * �++  T H E   N O T E S( ,-, Q  ��./�;. r  ��010 n  ��232 1  ���:
�: 
PlTC3 o  ���9�9 0 theprops theProps1 o      �8�8 0 	the_notes  / R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �;  - 454 Z ��67�4�36 = ��898 o  ���2�2 0 	the_notes  9 m  ���1
�1 
msng7 r  ��:;: m  ��<< �==  ; o      �0�0 0 	the_notes  �4  �3  5 >?> l ���/�.�-�/  �.  �-  ? @A@ l ���,BC�,  B  ASSEMBLE THE TEMPLATE   C �DD * A S S E M B L E   T H E   T E M P L A T EA EFE r  ��GHG b  ��IJI b  ��KLK b  ��MNM b  ��OPO b  ��QRQ b  ��STS b  ��UVU b  ��WXW b  ��YZY b  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc b  ��efe b  ��ghg b  ��iji o  ���+�+ 0 l_1  j o  ���*�* 0 r_1  h o  ���)
�) 
ret f o  ���(�( 0 l_2  d o  ���'�' 0 r_2  b o  ���&
�& 
ret ` o  ���%�% 0 l_3  ^ o  ���$�$ 0 r_3  \ o  ���#
�# 
ret Z o  ���"�" 0 l_4  X o  ���!�! 0 r_4  V o  ��� 
�  
ret T o  ���
� 
ret R o  ���
� 
ret P o  ���
� 
ret N o  ���� 0 	the_notes  L o  ���
� 
ret J o  ���
� 
ret H o      �� 0 
thecontent 
theContentF klk l ������  �  �  l mnm l ���op�  o  EXPORT VCARD DATA   p �qq " E X P O R T   V C A R D   D A T An rsr r  ��tut l ��v��v n  ��wxw 1  ���
� 
iCalx o  ���� 0 theprops theProps�  �  u o      �� 0 
vcard_data  s yzy r  � {|{ m  ��}} �~~  . i c s| o      �� 0 vcard_extension  z � r  ��� n ��� I  ���� 0 
write_file 
write_File� ��� o  �� 0 r_1  � ��� o  �� 0 
vcard_data  � ��
� o  �	�	 0 vcard_extension  �
  �  �  f  � o      �� 0 	the_vcard 	the_vCard� ��� l ����  �  �  � ��� r  ��� m  �
� boovtrue� o      �� 0 thehtml theHTML� ��� r  ��� o  �� 0 r_1  � o      �� 0 oftitle OFTitle� ��� l � �����   ��  ��  � ���� l  ������  �   // CONTACT ITEM    � ��� "   / /   C O N T A C T   I T E M  ��  � ��� = "+��� o  "'���� 0 	the_class  � m  '*�� ���  c o n t a c t� ��� k  .	U�� ��� l ..��������  ��  ��  � ��� l ..������  �  PREPARE THE TEMPLATE	   � ��� * P R E P A R E   T H E   T E M P L A T E 	� ��� l ..������  �  LEFT SIDE (FORM FIELDS)   � ��� . L E F T   S I D E   ( F O R M   F I E L D S )� ��� r  .3��� m  .1�� ���  N a m e :    � o      ���� 0 l_1  � ��� r  49��� m  47�� ���  E m a i l :    � o      ���� 0 l_2  � ��� r  :C��� b  :A��� m  :=�� ���  P h o n e   N u m b e r s :� o  =@��
�� 
ret � o      ���� 0 l_3  � ��� r  DM��� b  DK��� m  DG�� ���  A d d r e s s e s :� o  GJ��
�� 
ret � o      ���� 0 l_4  � ��� r  NS��� m  NQ�� ���  N o t e s :� o      ���� 0 l_5  � ��� l TT��������  ��  ��  � ��� l TT������  �  GET EMAIL INFO   � ���  G E T   E M A I L   I N F O� ��� Q  T������ k  W��� ��� r  W]��� J  WY����  � o      ����  0 list_addresses list_Addresses� ��� r  ^g��� l ^c������ n  ^c��� 1  _c��
�� 
EmAd� o  ^_���� 0 theprops theProps��  ��  � o      ���� 0 email_items email_Items� ���� X  h������ k  z��� ��� r  z���� l z������� c  z���� n  z���� m  }���
�� 
type� o  z}���� 0 
email_item 
email_Item� m  ����
�� 
ctxt��  ��  � o      ���� 0 the_type the_Type� ��� r  ����� c  ����� b  ����� b  ����� b  ��   b  �� l ������ n  �� 1  ����
�� 
radd o  ������ 0 
email_item 
email_Item��  ��   m  �� �    ( n ��	
	 I  �������� 0 	titlecase 	TITLECASE �� o  ������ 0 the_type the_Type��  ��  
  f  ��� m  �� �  )� o  ����
�� 
ret � m  ����
�� 
ctxt� o      ���� 0 	addr_item 	addr_Item� �� s  �� o  ������ 0 	addr_item 	addr_Item l     ���� n        ;  �� o  ������  0 list_addresses list_Addresses��  ��  ��  �� 0 
email_item 
email_Item� o  kn���� 0 email_items email_Items��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  �  l ����������  ��  ��    l ������   . (GET PHONE INFO AND ENCODE TELEPHONE LINK    � P G E T   P H O N E   I N F O   A N D   E N C O D E   T E L E P H O N E   L I N K  Q  �m�� k  �d   !"! r  ��#$# J  ������  $ o      ���� 0 
list_phone 
list_Phone" %&% Z  ��'(����' > ��)*) n  ��+,+ 1  ����
�� 
bsNm, o  ������ 0 theprops theProps* m  ����
�� 
msng( k  ��-- ./. r  ��010 l ��2����2 n  ��343 1  ����
�� 
bsNm4 o  ������ 0 theprops theProps��  ��  1 o      ���� 0 b_number b_Number/ 565 r  ��787 b  ��9:9 b  ��;<; m  ��== �>>  - W o r k :    < o  ������ 0 b_number b_Number: o  ����
�� 
ret 8 o      ���� 0 b_string b_String6 ?��? s  ��@A@ o  ������ 0 b_string b_StringA n      BCB  ;  ��C o  ������ 0 
list_phone 
list_Phone��  ��  ��  & DED Z  �1FG����F > �HIH n  �JKJ 1   ��
�� 
hmNmK o  � ���� 0 theprops thePropsI m  ��
�� 
msngG k  -LL MNM r  OPO l Q����Q n  RSR 1  ��
�� 
hmNmS o  ���� 0 theprops theProps��  ��  P o      ���� 0 h_number h_NumberN TUT r  $VWV b   XYX b  Z[Z m  \\ �]]  - H o m e :    [ o  ���� 0 h_number h_NumberY o  ��
�� 
ret W o      ���� 0 h_string h_StringU ^��^ s  %-_`_ o  %(���� 0 h_string h_String` n      aba  ;  +,b o  (+���� 0 
list_phone 
list_Phone��  ��  ��  E c��c Z  2dde����d > 2;fgf n  27hih 1  37��
�� 
mbNmi o  23���� 0 theprops thePropsg m  7:��
�� 
msnge k  >`jj klk r  >Gmnm l >Co����o n  >Cpqp 1  ?C��
�� 
mbNmq o  >?���� 0 theprops theProps��  ��  n o      ���� 0 m_number m_Numberl rsr r  HWtut b  HSvwv b  HOxyx m  HKzz �{{  - M o b i l e :    y o  KN���� 0 m_number m_Numberw o  OR��
�� 
ret u o      ���� 0 m_string m_Strings |��| s  X`}~} o  X[���� 0 m_string m_String~ n      �  ;  ^_� o  [^���� 0 
list_phone 
list_Phone��  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   ��� l nn��������  ��  ��  � ��� l nn������  �  GET ADDRESS INFO   � ���   G E T   A D D R E S S   I N F O� ��� Q  n������ k  q�� ��� r  qw��� J  qs����  � o      ���� 0 	list_addr 	list_Addr� ��� l xx��������  ��  ��  � ��� l  xx������  �  	BUSINESS    � ���  B U S I N E S S  � ��� Z  x������� > x���� n  x}��� 1  y}�~
�~ 
bStA� o  xy�}�} 0 theprops theProps� m  }��|
�| 
msng� k  ���� ��� r  ����� l ����{�z� n  ����� 1  ���y
�y 
bStA� o  ���x�x 0 theprops theProps�{  �z  � o      �w�w 0 b_str b_Str� ��� r  ����� n ����� I  ���v��u�v 0 
encodedurl 
encodedURL� ��t� o  ���s�s 0 b_str b_Str�t  �u  �  f  ��� o      �r�r 0 b_gstr b_gStr� ��� Z  �����q�� > ����� l ����p�o� n  ����� 1  ���n
�n 
bCty� o  ���m�m 0 theprops theProps�p  �o  � m  ���l
�l 
msng� k  ���� ��� r  ����� l ����k�j� n  ����� 1  ���i
�i 
bCty� o  ���h�h 0 theprops theProps�k  �j  � o      �g�g 0 b_cit b_Cit� ��f� r  ����� n ����� I  ���e��d�e 0 
encodedurl 
encodedURL� ��c� o  ���b�b 0 b_cit b_Cit�c  �d  �  f  ��� o      �a�a 0 b_gcit b_gCit�f  �q  � k  ���� ��� r  ����� m  ���� ���  � o      �`�` 0 b_cit b_Cit� ��_� r  ����� m  ���� ���  � o      �^�^ 0 b_gcit b_gCit�_  � ��� Z  ����]�� > ����� l ����\�[� n  ����� 1  ���Z
�Z 
bSta� o  ���Y�Y 0 theprops theProps�\  �[  � m  ���X
�X 
msng� k  ���� ��� r  ����� l ����W�V� n  ����� 1  ���U
�U 
bSta� o  ���T�T 0 theprops theProps�W  �V  � o      �S�S 0 b_sta b_Sta� ��R� r  ����� n ����� I  ���Q��P�Q 0 
encodedurl 
encodedURL� ��O� o  ���N�N 0 b_sta b_Sta�O  �P  �  f  ��� o      �M�M 0 b_gsta b_gSta�R  �]  � k  ��� ��� r  ����� m  ���� ���  � o      �L�L 0 b_sta b_Sta� ��K� r  ���� m  � �� ���  � o      �J�J 0 b_gsta b_gSta�K  � ��� Z  9���I�� > � � l 
�H�G n  
 1  
�F
�F 
bZip o  �E�E 0 theprops theProps�H  �G    m  
�D
�D 
msng� k  '  r   l 	�C�B	 n  

 1  �A
�A 
bZip o  �@�@ 0 theprops theProps�C  �B   o      �?�? 0 b_zip b_Zip �> r  ' n # I  #�=�<�= 0 
encodedurl 
encodedURL �; o  �:�: 0 b_zip b_Zip�;  �<    f   o      �9�9 0 b_gzip b_gZip�>  �I  � k  *9  r  *1 m  *- �   o      �8�8 0 b_zip b_Zip �7 r  29 m  25 �   o      �6�6 0 b_gzip b_gZip�7  �   Z  :n!"�5#! > :C$%$ l :?&�4�3& n  :?'(' 1  ;?�2
�2 
bCou( o  :;�1�1 0 theprops theProps�4  �3  % m  ?B�0
�0 
msng" k  F\)) *+* r  FO,-, l FK.�/�.. n  FK/0/ 1  GK�-
�- 
bCou0 o  FG�,�, 0 theprops theProps�/  �.  - o      �+�+ 0 b_cou b_Cou+ 1�*1 r  P\232 n PX454 I  QX�)6�(�) 0 
encodedurl 
encodedURL6 7�'7 o  QT�&�& 0 b_cou b_Cou�'  �(  5  f  PQ3 o      �%�% 0 b_gcou b_gCou�*  �5  # k  _n88 9:9 r  _f;<; m  _b== �>>  < o      �$�$ 0 b_cou b_Cou: ?�#? r  gn@A@ m  gjBB �CC  A o      �"�" 0 b_gcou b_gCou�#    DED r  o�FGF b  o�HIH b  o�JKJ b  o�LML b  o�NON b  o�PQP b  o~RSR b  ozTUT b  ovVWV o  or�!�! 0 b_str b_StrW o  ru� 
�  
ret U o  vy�� 0 b_cit b_CitS m  z}XX �YY  ,  Q o  ~��� 0 b_sta b_StaO m  ��ZZ �[[     M o  ���� 0 b_zip b_ZipK o  ���
� 
ret I o  ���� 0 b_cou b_CouG o      �� 0 b_addr b_AddrE \]\ l ������  �  �  ] ^_^ l ���`a�  ` ! GOOGLE MAPS LOCATION IN URL   a �bb 6 G O O G L E   M A P S   L O C A T I O N   I N   U R L_ cdc r  ��efe b  ��ghg b  ��iji b  ��klk b  ��mnm b  ��opo b  ��qrq b  ��sts b  ��uvu o  ���� 0 b_gstr b_gStrv m  ��ww �xx  ,t o  ���� 0 b_gcit b_gCitr m  ��yy �zz  ,p o  ���� 0 b_gsta b_gStan m  ��{{ �||  ,l o  ���� 0 b_gzip b_gZipj m  ��}} �~~  ,h o  ���� 0 b_gcou b_gCouf o      �� 0 	b_gstring 	b_gStringd � r  ����� b  ����� m  ���� ��� < h t t p : / / m a p s . g o o g l e . c o m / m a p s ? q =� o  ���� 0 	b_gstring 	b_gString� o      �� 0 b_gmap b_GMAP� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  - W o r k :  � o  ���
� 
ret � o  ���� 0 b_addr b_Addr� o  ���
� 
ret � m  ���� ��� , ( L i n k   t o   G o o g l e   M a p :    � o  ���
�
 0 b_gmap b_GMAP� m  ���� ���  )� o  ���	
�	 
ret � o      �� 0 b_string b_String� ��� s  ����� o  ���� 0 b_string b_String� n      ���  ;  ��� o  ���� 0 	list_addr 	list_Addr�  ��  �  � ��� l ������  �  �  � ��� l  ������  �  HOME    � ��� 
 H O M E  � �� � Z  �������� > ���� n  ���� 1  ���
�� 
hStA� o  ������ 0 theprops theProps� m  ��
�� 
msng� k  {�� ��� r  ��� l ������ n  ��� 1  	��
�� 
hStA� o  	���� 0 theprops theProps��  ��  � o      ���� 0 h_str h_Str� ��� r  ��� n ��� I  ������� 0 
encodedurl 
encodedURL� ���� o  ���� 0 h_str h_Str��  ��  �  f  � o      ���� 0 h_gstr h_gStr� ��� Z  S������ > (��� l $������ n  $��� 1   $��
�� 
hCty� o   ���� 0 theprops theProps��  ��  � m  $'��
�� 
msng� k  +A�� ��� r  +4��� l +0������ n  +0��� 1  ,0��
�� 
hCty� o  +,���� 0 theprops theProps��  ��  � o      ���� 0 h_cit h_Cit� ���� r  5A��� n 5=��� I  6=������� 0 
encodedurl 
encodedURL� ���� o  69���� 0 h_cit h_Cit��  ��  �  f  56� o      ���� 0 h_gcit h_gCit��  ��  � k  DS�� ��� r  DK��� m  DG�� ���  � o      ���� 0 h_cit h_Cit� ���� r  LS��� m  LO�� ���  � o      ���� 0 h_gcit h_gCit��  � ��� Z  T������� > T]��� l TY������ n  TY��� 1  UY��
�� 
hSta� o  TU���� 0 theprops theProps��  ��  � m  Y\��
�� 
msng� k  `v�� ��� r  `i��� l `e������ n  `e��� 1  ae��
�� 
hSta� o  `a���� 0 theprops theProps��  ��  � o      ���� 0 h_sta h_Sta� ���� r  jv��� n jr��� I  kr������� 0 
encodedurl 
encodedURL� ���� o  kn���� 0 h_sta h_Sta��  ��  �  f  jk� o      ���� 0 h_gsta h_gSta��  ��  � k  y�    r  y� m  y| �   o      ���� 0 h_sta h_Sta �� r  ��	 m  ��

 �  	 o      ���� 0 h_gsta h_gSta��  �  Z  ���� > �� l ������ n  �� 1  ����
�� 
hZip o  ������ 0 theprops theProps��  ��   m  ����
�� 
msng k  ��  r  �� l ������ n  �� 1  ����
�� 
hZip o  ������ 0 theprops theProps��  ��   o      ���� 0 h_zip h_Zip �� r  ��  n ��!"! I  ����#���� 0 
encodedurl 
encodedURL# $��$ o  ������ 0 h_zip h_Zip��  ��  "  f  ��  o      ���� 0 h_gzip h_gZip��  ��   k  ��%% &'& r  ��()( m  ��** �++  ) o      ���� 0 h_zip h_Zip' ,��, r  ��-.- m  ��// �00  . o      ���� 0 h_gzip h_gZip��   121 Z  ��34��53 > ��676 l ��8����8 n  ��9:9 1  ����
�� 
hCou: o  ������ 0 theprops theProps��  ��  7 m  ����
�� 
msng4 k  ��;; <=< r  ��>?> l ��@����@ n  ��ABA 1  ����
�� 
hCouB o  ������ 0 theprops theProps��  ��  ? o      ���� 0 h_cou h_Cou= C��C r  ��DED n ��FGF I  ����H���� 0 
encodedurl 
encodedURLH I��I o  ������ 0 h_cou h_Cou��  ��  G  f  ��E o      ���� 0 h_gcou h_gCou��  ��  5 k  ��JJ KLK r  ��MNM m  ��OO �PP  N o      ���� 0 h_cou h_CouL Q��Q r  ��RSR m  ��TT �UU  S o      ���� 0 h_gcou h_gCou��  2 VWV r  �XYX b  �Z[Z b  �\]\ b  �^_^ b  �
`a` b  �bcb b  �ded b  ��fgf b  ��hih o  ������ 0 h_str h_Stri o  ����
�� 
ret g o  ������ 0 h_cit h_Cite m  �jj �kk  ,  c o  ���� 0 h_sta h_Staa m  	ll �mm     _ o  
���� 0 h_zip h_Zip] o  ��
�� 
ret [ o  ���� 0 h_cou h_CouY o      ���� 0 h_addr h_AddrW non l ��������  ��  ��  o pqp l ��rs��  r ! GOOGLE MAPS LOCATION IN URL   s �tt 6 G O O G L E   M A P S   L O C A T I O N   I N   U R Lq uvu r  Bwxw b  >yzy b  :{|{ b  6}~} b  2� b  .��� b  *��� b  &��� b  "��� o  ���� 0 h_gstr h_gStr� m  !�� ���  ,� o  "%���� 0 h_gcit h_gCit� m  &)�� ���  ,� o  *-���� 0 h_gsta h_gSta� m  .1�� ���  ,~ o  25���� 0 h_gzip h_gZip| m  69�� ���  ,z o  :=���� 0 h_gcou h_gCoux o      ���� 0 	h_gstring 	h_gStringv ��� r  CN��� b  CJ��� m  CF�� ��� < h t t p : / / m a p s . g o o g l e . c o m / m a p s ? q =� o  FI���� 0 	h_gstring 	h_gString� o      ���� 0 h_gmap h_GMAP� ��� r  Or��� b  On��� b  Oj��� b  Of��� b  Ob��� b  O^��� b  OZ��� b  OV��� m  OR�� ���  - H o m e :    � o  RU��
�� 
ret � o  VY���� 0 h_addr h_Addr� o  Z]��
�� 
ret � m  ^a�� ��� , ( L i n k   t o   G o o g l e   M a p :    � o  be���� 0 h_gmap h_GMAP� m  fi�� ���  )� o  jm��
�� 
ret � o      ���� 0 h_string h_String� ���� s  s{��� o  sv���� 0 h_string h_String� n      ���  ;  yz� o  vy���� 0 	list_addr 	list_Addr��  ��  ��  �   � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ������~��  �  �~  � ��� l ���}���}  �  RIGHT SIDE (DATA FIELDS)   � ��� 0 R I G H T   S I D E   ( D A T A   F I E L D S )� ��� r  ����� l ����|�{� n  ����� 1  ���z
�z 
dspn� o  ���y�y 0 theprops theProps�|  �{  � o      �x�x 0 r_1  � ��� r  ����� l ����w�v� c  ����� o  ���u�u  0 list_addresses list_Addresses� m  ���t
�t 
TEXT�w  �v  � o      �s�s 0 r_2  � ��� r  ����� l ����r�q� c  ����� o  ���p�p 0 
list_phone 
list_Phone� m  ���o
�o 
ctxt�r  �q  � o      �n�n 0 r_3  � ��� r  ����� l ����m�l� c  ����� o  ���k�k 0 	list_addr 	list_Addr� m  ���j
�j 
ctxt�m  �l  � o      �i�i 0 r_4  � ��� l ���h�g�f�h  �g  �f  � ��� l ���e���e  �  EXPORT VCARD DATA   � ��� " E X P O R T   V C A R D   D A T A� ��� r  ����� l ����d�c� n  ����� 1  ���b
�b 
vCrd� o  ���a�a 0 theprops theProps�d  �c  � o      �`�` 0 
vcard_data  � ��� r  ����� m  ���� ���  . v c f� o      �_�_ 0 vcard_extension  � ��� r  ����� l ����^�]� I ���\�[�Z
�\ .misccurdldt    ��� null�[  �Z  �^  �]  � o      �Y�Y 0 item_created item_Created� ��� l ���X�W�V�X  �W  �V  � ��� l ���U���U  �  	THE NOTES   � ���  T H E   N O T E S� ��� Q  �����T� r  ����� n  ���	 � 1  ���S
�S 
PlTN	  o  ���R�R 0 theprops theProps� o      �Q�Q 0 	the_notes  � R      �P�O�N
�P .ascrerr ****      � ****�O  �N  �T  � 			 Z ��		�M�L	 = ��			 o  ���K�K 0 	the_notes  	 m  ���J
�J 
msng	 r  ��			 m  ��				 �	
	
  	 o      �I�I 0 	the_notes  �M  �L  	 			 l ���H�G�F�H  �G  �F  	 			 l ���E		�E  	  ASSEMBLE THE TEMPLATE   	 �		 * A S S E M B L E   T H E   T E M P L A T E	 			 r  �	<			 b  �	:			 b  �	6			 b  �	2			 b  �	.			 b  �	*			 b  �	&	 	!	  b  �	"	"	#	" b  �		$	%	$ b  �		&	'	& b  �		(	)	( b  �		*	+	* b  �		,	-	, b  �		.	/	. b  �	
	0	1	0 b  �		2	3	2 b  �		4	5	4 b  �	 	6	7	6 o  ���D�D 0 l_1  	7 o  ���C�C 0 r_1  	5 o  	 	�B
�B 
ret 	3 o  		�A�A 0 l_2  	1 o  			�@�@ 0 r_2  	/ o  	
	�?
�? 
ret 	- o  		�>�> 0 l_3  	+ o  		�=�= 0 r_3  	) o  		�<
�< 
ret 	' o  		�;�; 0 l_4  	% o  		�:�: 0 r_4  	# o  		!�9
�9 
ret 	! o  	"	%�8
�8 
ret 	 o  	&	)�7
�7 
ret 	 o  	*	-�6
�6 
ret 	 o  	.	1�5�5 0 	the_notes  	 o  	2	5�4
�4 
ret 	 o  	6	9�3
�3 
ret 	 o      �2�2 0 
thecontent 
theContent	 	8	9	8 r  	=	M	:	;	: n 	=	K	<	=	< I  	>	K�1	>�0�1 0 
write_file 
write_File	> 	?	@	? o  	>	A�/�/ 0 r_1  	@ 	A	B	A o  	A	D�.�. 0 
vcard_data  	B 	C�-	C o  	D	G�,�, 0 vcard_extension  �-  �0  	=  f  	=	>	; o      �+�+ 0 	the_vcard 	the_vCard	9 	D	E	D l 	N	N�*�)�(�*  �)  �(  	E 	F	G	F r  	N	S	H	I	H o  	N	Q�'�' 0 r_1  	I o      �&�& 0 oftitle OFTitle	G 	J	K	J l 	T	T�%�$�#�%  �$  �#  	K 	L�"	L l  	T	T�!	M	N�!  	M   // TASK ITEM    	N �	O	O    / /   T A S K   I T E M  �"  � 	P	Q	P = 	X	a	R	S	R o  	X	]� �  0 	the_class  	S m  	]	`	T	T �	U	U  T a s k	Q 	V�	V k  	d
�	W	W 	X	Y	X l 	d	d����  �  �  	Y 	Z	[	Z l 	d	d�	\	]�  	\  PREPARE THE TEMPLATE	   	] �	^	^ * P R E P A R E   T H E   T E M P L A T E 		[ 	_	`	_ l 	d	d�	a	b�  	a  LEFT SIDE (FORM FIELDS)   	b �	c	c . L E F T   S I D E   ( F O R M   F I E L D S )	` 	d	e	d r  	d	i	f	g	f m  	d	g	h	h �	i	i  N o t e :    	g o      �� 0 l_1  	e 	j	k	j r  	j	o	l	m	l m  	j	m	n	n �	o	o  P r i o r i t y :    	m o      �� 0 l_2  	k 	p	q	p r  	p	u	r	s	r m  	p	s	t	t �	u	u  D u e   D a t e :    	s o      �� 0 l_3  	q 	v	w	v r  	v	{	x	y	x m  	v	y	z	z �	{	{  S t a t u s :    	y o      �� 0 l_4  	w 	|	}	| r  	|	�	~		~ m  	|		�	� �	�	�  N o t e s :    	 o      �� 0 l_5  	} 	�	�	� l 	�	�����  �  �  	� 	�	�	� l 	�	��	�	��  	�  RIGHT SIDE (DATA FIELDS)   	� �	�	� 0 R I G H T   S I D E   ( D A T A   F I E L D S )	� 	�	�	� r  	�	�	�	�	� c  	�	�	�	�	� l 	�	�	���	� n  	�	�	�	�	� m  	�	��
� 
pcls	� o  	�	��� 0 theprops theProps�  �  	� m  	�	��
� 
ctxt	� o      �� 0 	propclass 	propClass	� 	�	�	� Z  	�	�	�	��
	�	� = 	�	�	�	�	� o  	�	��	�	 0 	propclass 	propClass	� m  	�	�	�	� �	�	�   i n c o m i n g   m e s s a g e	� r  	�	�	�	�	� l 	�	�	���	� n  	�	�	�	�	� 1  	�	��
� 
subj	� o  	�	��� 0 theprops theProps�  �  	� o      �� 0 r_1  �
  	� r  	�	�	�	�	� l 	�	�	���	� n  	�	�	�	�	� 1  	�	��
� 
pnam	� o  	�	�� �  0 theprops theProps�  �  	� o      ���� 0 r_1  	� 	�	�	� r  	�	�	�	�	� l 	�	�	�����	� n  	�	�	�	�	� 1  	�	���
�� 
prty	� o  	�	����� 0 theprops theProps��  ��  	� o      ���� 0 the_priority the_Priority	� 	�	�	� Z 	�	�	�	�����	� = 	�	�	�	�	� o  	�	����� 0 the_priority the_Priority	� m  	�	���
�� ePtyPrNr	� r  	�	�	�	�	� m  	�	�	�	� �	�	�  N o r m a l	� o      ���� 0 r_2  ��  ��  	� 	�	�	� Z 	�	�	�	�����	� = 	�	�	�	�	� o  	�	����� 0 the_priority the_Priority	� m  	�	���
�� ePtyPrHi	� r  	�	�	�	�	� m  	�	�	�	� �	�	�  H i g h	� o      ���� 0 r_2  ��  ��  	� 	�	�	� Z 	�	�	�	�����	� = 	�	�	�	�	� o  	�	����� 0 the_priority the_Priority	� m  	�	���
�� ePtyPrLo	� r  	�	�	�	�	� m  	�	�	�	� �	�	�  L o w	� o      ���� 0 r_2  ��  ��  	� 	�	�	� l 	�	���������  ��  ��  	� 	�	�	� r  	�	�	�	�	� l 	�	�	�����	� n  	�	�	�	�	� 1  	�	���
�� 
tDue	� o  	�	����� 0 theprops theProps��  ��  	� o      ���� 0 
theduedate 
theDueDate	� 	�	�	� r  	�
	�	�	� o  	�	����� 0 
theduedate 
theDueDate	� o      ���� 0 r_3  	� 	�	�	� r  

	�	�	� l 

		�����	� n  

		�	�	� 1  

	��
�� 
tCmp	� o  

���� 0 theprops theProps��  ��  	� o      ���� &0 thecompletiondate theCompletionDate	� 	�	�	� r  

	�	�	� l 

	�����	� n  

	�	�	� 1  

��
�� 
tStr	� o  

���� 0 theprops theProps��  ��  	� o      ���� 0 thestartdate theStartDate	� 	�	�	� r  

	�	�	� l 

	�����	� I 

������
�� .misccurdldt    ��� null��  ��  ��  ��  	� o      ���� 0 item_created item_Created	� 	�	�	� l 

��������  ��  ��  	� 	�	�	� l 

��	�	���  	�  TODO?   	� �	�	� 
 T O D O ?	� 	�	�	� Q  

B	�	���	� k  
!
9	�	� 	�	�	� r  
!
,	�	�	� c  
!
(	�	�	� l 
!
&	�����	� n  
!
&	�	�	� 1  
"
&��
�� 
tFlg	� o  
!
"���� 0 theprops theProps��  ��  	� m  
&
'��
�� 
ctxt	� o      ���� 0 	todo_flag 	todo_Flag	� 	���	� r  
-
9
 

  n 
-
5


 I  
.
5��
���� 0 	titlecase 	TITLECASE
 
��
 o  
.
1���� 0 	todo_flag 	todo_Flag��  ��  
  f  
-
.
 o      ���� 0 r_4  ��  	� R      ������
�� .ascrerr ****      � ****��  ��  ��  	� 


 l 
C
C��������  ��  ��  
 

	
 l 
C
C��


��  

  	THE NOTES   
 �

  T H E   N O T E S
	 


 Q  
C
X

��
 r  
F
O


 n  
F
K


 1  
G
K��
�� 
PlTC
 o  
F
G���� 0 theprops theProps
 o      ���� 0 	the_notes  
 R      ������
�� .ascrerr ****      � ****��  ��  ��  
 


 Z 
Y
n

����
 = 
Y
`


 o  
Y
\���� 0 	the_notes  
 m  
\
_��
�� 
msng
 r  
c
j


 m  
c
f

 �

  
 o      ���� 0 	the_notes  ��  ��  
 

 
 l 
o
o��������  ��  ��  
  
!
"
! l 
o
o��
#
$��  
#  ASSEMBLE THE TEMPLATE   
$ �
%
% * A S S E M B L E   T H E   T E M P L A T E
" 
&
'
& r  
o
�
(
)
( b  
o
�
*
+
* b  
o
�
,
-
, b  
o
�
.
/
. b  
o
�
0
1
0 b  
o
�
2
3
2 b  
o
�
4
5
4 b  
o
�
6
7
6 b  
o
�
8
9
8 b  
o
�
:
;
: b  
o
�
<
=
< b  
o
�
>
?
> b  
o
�
@
A
@ b  
o
�
B
C
B b  
o
~
D
E
D b  
o
z
F
G
F b  
o
x
H
I
H b  
o
t
J
K
J o  
o
p���� 0 l_1  
K o  
p
s���� 0 r_1  
I o  
t
w��
�� 
ret 
G o  
x
y���� 0 l_2  
E o  
z
}���� 0 r_2  
C o  
~
���
�� 
ret 
A o  
�
����� 0 l_3  
? o  
�
����� 0 r_3  
= o  
�
���
�� 
ret 
; o  
�
����� 0 l_4  
9 o  
�
����� 0 r_4  
7 o  
�
���
�� 
ret 
5 o  
�
���
�� 
ret 
3 o  
�
���
�� 
ret 
1 o  
�
���
�� 
ret 
/ o  
�
����� 0 	the_notes  
- o  
�
���
�� 
ret 
+ o  
�
���
�� 
ret 
) o      ���� 0 
thecontent 
theContent
' 
L
M
L l 
�
���������  ��  ��  
M 
N
O
N l 
�
���������  ��  ��  
O 
P
Q
P l 
�
���
R
S��  
R  EXPORT VCARD DATA   
S �
T
T " E X P O R T   V C A R D   D A T A
Q 
U
V
U Z  
�
�
W
X����
W > 
�
�
Y
Z
Y o  
�
����� 0 	propclass 	propClass
Z m  
�
�
[
[ �
\
\   i n c o m i n g   m e s s a g e
X k  
�
�
]
] 
^
_
^ r  
�
�
`
a
` m  
�
�
b
b �
c
c  . i c s
a o      ���� 0 vcard_extension  
_ 
d
e
d r  
�
�
f
g
f l 
�
�
h����
h n  
�
�
i
j
i 1  
�
���
�� 
iCal
j o  
�
����� 0 theprops theProps��  ��  
g o      ���� 0 
vcard_data  
e 
k��
k r  
�
�
l
m
l n 
�
�
n
o
n I  
�
���
p���� 0 
write_file 
write_File
p 
q
r
q o  
�
����� 0 r_1  
r 
s
t
s o  
�
����� 0 
vcard_data  
t 
u��
u o  
�
��� 0 vcard_extension  ��  ��  
o  f  
�
�
m o      �~�~ 0 	the_vcard 	the_vCard��  ��  ��  
V 
v
w
v l 
�
��}�|�{�}  �|  �{  
w 
x
y
x r  
�
�
z
{
z o  
�
��z�z 0 r_1  
{ o      �y�y 0 oftitle OFTitle
y 
|
}
| l 
�
��x�w�v�x  �w  �v  
} 
~�u
~ l  
�
��t

��t  
   // MESSAGE ITEM    
� �
�
� "   / /   M E S S A G E   I T E M  �u  �  � k  
�u
�
� 
�
�
� l 
�
��s�r�q�s  �r  �q  
� 
�
�
� l 
�
��p
�
��p  
�  GET EMAIL INFO   
� �
�
�  G E T   E M A I L   I N F O
� 
�
�
� r  
�
�
�
�
� l 
�
�
��o�n
� n  
�
�
�
�
� 1  
�
��m
�m 
sndr
� o  
�
��l�l 0 theprops theProps�o  �n  
� o      �k�k 0 
the_sender 
the_Sender
� 
�
�
� r  
�
�
�
� l 
�
�
��j�i
� n  
�
�
�
�
� 1  
�
��h
�h 
radd
� o  
�
��g�g 0 
the_sender 
the_Sender�j  �i  
� o      �f�f 0 s_name s_Name
� 
�
�
� r  
�
�
� l 	
��e�d
� n  	
�
�
� 1  	�c
�c 
radd
� o  �b�b 0 
the_sender 
the_Sender�e  �d  
� o      �a�a 0 	s_address 	s_Address
� 
�
�
� l �`�_�^�`  �_  �^  
� 
�
�
� l �]
�
��]  
� % REPLACE WITH NAME, IF AVAILABLE   
� �
�
� > R E P L A C E   W I T H   N A M E ,   I F   A V A I L A B L E
� 
�
�
� Q  #
�
��\
� r  
�
�
� l 
��[�Z
� n  
�
�
� 1  �Y
�Y 
pnam
� o  �X�X 0 
the_sender 
the_Sender�[  �Z  
� o      �W�W 0 s_name s_Name
� R      �V�U�T
�V .ascrerr ****      � ****�U  �T  �\  
� 
�
�
� l $$�S�R�Q�S  �R  �Q  
� 
�
�
� l $$�P�O�N�P  �O  �N  
� 
�
�
� l $$�M
�
��M  
�  GET CATEGORY INFO   
� �
�
� " G E T   C A T E G O R Y   I N F O
� 
�
�
� r  $-
�
�
� l $)
��L�K
� n  $)
�
�
� m  %)�J
�J 
cCtg
� o  $%�I�I 0 theprops theProps�L  �K  
� o      �H�H 0 the_cats the_Cats
� 
�
�
� r  .4
�
�
� J  .0�G�G  
� o      �F�F 0 	list_cats 	list_Cats
� 
�
�
� r  5@
�
�
� l 5<
��E�D
� I 5<�C
��B
�C .corecnte****       ****
� o  58�A�A 0 the_cats the_Cats�B  �E  �D  
� o      �@�@ 0 	count_cat 	count_Cat
� 
�
�
� X  A�
��?
�
� k  S�
�
� 
�
�
� r  S^
�
�
� l SZ
��>�=
� c  SZ
�
�
� n  SX
�
�
� 1  VX�<
�< 
pnam
� o  SV�;�; 0 the_cat the_Cat
� m  XY�:
�: 
ctxt�>  �=  
� o      �9�9 0 cat_name cat_Name
� 
�
�
� s  _g
�
�
� o  _b�8�8 0 cat_name cat_Name
� l     
��7�6
� n      
�
�
�  ;  ef
� o  be�5�5 0 	list_cats 	list_Cats�7  �6  
� 
��4
� Z  h�
�
��3
�
� ?  hm
�
�
� o  hk�2�2 0 	count_cat 	count_Cat
� m  kl�1�1 
� k  p�
�
� 
�
�
� s  px
�
�
� m  ps
�
� �
�
�  ,  
� l     
��0�/
� n      
�
�
�  ;  vw
� o  sv�.�. 0 	list_cats 	list_Cats�0  �/  
� 
��-
� r  y�
�
�
� l y~
��,�+
� \  y~
�
�
� o  y|�*�* 0 	count_cat 	count_Cat
� m  |}�)�) �,  �+  
� o      �(�( 0 	count_cat 	count_Cat�-  �3  
� r  ��
�
�
� l ��
��'�&
� \  ��
�
�
� o  ���%�% 0 	count_cat 	count_Cat
� m  ���$�$ �'  �&  
� o      �#�# 0 	count_cat 	count_Cat�4  �? 0 the_cat the_Cat
� o  DG�"�" 0 the_cats the_Cats
� 
�
�
� l ���!� ��!  �   �  
� 
�
�
� l ���
�
��  
�  RIGHT SIDE (DATA FIELDS)   
� �
�
� 0 R I G H T   S I D E   ( D A T A   F I E L D S )
�    r  �� l ���� n  �� 1  ���
� 
subj o  ���� 0 theprops theProps�  �   o      �� 0 m_sub m_Sub  Z  ��	
�	 = �� o  ���� 0 m_sub m_Sub m  ���
� 
msng
 r  �� m  �� �  < N o   S u b j e c t > o      �� 0 r_2  �   r  �� J  �� � n  �� 1  ���
� 
subj o  ���� 0 theprops theProps�   o      �� 0 r_2    r  �� l ���� n  �� 1  ���
� 
tims o  ���� 0 theprops theProps�  �   o      �� 0 r_3     r  ��!"! o  ���� 0 	list_cats 	list_Cats" o      �
�
 0 r_4    #$# l ���	���	  �  �  $ %&% r  ��'(' c  ��)*) n  ��+,+ 1  ���
� 
ID  , o  ���� 0 theprops theProps* m  ���
� 
TEXT( o      �� 0 theid theID& -.- r  ��/0/ o  ���� 0 r_3  0 o      �� 0 item_created item_Created. 121 r  ��343 o  ��� �  0 r_2  4 o      ���� 0 oftitle OFTitle2 565 l ����������  ��  ��  6 787 r  ��9:9 l ��;����; n  ��<=< 1  ����
�� 
tDue= o  ������ 0 theprops theProps��  ��  : o      ���� 0 
theduedate 
theDueDate8 >?> r  ��@A@ l ��B����B n  ��CDC 1  ����
�� 
tCmpD o  ������ 0 theprops theProps��  ��  A o      ���� &0 thecompletiondate theCompletionDate? EFE r  �GHG l �I����I n  �JKJ 1  ���
�� 
tStrK o  ������ 0 theprops theProps��  ��  H o      ���� 0 thestartdate theStartDateF LML l ��������  ��  ��  M NON r  PQP c  RSR l 	T����T n  	UVU 1  	��
�� 
tFlgV o  ���� 0 theprops theProps��  ��  S m  	
��
�� 
ctxtQ o      ���� 0 oflag oFlagO WXW Z  !YZ����Y = [\[ o  ���� 0 oflag oFlag\ m  ]] �^^  n o t   c o m p l e t e dZ r  _`_ m  ��
�� boovtrue` o      ���� 0 theflag theFlag��  ��  X aba l ""��������  ��  ��  b cdc l ""��ef��  e  PROCESS EMAIL CONTENT   f �gg * P R O C E S S   E M A I L   C O N T E N Td hih r  "+jkj n  "'lml 1  #'��
�� 
PlTCm o  "#���� 0 theprops thePropsk o      ���� 0 	m_content 	m_Contenti n��n r  ,uopo b  ,sqrq b  ,osts b  ,kuvu b  ,gwxw b  ,cyzy b  ,_{|{ b  ,[}~} b  ,W� b  ,S��� b  ,O��� b  ,K��� b  ,G��� b  ,C��� b  ,?��� b  ,;��� b  ,7��� b  ,3��� m  ,/�� ���  N a m e :  � o  /2���� 0 s_name s_Name� o  36��
�� 
ret � m  7:�� ���  S u b j e c t :  � o  ;>���� 0 r_2  � o  ?B��
�� 
ret � m  CF�� ���  S e n t :  � o  GJ���� 0 r_3  � o  KN��
�� 
ret � m  OR�� ���  C a t e g o r y :  � o  SV���� 0 r_4  ~ o  WZ��
�� 
ret | o  [^��
�� 
ret z o  _b��
�� 
ret x o  cf��
�� 
ret v o  gj���� 0 	m_content 	m_Contentt o  kn��
�� 
ret r o  or��
�� 
ret p o      ���� 0 
thecontent 
theContent��  � ��� l vv��������  ��  ��  � ��� l vv������  �  CREATE IN OMNIFOCUS   � ��� & C R E A T E   I N   O M N I F O C U S� ��� O  v���� O  z���� r  ����� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
FCit� �����
�� 
prdt� K  ���� ����
�� 
pnam� o  ������ 0 oftitle OFTitle� ����
�� 
FCno� o  ������ 0 
thecontent 
theContent� ����
�� 
FCfl� o  ������ 0 theflag theFlag� ����
�� 
FCDd� o  ������ 0 
theduedate 
theDueDate� ����
�� 
FCdc� o  ������ &0 thecompletiondate theCompletionDate� �����
�� 
FCDs� o  ������ 0 thestartdate theStartDate��  ��  � o      ���� 0 newtask NewTask� l z~������ 4 z~���
�� 
docu� m  |}���� ��  ��  � m  vw���                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l ����������  ��  ��  � ��� l ��������  �  ATTACH VCARD (IF PRESENT)   � ��� 2 A T T A C H   V C A R D   ( I F   P R E S E N T )� ��� Z ��������� > ����� o  ������ 0 	the_vcard 	the_vCard� J  ������  � n ����� I  ��������� 0 vcard_attach vCard_Attach� ��� o  ������ 0 	the_vcard 	the_vCard� ��� o  ������ 0 theprops theProps� ���� o  ������ 0 newtask NewTask��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � 7 1IF ATTACHMENTS PRESENT, RUN ATTACHMENT SUBROUTINE   � ��� b I F   A T T A C H M E N T S   P R E S E N T ,   R U N   A T T A C H M E N T   S U B R O U T I N E� ��� Z ��������� > ����� o  ������  0 theattachments theAttachments� J  ������  � n ����� I  ���������  0 message_attach message_Attach� ��� o  ������  0 theattachments theAttachments� ��� o  ������ 0 theprops theProps� ���� o  ������ 0 newtask NewTask��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � E ?ITEM HAS FINISHED! COUNT IT AS A SUCCESS AND RESET ATTACHMENTS!   � ��� ~ I T E M   H A S   F I N I S H E D !   C O U N T   I T   A S   A   S U C C E S S   A N D   R E S E T   A T T A C H M E N T S !� ��� r  ����� [  ����� o  ������ 0 successcount successCount� m  ������ � o      ���� 0 successcount successCount� ���� r  ����� J  ������  � o      ����  0 theattachments theAttachments��  �� 0 selecteditem selectedItem� o   G H���� 0 selecteditems selectedItems��  ��  _ 5     �����
�� 
capp� m    �� ��� * c o m . m i c r o s o f t . O u t l o o k
�� kfrmID  Y ��� l     ��������  ��  ��  � ��� l      ����  � r l 
======================================
// UTILITY SUBROUTINES 
======================================
   � �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U T I L I T Y   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
�  l     �~�}�|�~  �}  �|    l     �{�{    
URL ENCODE    �  U R L   E N C O D E 	 i   G J

 I      �z�y�z 0 
encodedurl 
encodedURL �x o      �w�w 0 the_word the_Word�x  �y   k       r      b      b      m      � 0 p h p   - r   ' e c h o   u r l e n c o d e ( " o    �v�v 0 the_word the_Word m     �  " ) ; ' o      �u�u 0 scpt   �t L     I   �s�r
�s .sysoexecTEXT���     TEXT o    	�q�q 0 scpt  �r  �t  	  l     �p�o�n�p  �o  �n    !  l     �m"#�m  "  	TITLECASE   # �$$  T I T L E C A S E! %&% i   K N'(' I      �l)�k�l 0 	titlecase 	TITLECASE) *�j* o      �i�i 0 txt  �j  �k  ( L     
++ I    	�h,�g
�h .sysoexecTEXT���     TEXT, b     -.- m     // �00 � p y t h o n   - c   " i m p o r t   s y s ;   p r i n t   u n i c o d e ( s y s . a r g v [ 1 ] ,   ' u t f 8 ' ) . t i t l e ( ) . e n c o d e ( ' u t f 8 ' ) "  . n    121 1    �f
�f 
strq2 o    �e�e 0 txt  �g  & 343 l     �d�c�b�d  �c  �b  4 565 l     �a78�a  7  SORT SUBROUTINE   8 �99  S O R T   S U B R O U T I N E6 :;: i   O R<=< I      �`>�_�` 0 simple_sort  > ?�^? o      �]�] 0 my_list  �^  �_  = k     u@@ ABA r     CDC J     �\�\  D l     E�[�ZE o      �Y�Y 0 
index_list  �[  �Z  B FGF r    	HIH J    �X�X  I l     J�W�VJ o      �U�U 0 sorted_list  �W  �V  G KLK U   
 rMNM k    mOO PQP r    RSR m    TT �UU  S l     V�T�SV o      �R�R 0 low_item  �T  �S  Q WXW Y    cY�QZ[�PY Z   ) ^\]�O�N\ H   ) -^^ E  ) ,_`_ l  ) *a�M�La o   ) *�K�K 0 
index_list  �M  �L  ` o   * +�J�J 0 i  ] k   0 Zbb cdc r   0 8efe c   0 6ghg n   0 4iji 4   1 4�Ik
�I 
cobjk o   2 3�H�H 0 i  j o   0 1�G�G 0 my_list  h m   4 5�F
�F 
ctxtf o      �E�E 0 	this_item  d l�Dl Z   9 Zmno�Cm =  9 <pqp l  9 :r�B�Ar o   9 :�@�@ 0 low_item  �B  �A  q m   : ;ss �tt  n k   ? Fuu vwv r   ? Bxyx o   ? @�?�? 0 	this_item  y l     z�>�=z o      �<�< 0 low_item  �>  �=  w {�;{ r   C F|}| o   C D�:�: 0 i  } l     ~�9�8~ o      �7�7 0 low_item_index  �9  �8  �;  o � A I L��� o   I J�6�6 0 	this_item  � l  J K��5�4� o   J K�3�3 0 low_item  �5  �4  � ��2� k   O V�� ��� r   O R��� o   O P�1�1 0 	this_item  � l     ��0�/� o      �.�. 0 low_item  �0  �/  � ��-� r   S V��� o   S T�,�, 0 i  � l     ��+�*� o      �)�) 0 low_item_index  �+  �*  �-  �2  �C  �D  �O  �N  �Q 0 i  Z m    �(�( [ l   $��'�&� n    $��� m   ! #�%
�% 
nmbr� n   !��� 2   !�$
�$ 
cobj� o    �#�# 0 my_list  �'  �&  �P  X ��� r   d h��� l  d e��"�!� o   d e� �  0 low_item  �"  �!  � l     ���� n      ���  ;   f g� o   e f�� 0 sorted_list  �  �  � ��� r   i m��� l  i j���� o   i j�� 0 low_item_index  �  �  � l     ���� n      ���  ;   k l� l  j k���� o   j k�� 0 
index_list  �  �  �  �  �  N l   ���� l   ���� n    ��� m    �
� 
nmbr� n   ��� 2   �
� 
cobj� o    �� 0 my_list  �  �  �  �  L ��� L   s u�� l  s t���
� o   s t�	�	 0 sorted_list  �  �
  �  ; ��� l     ����  �  �  � ��� l     ����  �  REPLACE   � ���  R E P L A C E� ��� i   S V��� I      ���� 0 replacestring replaceString� ��� o      �� 0 	thestring 	theString� ��� o      �� &0 theoriginalstring theOriginalString� �� � o      ���� 0 thenewstring theNewString�   �  � k     p�� ��� r     ��� m     ����  � o      ���� 0 thenum theNum� ��� r    ��� J    
�� ��� n   ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� o    ���� &0 theoriginalstring theOriginalString��  � J      �� ��� o      ���� 0 od  � ���� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr��  � ��� r    !��� n    ��� 2   ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ����  0 thestringparts theStringParts� ��� Z   " g������� ?  " )��� l  " '������ I  " '�����
�� .corecnte****       ****� o   " #����  0 thestringparts theStringParts��  ��  ��  � m   ' (���� � k   , c�� ��� r   , 4��� c   , 2��� n   , 0��� 4   - 0���
�� 
citm� m   . /���� � o   , -����  0 thestringparts theStringParts� m   0 1��
�� 
TEXT� o      ���� 0 	thestring 	theString� ���� X   5 c����� k   O ^�� ��� r   O X��� c   O V��� b   O T��� b   O R��� o   O P���� 0 	thestring 	theString� o   P Q���� 0 thenewstring theNewString� o   R S���� 0 eachpart eachPart� m   T U��
�� 
TEXT� o      ���� 0 	thestring 	theString� ���� r   Y ^��� [   Y \��� o   Y Z���� 0 thenum theNum� m   Z [���� � o      ���� 0 thenum theNum��  �� 0 eachpart eachPart� n   8 C��� 7  9 C�� 
�� 
cobj  m   = ?����  m   @ B������� o   8 9����  0 thestringparts theStringParts��  ��  ��  �  r   h m o   h i���� 0 od   n      1   j l��
�� 
txdl 1   i j��
�� 
ascr �� L   n p		 o   n o���� 0 	thestring 	theString��  � 

 l     ��������  ��  ��    l     ��������  ��  ��    l      ����   v p 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
    � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   A T T A C H M E N T   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
  l     ��������  ��  ��    l     ����    CLEAN TITLE FOR FILENAME    � 0 C L E A N   T I T L E   F O R   F I L E N A M E  i   W Z I      ������ 0 clean_title clean_Title �� o      ���� 0 rawfilename rawFileName��  ��   k     L   !"! r     #$# n    %&% 1    ��
�� 
txdl& 1     ��
�� 
ascr$ o      ���� &0 previousdelimiter previousDelimiter" '(' r    	)*) o    ���� 0 rawfilename rawFileName* o      ���� 0 potentialname potentialName( +,+ r   
 -.- J   
 ����  . o      ���� 0 	legalname 	legalName, /0/ r    121 J    33 454 m    66 �77  .5 898 m    :: �;;  ,9 <=< m    >> �??  /= @A@ m    BB �CC  :A DED m    FF �GG  [E H��H m    II �JJ  ]��  2 o      ���� &0 illegalcharacters illegalCharacters0 KLK X    IM��NM k   , DOO PQP r   , 1RSR c   , /TUT o   , -���� 0 thischaracter thisCharacterU m   - .��
�� 
ctxtS o      ���� 0 thischaracter thisCharacterQ V��V Z   2 DWX��YW H   2 6ZZ E  2 5[\[ o   2 3���� &0 illegalcharacters illegalCharacters\ o   3 4���� 0 thischaracter thisCharacterX r   9 =]^] o   9 :���� 0 thischaracter thisCharacter^ l     _����_ n      `a`  ;   ; <a o   : ;���� 0 	legalname 	legalName��  ��  ��  Y r   @ Dbcb m   @ Add �ee  _c l     f����f n      ghg  ;   B Ch o   A B���� 0 	legalname 	legalName��  ��  ��  �� 0 thischaracter thisCharacterN l    i����i n     jkj 2    ��
�� 
cha k o    ���� 0 potentialname potentialName��  ��  L l��l L   J Lmm o   J K���� 0 	legalname 	legalName��   non l     ��������  ��  ��  o pqp l     ��rs��  r  WRITE THE FILE   s �tt  W R I T E   T H E   F I L Eq uvu i   [ ^wxw I      ��y���� 0 
write_file 
write_Filey z{z o      ���� 0 r_1  { |}| o      ���� 0 
vcard_data  } ~��~ o      ���� 0 vcard_extension  ��  ��  x k     t ��� r     ��� c     	��� l    ������ b     ��� l    ������ I    �����
�� .earsffdralis        afdr� m     ��
�� afdmdesk��  ��  ��  � m    �� ��� 2 T e m p   E x p o r t   F r o m   O u t l o o k :��  ��  � m    ��
�� 
TEXT� o      ���� 0 exportfolder ExportFolder� ��� r    ��� n   ��� I    ������� 0 f_exists  � ���� o    ���� 0 exportfolder ExportFolder��  ��  �  f    � o      ���� 0 saveloc SaveLoc� ��� r    #��� l   !������ b    !��� n   ��� I    ������� 0 clean_title clean_Title� ���� o    ���� 0 r_1  ��  ��  �  f    � o     ���� 0 vcard_extension  ��  ��  � o      ���� 0 filename fileName� ��� r   $ )��� l  $ '������ b   $ '��� o   $ %���� 0 exportfolder ExportFolder� o   % &���� 0 filename fileName��  ��  � o      �� 0 thefilename theFileName� ��~� Q   * t���� k   - R�� ��� I  - 7�}��
�} .rdwropenshor       file� 4   - 1�|�
�| 
file� o   / 0�{�{ 0 thefilename theFileName� �z��y
�z 
perm� m   2 3�x
�x boovtrue�y  � ��� I  8 D�w��
�w .rdwrwritnull���     ****� o   8 9�v�v 0 
vcard_data  � �u��
�u 
refn� 4   : >�t�
�t 
file� o   < =�s�s 0 thefilename theFileName� �r��q
�r 
as  � m   ? @�p
�p 
TEXT�q  � ��� I  E M�o��n
�o .rdwrclosnull���     ****� 4   E I�m�
�m 
file� o   G H�l�l 0 thefilename theFileName�n  � ��� L   N P�� o   N O�k�k 0 thefilename theFileName� ��j� l  Q Q�i�h�g�i  �h  �g  �j  � R      �f��e
�f .ascrerr ****      � ****� o      �d�d 0 errormessage errorMessage�e  � k   Z t�� ��� I  Z _�c��b
�c .ascrcmnt****      � ****� o   Z [�a�a 0 errormessage errorMessage�b  � ��`� Q   ` t���_� I  c k�^��]
�^ .rdwrclosnull���     ****� 4   c g�\�
�\ 
file� o   e f�[�[ 0 thefilename theFileName�]  � R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  �_  �`  �~  v ��� l     �W�V�U�W  �V  �U  � ��� l     �T���T  �  FOLDER EXISTS   � ���  F O L D E R   E X I S T S� ��� i   _ b��� I      �S��R�S 0 f_exists  � ��Q� o      �P�P 0 exportfolder ExportFolder�Q  �R  � Q     /���� k    �� ��� r    
��� l   ��O�N� I   �M��L
�M .earsffdralis        afdr� m    �K
�K afdrcusr�L  �O  �N  � o      �J�J 0 mypath myPath� ��� e    �� c    ��� o    �I�I 0 exportfolder ExportFolder� m    �H
�H 
alis� ��G� r    ��� o    �F�F 0 exportfolder ExportFolder� o      �E�E 0 saveloc SaveLoc�G  � R      �D�C�B
�D .ascrerr ****      � ****�C  �B  � O   /��� I  " .�A�@�
�A .corecrel****      � null�@  � �?��
�? 
kocl� m   $ %�>
�> 
cfol� �=��<
�= 
prdt� K   & *�� �;��:
�; 
pnam� m   ' (�� ��� 0 T e m p   E x p o r t   F r o m   O u t l o o k�:  �<  � m    ���                                                                                  MACS  alis    t  Macintosh HD               �`iYH+     !
Finder.app                                                      �����w        ����  	                CoreServices    �`��      ��o�       !         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l     �9�8�7�9  �8  �7  � ��� l     �6���6  �  VCARD PROCESSING   � ���   V C A R D   P R O C E S S I N G� ��� i   c f� � I      �5�4�5 0 vcard_attach vCard_Attach  o      �3�3 0 	the_vcard 	the_vCard  o      �2�2 0 theprops theProps �1 o      �0�0 0 newtask NewTask�1  �4    O      O    	
	 I  
 �/�.
�/ .corecrel****      � null�.   �-
�- 
kocl m    �,
�, 
OSfA �+�*
�+ 
prdt K     �)
�) 
atfn 4    �(
�( 
psxf o    �'�' 0 	the_vcard 	the_vCard �&�%
�& 
OSin m    �$
�$ boovtrue�%  �*  
 l   �#�" n     1    �!
�! 
FCno o    � �  0 newtask NewTask�#  �"   m     �                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �    l     ��    ATTACHMENT PROCESSING    � * A T T A C H M E N T   P R O C E S S I N G   i   g j!"! I      �#��  0 message_attach message_Attach# $%$ o      ��  0 theattachments theAttachments% &'& o      �� 0 theprops theProps' (�( o      �� 0 newtask NewTask�  �  " Z     �)*��) =    +,+ o     �� 0 attachswitch attachSwitch, m    -- �..  O N* O   
 �/0/ k    �11 232 l   �45�  4 0 *MAKE SURE TEXT ITEM DELIMITERS ARE DEFAULT   5 �66 T M A K E   S U R E   T E X T   I T E M   D E L I M I T E R S   A R E   D E F A U L T3 787 r    9:9 m    ;; �<<  : n     =>= 1    �
� 
txdl> 1    �
� 
ascr8 ?@? l   ����  �  �  @ ABA l   �CD�  C ) #TEMP FILES PROCESSED ON THE DESKTOP   D �EE F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O PB FGF r    #HIH c    !JKJ l   L��
L b    MNM l   O�	�O I   �P�
� .earsffdralis        afdrP m    �
� afdmdesk�  �	  �  N m    QQ �RR 2 T e m p   E x p o r t   F r o m   O u t l o o k :�  �
  K m     �
� 
TEXTI o      �� 0 exportfolder ExportFolderG STS r   $ 0UVU n  $ *WXW I   % *�Y�� 0 f_exists  Y Z� Z o   % &���� 0 exportfolder ExportFolder�   �  X  f   $ %V o      ���� 0 saveloc SaveLocT [\[ l  1 1��������  ��  ��  \ ]^] l  1 1��_`��  _  PROCESS THE ATTCHMENTS   ` �aa , P R O C E S S   T H E   A T T C H M E N T S^ bcb r   1 4ded m   1 2����  e o      ���� 0 attcount attCountc f��f X   5 �g��hg k   E �ii jkj r   E Llml l  E Jn����n b   E Jopo o   E F���� 0 exportfolder ExportFolderp n  F Iqrq 1   G I��
�� 
pnamr o   F G���� 0 theattachment theAttachment��  ��  m o      ���� 0 thefilename theFileNamek sts Q   M buv��u I  P Y��wx
�� .coresavenull���     obj w o   P Q���� 0 theattachment theAttachmentx ��y��
�� 
kfily o   T U���� 0 thefilename theFileName��  v R      ������
�� .ascrerr ****      � ****��  ��  ��  t z{z O   c �|}| O   i �~~ I  q ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   s v��
�� 
OSfA� �����
�� 
prdt� K   y ��� ����
�� 
atfn� 4   | ����
�� 
file� o   � ����� 0 thefilename theFileName� �����
�� 
OSin� m   � ���
�� boovtrue��  ��   l  i n������ n   i n��� 1   j n��
�� 
FCno� o   i j���� 0 newtask NewTask��  ��  } m   c f���                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  { ��� l  � ���������  ��  ��  � ��� l  � �������  �   SILENT DELETE OF TEMP FILE   � ��� 4 S I L E N T   D E L E T E   O F   T E M P   F I L E� ��� r   � ���� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdmtrsh� �����
�� 
from� m   � ���
�� fldmfldu��  � o      ���� 0 trash_folder trash_Folder� ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� m   � ��� ���  m v  � n   � ���� 1   � ���
�� 
strq� n   � ���� 1   � ���
�� 
psxp� o   � ����� 0 thefilename theFileName� 1   � ���
�� 
spac� n   � ���� 1   � ���
�� 
strq� n   � ���� 1   � ���
�� 
psxp� o   � ����� 0 trash_folder trash_Folder��  ��  �� 0 theattachment theAttachmenth o   8 9����  0 theattachments theAttachments��  0 5   
 �����
�� 
capp� m    �� ��� * c o m . m i c r o s o f t . O u t l o o k
�� kfrmID  �  �    ��� l     ��������  ��  ��  � ��� l     ������  � : 4SILENT DELETE OF TEMP FOLDER (THANKS MARTIN MICHEL!)   � ��� h S I L E N T   D E L E T E   O F   T E M P   F O L D E R   ( T H A N K S   M A R T I N   M I C H E L ! )� ��� i   k n��� I      ������� 0 trashfolder  � ���� o      ���� 0 saveloc SaveLoc��  ��  � Q     ����� k    ��� ��� r    ��� l   
������ c    
��� l   ������ I   �����
�� .earsffdralis        afdr� m    ��
�� afdrtrsh��  ��  ��  � m    	��
�� 
utxt��  ��  � o      ���� 0 trashfolderpath  � ��� r    ��� I   �����
�� .sysonfo4asfe        file� l   ������ c    ��� o    ���� 0 saveloc SaveLoc� m    ��
�� 
alis��  ��  ��  � o      ���� 0 srcfolderinfo  � ��� r    ��� n    ��� 1    ��
�� 
pnam� o    ���� 0 srcfolderinfo  � o      ���� 0 srcfoldername  � ��� r    "��� l    ������ c     ��� o    ���� 0 saveloc SaveLoc� m    ��
�� 
alis��  ��  � o      ���� 0 saveloc SaveLoc� ��� r   # *��� l  # (������ n   # (��� 1   & (��
�� 
strq� n   # &��� 1   $ &��
�� 
psxp� o   # $���� 0 saveloc SaveLoc��  ��  � o      ���� 0 saveloc SaveLoc� ��� r   + .��� m   + ,����  � o      ���� 0 counter  � ��� T   / l�� k   4 g�� ��� Z   4 O������ =  4 7��� o   4 5���� 0 counter  � m   5 6����  � r   : A��� b   : ?��� b   : =��� o   : ;���� 0 trashfolderpath  � o   ; <���� 0 srcfoldername  � m   = >�� ���  :� o      ���� 0 destfolderpath  ��  � r   D O� � b   D M b   D K b   D I b   D G o   D E���� 0 trashfolderpath   o   E F���� 0 srcfoldername   m   G H		 �

    o   I J���� 0 counter   m   K L �  :  o      ���� 0 destfolderpath  �  Q   P a r   S X c   S V o   S T���� 0 destfolderpath   m   T U��
�� 
alis o      ���� 0 destfolderalias   R      ������
�� .ascrerr ****      � ****��  ��    S   ` a �� r   b g [   b e o   b c���� 0 counter   m   c d����  o      ���� 0 counter  ��  �  r   m t n   m r  1   p r��
�� 
strq  n   m p!"! 1   n p��
�� 
psxp" o   m n���� 0 destfolderpath   o      ���� 0 destfolderpath   #$# r   u ~%&% b   u |'(' b   u z)*) b   u x+,+ m   u v-- �..  d i t t o  , o   v w�� 0 saveloc SaveLoc* 1   x y�~
�~ 
spac( o   z {�}�} 0 destfolderpath  & o      �|�| 0 command  $ /0/ I   ��{1�z
�{ .sysoexecTEXT���     TEXT1 o    ��y�y 0 command  �z  0 232 l  � ��x45�x  4 9 3 this won't be executed if the ditto command errors   5 �66 f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r s3 787 r   � �9:9 b   � �;<; m   � �== �>>  r m   - r  < o   � ��w�w 0 saveloc SaveLoc: o      �v�v 0 command  8 ?@? I  � ��uA�t
�u .sysoexecTEXT���     TEXTA o   � ��s�s 0 command  �t  @ B�rB L   � �CC m   � ��q
�q boovtrue�r  � R      �p�o�n
�p .ascrerr ****      � ****�o  �n  � L   � �DD m   � ��m
�m boovfals� EFE l     �l�k�j�l  �k  �j  F GHG l      �iIJ�i  I o i 
======================================
// GROWL SUBROUTINES
======================================
   J �KK �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   G R O W L   S U B R O U T I N E S  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
H LML i   o rNON I      �h�g�f�h 0 
startgrowl 
startGrowl�g  �f  O Q     MPQ�eP k    DRR STS O    UVU r    WXW ?    YZY l   [�d�c[ I   �b\�a
�b .corecnte****       ****\ l   ]�`�_] 6   ^_^ 2    
�^
�^ 
prcs_ =   `a` 1    �]
�] 
bnida m    bb �cc 0 c o m . G r o w l . G r o w l H e l p e r A p p�`  �_  �a  �d  �c  Z m    �\�\  X o      �[�[ 0 isgrlrunning isGrlRunningV m    dd�                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  T e�Ze P    Df�Ygf Z   " Chi�X�Wh o   " #�V�V 0 isgrlrunning isGrlRunningi k   & ?jj klk r   & )mnm m   & 'oo �pp~ t e l l   a p p l i c a t i o n   " G r o w l "    
 s e t   t h e   a l l N o t i f i c a t i o n s L i s t   t o   { " I m p o r t   T o   O m n i F o c u s " ,   " S u c c e s s   N o t i f i c a t i o n " ,   " F a i l u r e   N o t i f i c a t i o n " }  
 s e t   t h e   e n a b l e d N o t i f i c a t i o n s L i s t   t o   { " I m p o r t   T o   O m n i F o c u s " ,   " S u c c e s s   N o t i f i c a t i o n " ,   " F a i l u r e   N o t i f i c a t i o n " }  
 r e g i s t e r   a s   a p p l i c a t i o n   " O u t l o o k   t o   O m n i F o c u s "   a l l   n o t i f i c a t i o n s   a l l N o t i f i c a t i o n s L i s t   d e f a u l t   n o t i f i c a t i o n s   e n a b l e d N o t i f i c a t i o n s L i s t   i c o n   o f   a p p l i c a t i o n   " O m n i F o c u s "  
 n o t i f y   w i t h   n a m e   " I m p o r t   T o   O m n i F o c u s "   t i t l e   " I m p o r t   T o   O m n i F o c u s   S t a r t e d "   d e s c r i p t i o n   " P r o c e s s i n g   I t e m s   f r o m   O u t l o o k "   a p p l i c a t i o n   n a m e   " O u t l o o k   t o   O m n i F o c u s "  
 e n d   t e l ln o      �U�U 0 osasc osaScl qrq r   * 3sts b   * 1uvu b   * /wxw m   * +yy �zz  o s a s c r i p t   - e  x n   + .{|{ 1   , .�T
�T 
strq| o   + ,�S�S 0 osasc osaScv m   / 0}} �~~ "     & >     / d e v / n u l l   &t o      �R�R 0 shsc shScr �Q P   4 ?��P�� I  9 >�O��N
�O .sysoexecTEXT���     TEXT� o   9 :�M�M 0 shsc shSc�N  �P  � �L�K
�L consrmte�K  �Q  �X  �W  �Y  g �J�I
�J consrmte�I  �Z  Q R      �H�G�F
�H .ascrerr ****      � ****�G  �F  �e  M ��� l     �E�D�C�E  �D  �C  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?���?  � 1 +ANNOUNCE THE COUNT OF TOTAL ITEMS TO EXPORT   � ��� V A N N O U N C E   T H E   C O U N T   O F   T O T A L   I T E M S   T O   E X P O R T� ��� i   s v��� I      �>��=�> 0 process_items process_Items� ��� o      �<�< 0 itemnum itemNum� ��� o      �;�; 0 attnum attNum� ��:� o      �9�9 0 	the_class  �:  �=  � Q    f���8� k   ]�� ��� Z   [���7�6� =   
��� o    �5�5 0 growlswitch growlSwitch� m    	�� ���  O N� k   W�� ��� O    &��� r    %��� ?    #��� l   !��4�3� I   !�2��1
�2 .corecnte****       ****� l   ��0�/� 6   ��� 2    �.
�. 
prcs� =   ��� 1    �-
�- 
bnid� m    �� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p�0  �/  �1  �4  �3  � m   ! "�,�,  � o      �+�+ 0 isgrlrunning isGrlRunning� m    ���                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  ' '�*�)�(�*  �)  �(  � ��� r   ' 2��� l  ' 0��'�&� I  ' 0�%��$
�% .earsffdralis        afdr� 5   ' ,�#��"
�# 
capp� m   ) *�� ��� * c o m . m i c r o s o f t . O u t l o o k
�" kfrmID  �$  �'  �&  � o      �!�! 0 app_path app_Path� ��� l  3 3� ���   �  �  � ��� P   3W���� Z   8V����� o   8 9�� 0 isgrlrunning isGrlRunning� k   <R�� ��� r   < ?��� m   < =�� ���  s� o      �� 0 	attplural 	attPlural� ��� r   @ E��� c   @ C��� o   @ A�� 0 	the_class  � m   A B�
� 
ctxt� o      �� 0 	the_class  � ��� Z  F S����� =  F I��� o   F G�� 0 	the_class  � m   G H�� ���  L i s t� r   L O��� m   L M�� ���  O u t l o o k� o      �� 0 	the_class  �  �  � ��� Z   T ������ =  T Y��� o   T U�� 0 	the_class  � m   U X�� ���   I n c o m i n g   M e s s a g e� r   \ i��� l  \ g���� I  \ g���
� .sysorpthalis        TEXT� m   \ _�� ���  M a i l . i c n s� ���
� 
in B� o   b c�
�
 0 app_path app_Path�  �  �  � o      �	�	 0 
growl_icon 
growl_Icon� ��� =  l q��� o   l m�� 0 	the_class  � m   m p�� ���  C o n t a c t� ��� r   t ���� l  t ���� I  t ���
� .sysorpthalis        TEXT� m   t w�� ���  v C r d . i c n s� ���
� 
in B� o   z {�� 0 app_path app_Path�  �  �  � o      � �  0 
growl_icon 
growl_Icon�  � r   � �   l  � ����� I  � ���
�� .sysorpthalis        TEXT m   � � �  l c s . i c n s ����
�� 
in B o   � ����� 0 app_path app_Path��  ��  ��   o      ���� 0 
growl_icon 
growl_Icon� 	 r   � �

 c   � � l  � ����� n   � � 1   � ���
�� 
psxp o   � ����� 0 
growl_icon 
growl_Icon��  ��   m   � ���
�� 
ctxt o      ���� 0 
growl_icon 
growl_Icon	  l  � ���������  ��  ��    Z   � ��� =   � � o   � ����� 0 attnum attNum m   � �����   r   � � m   � � �  N o o      ���� 0 attnum attNum  =  � � !  o   � ����� 0 attnum attNum! m   � �����  "��" r   � �#$# m   � �%% �&&  $ o      ���� 0 	attplural 	attPlural��  ��   '(' l  � ���������  ��  ��  ( )��) l  �R*+,* O   �R-.- Z   �Q/0����/ >  � �121 o   � ����� 0 	the_class  2 m   � �33 �44  T e x t0 k   �M55 676 r   � �898 c   � �:;: l  � �<����< o   � ����� 0 itemnum itemNum��  ��  ; m   � ���
�� 
nmbr9 o      ���� 0 plural_test Plural_Test7 =��= Z   �M>?��@> ?  � �ABA o   � ����� 0 plural_test Plural_TestB m   � ����� ? k   �CC DED l  � ���������  ��  ��  E FGF r   � �HIH b   � �JKJ b   � �LML b   � �NON b   � �PQP b   � �RSR b   � �TUT b   � �VWV b   � �XYX b   � �Z[Z b   � �\]\ m   � �^^ �__ t e l l   a p p l i c a t i o n   " G r o w l "    
 n o t i f y   w i t h   n a m e   " I m p o r t   T o   O m n i F o c u s "   t i t l e   " I m p o r t   T o   O m n i F o c u s   S t a r t e d "   d e s c r i p t i o n   " N o w   I m p o r t i n g  ] o   � ����� 0 itemnum itemNum[ m   � �`` �aa   Y o   � ����� 0 	the_class  W m   � �bb �cc    I t e m s   w i t h  U o   � ����� 0 attnum attNumS l 	 � �d����d m   � �ee �ff    A t t a c h m e n t��  ��  Q o   � ����� 0 	attplural 	attPluralO m   � �gg �hh � . "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "   i d e n t i f i e r   " O m n i F o c u s "   i m a g e   f r o m   l o c a t i o n   "M o   � ����� 0 
growl_icon 
growl_IconK m   � �ii �jj $ "  
 	 	 	 	 	 	 	 e n d   t e l lI o      ���� 0 osasc osaScG klk r   �	mnm b   �opo b   �qrq m   � �ss �tt  o s a s c r i p t   - e  r n   �uvu 1   ���
�� 
strqv o   � ����� 0 osasc osaScp m  ww �xx "     & >     / d e v / n u l l   &n o      ���� 0 shsc shScl y��y n 
z{z I  ��|���� 0 	growlthis 	growlThis| }��} o  ���� 0 shsc shSc��  ��  {  f  
��  ��  @ k  M~~ � r  6��� b  4��� b  0��� b  .��� b  *��� b  (��� b  $��� b  "��� b  ��� b  ��� b  ��� m  �� ��� t e l l   a p p l i c a t i o n   " G r o w l "    
 n o t i f y   w i t h   n a m e   " I m p o r t   T o   O m n i F o c u s "   t i t l e   " I m p o r t   T o   O m n i F o c u s   S t a r t e d "   d e s c r i p t i o n   " N o w   I m p o r t i n g  � o  ���� 0 itemnum itemNum� m  �� ���   � o  ���� 0 	the_class  � m  !�� ���    I t e m s   w i t h  � o  "#���� 0 attnum attNum� l 	$'������ m  $'�� ���    A t t a c h m e n t��  ��  � o  ()���� 0 	attplural 	attPlural� m  *-�� ��� � . "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "   i d e n t i f i e r   " O m n i F o c u s "   i m a g e   f r o m   l o c a t i o n   "� o  ./���� 0 
growl_icon 
growl_Icon� m  03�� ��� $ "  
 	 	 	 	 	 	 	 e n d   t e l l� o      ���� 0 osasc osaSc� ��� r  7F��� b  7D��� b  7@��� m  7:�� ���  o s a s c r i p t   - e  � n  :?��� 1  ;?��
�� 
strq� o  :;���� 0 osasc osaSc� m  @C�� ��� "     & >     / d e v / n u l l   &� o      ���� 0 shsc shSc� ���� n GM��� I  HM������� 0 	growlthis 	growlThis� ���� o  HI���� 0 shsc shSc��  ��  �  f  GH��  ��  ��  ��  . m   � ����                                                                                  MACS  alis    t  Macintosh HD               �`iYH+     !
Finder.app                                                      �����w        ����  	                CoreServices    �`��      ��o�       !         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  +  FINDER   , ���  F I N D E R��  �  �  �  � ����
�� consrmte��  �  �7  �6  � ���� l \\��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �8  � ��� l     ��������  ��  ��  � ��� i   w z��� I      ������� 0 	growlthis 	growlThis� ���� o      ���� 0 shsc shSc��  ��  � P     ����� I   
�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 shsc shSc��  ��  � ����
�� consrmte��  � ��� l     ��������  ��  ��  � ��� l     ������  �  GROWL RESULTS   � ���  G R O W L   R E S U L T S� ��� i   { ~��� I      ������� 0 growl_growler growl_Growler� ��� o      ���� 0 successcount successCount� ���� o      ���� 0 itemnum itemNum��  ��  � Q     ������ k    ��� ��� O    ��� r    ��� ?    ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ 6   ��� 2    
��
�� 
prcs� =   ��� 1    ��
�� 
bnid� m    �� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��  � m    ����  � o      ���� 0 isgrlrunning isGrlRunning� m    ���                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l   ��������  ��  ��  � ���� P    ������ k   " ��� ��� Z   " �������� o   " #���� 0 isgrlrunning isGrlRunning� k   & ��� ��� r   & )��� m   & '�� ��� 4 t e l l   a p p l i c a t i o n   " G r o w l "  
� o      ���� 
0 part_1  � ��� r   * /��� c   * -��� l  * + ����  o   * +�� 0 successcount successCount��  ��  � m   + ,�~
�~ 
nmbr� o      �}�} 0 plural_test Plural_Test�  Z   0 i�| =  0 3 o   0 1�{�{ 0 plural_test Plural_Test m   1 2�z�z�� r   6 9	 m   6 7

 �r n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " F a i l u r e   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " I m p o r t   F a i l u r e "   d e s c r i p t i o n   " N o   I t e m s   S e l e c t e d   I n   O u t l o o k ! "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 	 	 e n d   t e l l	 o      �y�y 
0 part_2    =  < ? o   < =�x�x 0 plural_test Plural_Test m   = >�w�w    r   B E m   B C �v n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " F a i l u r e   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " I m p o r t   F a i l u r e "   d e s c r i p t i o n   " N o   I t e m s   E x p o r t e d   F r o m   O u t l o o k ! "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 	 	 e n d   t e l l o      �v�v 
0 part_2    =  H K o   H I�u�u 0 plural_test Plural_Test m   I J�t�t   r   N U b   N S b   N Q !  m   N O"" �## � n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " S u c c e s s   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " I m p o r t   S u c c e s s "   d e s c r i p t i o n   " S u c c e s s f u l l y   E x p o r t e d  ! o   O P�s�s 0 itemnum itemNum l 	 Q R$�r�q$ m   Q R%% �&& �   I t e m   t o   O m n i F o c u s "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 	 	 e n d   t e l l�r  �q   o      �p�p 
0 part_2   '(' ?  X [)*) o   X Y�o�o 0 plural_test Plural_Test* m   Y Z�n�n ( +�m+ r   ^ e,-, b   ^ c./. b   ^ a010 m   ^ _22 �33 � n o t i f y   w i t h   n a m e   �  
 	 	 	 	 	 " S u c c e s s   N o t i f i c a t i o n "   t i t l e   �  
 	 	 	 	 	 " I m p o r t   S u c c e s s "   d e s c r i p t i o n   " S u c c e s s f u l l y   E x p o r t e d  1 o   _ `�l�l 0 itemnum itemNum/ l 	 a b4�k�j4 m   a b55 �66 �   I t e m s   t o   O m n i F o c u s "   a p p l i c a t i o n   n a m e   �  
 	 	 	 	 	 " O u t l o o k   t o   O m n i F o c u s "  
 	 	 	 	 	 e n d   t e l l�k  �j  - o      �i�i 
0 part_2  �m  �|   787 r   j m9:9 m   j k;; �<<  0: o      �h�h 0 itemnum itemNum8 =>= r   n s?@? b   n qABA o   n o�g�g 
0 part_1  B o   o p�f�f 
0 part_2  @ o      �e�e 0 combined_parts  > CDC r   t �EFE b   t �GHG b   t }IJI m   t wKK �LL  o s a s c r i p t   - e  J n   w |MNM 1   x |�d
�d 
strqN o   w x�c�c 0 combined_parts  H m   } �OO �PP "     & >     / d e v / n u l l   &F o      �b�b 0 shsc shScD Q�aQ n  � �RSR I   � ��`T�_�` 0 	growlthis 	growlThisT U�^U o   � ��]�] 0 shsc shSc�^  �_  S  f   � ��a  ��  ��  � V�\V l  � ��[�Z�Y�[  �Z  �Y  �\  ��  � �X�W
�X consrmte�W  ��  � R      �V�U�T
�V .ascrerr ****      � ****�U  �T  ��  � WXW l     �S�R�Q�S  �R  �Q  X YZY l     �P[\�P  [  NOTIFICATION CENTER   \ �]] & N O T I F I C A T I O N   C E N T E RZ ^_^ i    �`a` I      �Ob�N�O *0 notification_center notification_Centerb cdc o      �M�M 0 successcount successCountd e�Le o      �K�K 0 itemnum itemNum�L  �N  a k     off ghg r     iji c     klk l    m�J�Im o     �H�H 0 successcount successCount�J  �I  l m    �G
�G 
nmbrj o      �F�F 0 plural_test Plural_Testh non l   �E�D�C�E  �D  �C  o pqp Z    crst�Br =   	uvu o    �A�A 0 plural_test Plural_Testv m    �@�@��s k    ww xyx I   �?z{
�? .sysonotfnull��� ��� TEXTz m    || �}} : N o   I t e m s   S e l e c t e d   I n   O u t l o o k !{ �>~
�> 
appr~ m    �� ��� ( O u t l o o k   t o   O m n i F o c u s �=��<
�= 
subt� m    �� ���  V e r i t r o p e . c o m�<  y ��;� l   �:�9�8�:  �9  �8  �;  t ��� =   ��� o    �7�7 0 plural_test Plural_Test� m    �6�6  � ��� k     +�� ��� I    )�5��
�5 .sysonotfnull��� ��� TEXT� m     !�� ��� > N o   I t e m s   E x p o r t e d   F r o m   O u t l o o k !� �4��
�4 
appr� m   " #�� ��� ( O u t l o o k   t o   O m n i F o c u s� �3��2
�3 
subt� m   $ %�� ���  V e r i t r o p e . c o m�2  � ��1� l  * *�0�/�.�0  �/  �.  �1  � ��� =  . 1��� o   . /�-�- 0 plural_test Plural_Test� m   / 0�,�, � ��� k   4 C�� ��� I  4 A�+��
�+ .sysonotfnull��� ��� TEXT� b   4 9��� b   4 7��� m   4 5�� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   5 6�*�* 0 itemnum itemNum� l 	 7 8��)�(� m   7 8�� ��� $   I t e m   t o   O m n i F o c u s�)  �(  � �'��
�' 
appr� m   : ;�� ��� ( O u t l o o k   t o   O m n i F o c u s� �&��%
�& 
subt� m   < =�� ���  V e r i t r o p e . c o m�%  � ��$� l  B B�#�"�!�#  �"  �!  �$  � ��� ?  F I��� o   F G� �  0 plural_test Plural_Test� m   G H�� � ��� I  L _���
� .sysonotfnull��� ��� TEXT� b   L S��� b   L O��� m   L M�� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   M N�� 0 itemnum itemNum� l 	 O R���� m   O R�� ��� &   I t e m s   t o   O m n i F o c u s�  �  � ���
� 
appr� m   T W�� ��� ( O u t l o o k   t o   O m n i F o c u s� ���
� 
subt� m   X [�� ���  V e r i t r o p e . c o m�  �  �B  q ��� l  d d����  �  �  � ��� r   d i��� m   d g�� ���  0� o      �� 0 itemnum itemNum� ��� I  j o���
� .sysodelanull��� ��� nmbr� m   j k�� �  �  _ ��� l     ����  �  �  �       %�
�   1�	 B G L Q V [ ` e j� r����������������������
  � #��������� ����������������������������������������������������� 0 growlswitch growlSwitch� 0 attachswitch attachSwitch� 0 successcount successCount� 0 growl_running growl_Running� 0 mytitle myTitle�  0 theattachments theAttachments� 0 thismessage thisMessage� 0 itemnum itemNum�  0 attnum attNum�� 0 errnum errNum�� 0 	errortext 	errorText�� 0 	the_class  �� 0 
list_props 
list_Props�� 0 saveloc SaveLoc�� 0 newtask NewTask�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count�� 0 item_process item_Process�� 0 
encodedurl 
encodedURL�� 0 	titlecase 	TITLECASE�� 0 simple_sort  �� 0 replacestring replaceString�� 0 clean_title clean_Title�� 0 
write_file 
write_File�� 0 f_exists  �� 0 vcard_attach vCard_Attach��  0 message_attach message_Attach�� 0 trashfolder  �� 0 
startgrowl 
startGrowl�� 0 process_items process_Items�� 0 	growlthis 	growlThis�� 0 growl_growler growl_Growler�� *0 notification_center notification_Center
�� .aevtoappnull  �   � ****�	  � ������  ��  � ������  ��  � ������������� 0 appisrunning appIsRunning�� ����� �  ���� 0 appname appName��  � ���� 0 appname appName� �����
�� 
prcs
�� 
pnam�� � 	*�-�,�U� ������������� 0 
item_check 
item_Check��  ��  � ���������� 0 selecteditems selectedItems�� 0 	raw_class 	raw_Class�� 0 	classlist 	classList�� 0 selecteditem selectedItem� �������������������������������������
�� 
capp
�� kfrmID  
�� 
sele
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cTsk
�� 
cEvt
�� 
cNot
�� 
cAbE
�� 
inm 
�� 
ctxt��  ��  �� �)���0 � �*�,E�O��,E�O��  >jvE�O �[��l kh ��,�6G[OY��O�� �Ec  Y 
��k/�,E�Y hO��  �Ec  Y hO��  �Ec  Y hO��  �Ec  Y hO�a   a Ec  Y hO�a   a Ec  Y hO�a   a Ec  Y hW X  hO�U� ��#���������� 0 
item_count 
item_Count�� ����� �  ������ 0 selecteditems selectedItems�� 0 	the_class  ��  � �������� 0 selecteditems selectedItems�� 0 	the_class  �� "0 selectedmessage selectedMessage� 
��M��/������������
�� 
capp
�� kfrmID  
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
cAtc��  ��  �� d)���0 \�� O�j kEc  OjEc  O - '�[��l kh b  ��,j Ec  [OY��W X  	hY 	kEc  U� ��[���������� 0 item_process item_Process�� ����� �  ���� 0 selecteditems selectedItems��  � X������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�� 0 selecteditems selectedItems�� 0 oftitle OFTitle�� 0 
thecontent 
theContent�� 0 selecteditem selectedItem�� 0 theprops theProps�� 0 raw_attendees raw_Attendees�� &0 thecompletiondate theCompletionDate�� 0 thestartdate theStartDate�� 0 
theduedate 
theDueDate�� 0 theflag theFlag�� 0 	the_vcard 	the_vCard�� 0 l_1  �� 0 l_2  �� 0 l_3  �� 0 l_4  �� 0 l_5  �� 0 r_1  �� 0 r_2  �� 0 r_3  �� 0 the_location the_Location�� 0 r_4  �� 0 	the_notes  �� 0 item_created item_Created�� 0 the_organizer the_Organizer�� 0 the_attendees the_Attendees�� 0 raw_attendee raw_Attendee�� &0 raw_emailattendee raw_EmailAttendee�� 0 attend_name attend_Name�� 0 
raw_status 
raw_Status�� 0 attend_status attend_Status�� 0 attend_string attend_String�� 0 
vcard_data  �� 0 vcard_extension  �� 0 the_cats the_Cats�� 0 	list_cats 	list_Cats�� 0 	count_cat 	count_Cat�� 0 the_cat the_Cat�� 0 cat_name cat_Name�� 0 thehtml theHTML��  0 list_addresses list_Addresses�� 0 email_items email_Items� 0 
email_item 
email_Item�~ 0 the_type the_Type�} 0 	addr_item 	addr_Item�| 0 
list_phone 
list_Phone�{ 0 b_number b_Number�z 0 b_string b_String�y 0 h_number h_Number�x 0 h_string h_String�w 0 m_number m_Number�v 0 m_string m_String�u 0 	list_addr 	list_Addr�t 0 b_str b_Str�s 0 b_gstr b_gStr�r 0 b_cit b_Cit�q 0 b_gcit b_gCit�p 0 b_sta b_Sta�o 0 b_gsta b_gSta�n 0 b_zip b_Zip�m 0 b_gzip b_gZip�l 0 b_cou b_Cou�k 0 b_gcou b_gCou�j 0 b_addr b_Addr�i 0 	b_gstring 	b_gString�h 0 b_gmap b_GMAP�g 0 h_str h_Str�f 0 h_gstr h_gStr�e 0 h_cit h_Cit�d 0 h_gcit h_gCit�c 0 h_sta h_Sta�b 0 h_gsta h_gSta�a 0 h_zip h_Zip�` 0 h_gzip h_gZip�_ 0 h_cou h_Cou�^ 0 h_gcou h_gCou�] 0 h_addr h_Addr�\ 0 	h_gstring 	h_gString�[ 0 h_gmap h_GMAP�Z 0 	propclass 	propClass�Y 0 the_priority the_Priority�X 0 	todo_flag 	todo_Flag�W 0 
the_sender 
the_Sender�V 0 s_name s_Name�U 0 	s_address 	s_Address�T 0 m_sub m_Sub�S 0 theid theID�R 0 oflag oFlag�Q 0 	m_content 	m_Content� ��P��O�N�Mz��L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�$�<�;�:�9Qb�8�7z��6���5�4�3�2��1��0��/�
�.c�-�������,�+<}�������*�)�(�'�&=�%\�$z�#�"�!��� ����=BXZwy{}���������
�*/�OTjl�������������			T	h	n	t	z	�	���	��	��	�����

[
b�
���
]�����	������
�P 
capp
�O kfrmID  
�N 
pcls
�M 
ctxt
�L 
docu
�K 
kocl
�J 
FCit
�I 
prdt
�H 
pnam
�G 
FCno�F 
�E .corecrel****      � null
�D 
cobj
�C .corecnte****       ****
�B 
pALL
�A 
cAtc
�@ 
Ttee�?  �>  
�= 
msng
�< 
subj
�; 
offs
�: 
endT
�9 
iloc
�8 .misccurdldt    ��� null
�7 
PlTC
�6 
orGA
�5 
ret 
�4 
emad
�3 
Stts
�2 eACsASnr
�1 eACsASac
�0 eACsASde
�/ eACsASte
�. 
iCal�- 0 
write_file 
write_File
�, 
ascd
�+ 
cCtg
�* 
EmAd
�) 
type
�( 
radd�' 0 	titlecase 	TITLECASE
�& 
bsNm
�% 
hmNm
�$ 
mbNm
�# 
bStA�" 0 
encodedurl 
encodedURL
�! 
bCty
�  
bSta
� 
bZip
� 
bCou
� 
hStA
� 
hCty
� 
hSta
� 
hZip
� 
hCou
� 
dspn
� 
TEXT
� 
vCrd
� 
PlTN
� 
prty
� ePtyPrNr
� ePtyPrHi
� ePtyPrLo
� 
tDue
� 
tCmp
� 
tStr
� 
tFlg
� 
sndr
� 
tims
�
 
ID  
�	 
FCfl
� 
FCDd
� 
FCdc
� 
FCDs� � 0 vcard_attach vCard_Attach�  0 message_attach message_Attach���)���0���,�  6�E�O�E�O� *�k/ *������� Ec  UUOkEc  Y���[��l kh �a ,E�O �a -Ec  O�a -E�W X  hOa E�Oa E�Oa E�OfE�OjvE�Ob  a  a E�Oa E�Oa E�Oa E�Oa E�O�a ,E^ O�a ,E^ O�a ,E^ O�a  ,E^ O] a   a !E^ Y hO] E^ Oa "E^ O*j #E^ O �a $,E^ W X  hO] a   a %E^ Y hO�j j �a &�a ',%a (%E^ Oa )_ *%E^ O ��[��l kh ] a +,E^ O] �,�&E^ O] a ,,E^ O] a - a .E^ Y ?] a / a 0E^ Y +] a 1 a 2E^ Y ] a 3 a 4E^ Y hO] a 5%] %a 6%_ *%E^ O] ] %E^ [OY�aO] ] %] %E^ Oa 7E�Y hO�] %_ *%�%] %_ *%�%] %_ *%�%] %_ *%_ *%_ *%_ *%] %_ *%_ *%E�O '�a 8,E^ Oa 9E^  O)] ] ]  m+ :E�W X  hO] E�OPY	�b  a ; ga <E�Oa =E�Oa >E�Oa ?E�Oa @E�O��,E^ O�a A,E^ O] �&E^ O�a B,E^ !OjvE^ "O] !j E^ #O Q] ![��l kh $] $�,�&E^ %O] %] "6GO] #k a C] "6GO] #kE^ #Y ] #kE^ #[OY��O] "E^ Oa DE^ O�a A,E^ O �a $,E^ W X  hO] a   a EE^ Y hO�] %_ *%�%] %_ *%�%] %_ *%�%] %_ *%_ *%_ *%_ *%] %_ *%_ *%E�O�a 8,E^ Oa FE^  O)] ] ]  m+ :E�OeE^ &O] E�OPYUb  a G ,a HE�Oa IE�Oa J_ *%E�Oa K_ *%E�Oa LE�O fjvE^ 'O�a M,E^ (O O] ([��l kh )] )a N,�&E^ *O] )a O,a P%)] *k+ Q%a R%_ *%�&E^ +O] +] '6G[OY��W X  hO �jvE^ ,O�a S,a  '�a S,E^ -Oa T] -%_ *%E^ .O] .] ,6GY hO�a U,a  '�a U,E^ /Oa V] /%_ *%E^ 0O] 0] ,6GY hO�a W,a  '�a W,E^ 1Oa X] 1%_ *%E^ 2O] 2] ,6GY hW X  hOjvE^ 3O�a Y,a x�a Y,E^ 4O)] 4k+ ZE^ 5O�a [,a  �a [,E^ 6O)] 6k+ ZE^ 7Y a \E^ 6Oa ]E^ 7O�a ^,a  �a ^,E^ 8O)] 8k+ ZE^ 9Y a _E^ 8Oa `E^ 9O�a a,a  �a a,E^ :O)] :k+ ZE^ ;Y a bE^ :Oa cE^ ;O�a d,a  �a d,E^ <O)] <k+ ZE^ =Y a eE^ <Oa fE^ =O] 4_ *%] 6%a g%] 8%a h%] :%_ *%] <%E^ >O] 5a i%] 7%a j%] 9%a k%] ;%a l%] =%E^ ?Oa m] ?%E^ @Oa n_ *%] >%_ *%a o%] @%a p%_ *%E^ .O] .] 36GY hO�a q,a x�a q,E^ AO)] Ak+ ZE^ BO�a r,a  �a r,E^ CO)] Ck+ ZE^ DY a sE^ COa tE^ DO�a u,a  �a u,E^ EO)] Ek+ ZE^ FY a vE^ EOa wE^ FO�a x,a  �a x,E^ GO)] Gk+ ZE^ HY a yE^ GOa zE^ HO�a {,a  �a {,E^ IO)] Ik+ ZE^ JY a |E^ IOa }E^ JO] A_ *%] C%a ~%] E%a %] G%_ *%] I%E^ KO] Ba �%] D%a �%] F%a �%] H%a �%] J%E^ LOa �] L%E^ MOa �_ *%] K%_ *%a �%] M%a �%_ *%E^ 0O] 0] 36GY hW X  hO�a �,E^ O] 'a �&E^ O] ,�&E^ O] 3�&E^ O�a �,E^ Oa �E^  O*j #E^ O �a �,E^ W X  hO] a   a �E^ Y hO�] %_ *%�%] %_ *%�%] %_ *%�%] %_ *%_ *%_ *%_ *%] %_ *%_ *%E�O)] ] ]  m+ :E�O] E�OPYb  a � �a �E�Oa �E�Oa �E�Oa �E�Oa �E�O��,�&E^ NO] Na �  �a ,E^ Y 	��,E^ O�a �,E^ OO] Oa �  a �E^ Y hO] Oa �  a �E^ Y hO] Oa �  a �E^ Y hO�a �,E�O�E^ O�a �,E�O�a �,E�O*j #E^ O �a �,�&E^ PO)] Pk+ QE^ W X  hO �a $,E^ W X  hO] a   a �E^ Y hO�] %_ *%�%] %_ *%�%] %_ *%�%] %_ *%_ *%_ *%_ *%] %_ *%_ *%E�O] Na � 'a �E^  O�a 8,E^ O)] ] ]  m+ :E�Y hO] E�OPY��a �,E^ QO] Qa O,E^ RO] Qa O,E^ SO ] Q�,E^ RW X  hO�a B,E^ !OjvE^ "O] !j E^ #O Q] ![��l kh $] $�,�&E^ %O] %] "6GO] #k a �] "6GO] #kE^ #Y ] #kE^ #[OY��O�a ,E^ TO] Ta   a �E^ Y �a ,kvE^ O�a �,E^ O] "E^ O�a �,a �&E^ UO] E^ O] E�O�a �,E�O�a �,E�O�a �,E�O�a �,�&E^ VO] Va �  eE�Y hO�a $,E^ WOa �] R%_ *%a �%] %_ *%a �%] %_ *%a �%] %_ *%_ *%_ *%_ *%] W%_ *%_ *%E�O� 0*�k/ (*�����a ��a ��a ��a ��a �� Ec  UUO�jv )��b  m+ �Y hOb  jv )b  �b  m+ �Y hOb  kEc  OjvEc  [OY�VU� ��� ����� 0 
encodedurl 
encodedURL� ����� �  ���� 0 the_word the_Word�   � ������ 0 the_word the_Word�� 0 scpt  � ��
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j � ��(���������� 0 	titlecase 	TITLECASE�� �� ��    ���� 0 txt  ��  � ���� 0 txt  � /����
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,%j � ��=�������� 0 simple_sort  �� ����   ���� 0 my_list  ��   ���������������� 0 my_list  �� 0 
index_list  �� 0 sorted_list  �� 0 low_item  �� 0 i  �� 0 	this_item  �� 0 low_item_index   ����T��s
�� 
cobj
�� 
nmbr
�� 
ctxt�� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� ����������� 0 replacestring replaceString�� ����   �������� 0 	thestring 	theString�� &0 theoriginalstring theOriginalString�� 0 thenewstring theNewString��   ���������������� 0 	thestring 	theString�� &0 theoriginalstring theOriginalString�� 0 thenewstring theNewString�� 0 thenum theNum�� 0 od  ��  0 thestringparts theStringParts�� 0 eachpart eachPart ��������������
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm
�� .corecnte****       ****
�� 
TEXT
�� 
kocl�� qjE�O��,�lvE[�k/E�Z[�l/��,FZO��-E�O�j k <��k/�&E�O -�[�\[Zl\Zi2[��l kh ��%�%�&E�O�kE�[OY��Y hO���,FO�� ���������� 0 clean_title clean_Title�� ��	�� 	  ���� 0 rawfilename rawFileName��   �������������� 0 rawfilename rawFileName�� &0 previousdelimiter previousDelimiter�� 0 potentialname potentialName�� 0 	legalname 	legalName�� &0 illegalcharacters illegalCharacters�� 0 thischaracter thisCharacter ����6:>BFI������������d
�� 
ascr
�� 
txdl�� 
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt�� M��,E�O�E�OjvE�O�������vE�O .��-[��l kh ��&E�O�� 	��6FY �6F[OY��O�� ��x����
���� 0 
write_file 
write_File�� ����   �������� 0 r_1  �� 0 
vcard_data  �� 0 vcard_extension  ��  
 ���������������� 0 r_1  �� 0 
vcard_data  �� 0 vcard_extension  �� 0 exportfolder ExportFolder�� 0 filename fileName�� 0 thefilename theFileName�� 0 errormessage errorMessage �����������������������������������
�� afdmdesk
�� .earsffdralis        afdr
�� 
TEXT�� 0 f_exists  �� 0 clean_title clean_Title
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 errormessage errorMessage��  
�� .ascrcmnt****      � ****��  �� u�j �%�&E�O)�k+ Ec  O)�k+ �%E�O��%E�O **�/�el O��*�/��� O*�/j O�OPW !X  �j O *�/j W X  h� ����������� 0 f_exists  �� ����   ���� 0 exportfolder ExportFolder��   ����� 0 exportfolder ExportFolder� 0 mypath myPath �������������
� afdrcusr
� .earsffdralis        afdr
� 
alis�  �  
� 
kocl
� 
cfol
� 
prdt
� 
pnam� 
� .corecrel****      � null�� 0 �j E�O��&O�Ec  W X  � *�����l� U� � ���� 0 vcard_attach vCard_Attach� ��   �~�}�|�~ 0 	the_vcard 	the_vCard�} 0 theprops theProps�| 0 newtask NewTask�   �{�z�y�{ 0 	the_vcard 	the_vCard�z 0 theprops theProps�y 0 newtask NewTask 
�x�w�v�u�t�s�r�q�p
�x 
FCno
�w 
kocl
�v 
OSfA
�u 
prdt
�t 
atfn
�s 
psxf
�r 
OSin�q 
�p .corecrel****      � null� � ��, *����*�/�e�� 	UU� �o"�n�m�l�o  0 message_attach message_Attach�n �k�k   �j�i�h�j  0 theattachments theAttachments�i 0 theprops theProps�h 0 newtask NewTask�m   �g�f�e�d�c�b�a�`�g  0 theattachments theAttachments�f 0 theprops theProps�e 0 newtask NewTask�d 0 exportfolder ExportFolder�c 0 attcount attCount�b 0 theattachment theAttachment�a 0 thefilename theFileName�` 0 trash_folder trash_Folder %-�_��^;�]�\�[�ZQ�Y�X�W�V�U�T�S�R�Q�P��O�N�M�L�K�J�I�H�G�F�E��D�C�B�A
�_ 
capp
�^ kfrmID  
�] 
ascr
�\ 
txdl
�[ afdmdesk
�Z .earsffdralis        afdr
�Y 
TEXT�X 0 f_exists  
�W 
kocl
�V 
cobj
�U .corecnte****       ****
�T 
pnam
�S 
kfil
�R .coresavenull���     obj �Q  �P  
�O 
FCno
�N 
OSfA
�M 
prdt
�L 
atfn
�K 
file
�J 
OSin�I 
�H .corecrel****      � null
�G afdmtrsh
�F 
from
�E fldmfldu
�D 
psxp
�C 
strq
�B 
spac
�A .sysoexecTEXT���     TEXT�l �b  �  �)���0 ����,FO�j �%�&E�O)�k+ Ec  OjE�O ��[��l kh ���,%E�O �a �l W X  hOa  *�a , !*�a a a *a �/a ea a  UUOa a a l E�Oa  �a !,a ",%_ #%�a !,a ",%j $[OY�}UY h� �@��?�>�=�@ 0 trashfolder  �? �<�<   �;�; 0 saveloc SaveLoc�>   �:�9�8�7�6�5�4�3�: 0 saveloc SaveLoc�9 0 trashfolderpath  �8 0 srcfolderinfo  �7 0 srcfoldername  �6 0 counter  �5 0 destfolderpath  �4 0 destfolderalias  �3 0 command   �2�1�0�/�.�-�,�+�	�*�)-�(�'=
�2 afdrtrsh
�1 .earsffdralis        afdr
�0 
utxt
�/ 
alis
�. .sysonfo4asfe        file
�- 
pnam
�, 
psxp
�+ 
strq�*  �)  
�( 
spac
�' .sysoexecTEXT���     TEXT�= � ��j �&E�O��&j E�O��,E�O��&E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� �&O�%�$�#�& 0 
startgrowl 
startGrowl�%  �$   �"�!� �" 0 isgrlrunning isGrlRunning�! 0 osasc osaSc�  0 shsc shSc d��b�goy�}���
� 
prcs  
� 
bnid
� .corecnte****       ****
� 
strq
� .sysoexecTEXT���     TEXT�  �  �# N F� *�-�[�,\Z�81j jE�UOg� $� �E�O��,%�%E�Og� �j VY hVW X  h� ������ 0 process_items process_Items� ��   ���� 0 itemnum itemNum� 0 attnum attNum� 0 	the_class  �   
�������
�	��� 0 itemnum itemNum� 0 attnum attNum� 0 	the_class  � 0 isgrlrunning isGrlRunning� 0 app_path app_Path� 0 	attplural 	attPlural�
 0 
growl_icon 
growl_Icon�	 0 plural_test Plural_Test� 0 osasc osaSc� 0 shsc shSc 1������������� ������������%�3��^`begis��w��������������
� 
prcs
� 
bnid
� .corecnte****       ****
� 
capp
� kfrmID  
� .earsffdralis        afdr
�  
ctxt
�� 
in B
�� .sysorpthalis        TEXT
�� 
psxp
�� 
nmbr
�� 
strq�� 0 	growlthis 	growlThis��  ��  �g_b   � O� *�-�[�,\Z�81j jE�UO)���0j 
E�Og�!��E�O��&E�O��  �E�Y hO�a   a a �l E�Y '�a   a a �l E�Y a a �l E�O�a ,�&E�O�j  
a E�Y �k  
a E�Y hOa  ��a  ��a &E�O�k ?a �%a %�%a %�%a  %�%a !%�%a "%E�Oa #�a $,%a %%E�O)�k+ &Y <a '�%a (%�%a )%�%a *%�%a +%�%a ,%E�Oa -�a $,%a .%E�O)�k+ &Y hUY hVY hOPW X / 0h� ������� ���� 0 	growlthis 	growlThis�� ��!�� !  ���� 0 shsc shSc��   ���� 0 shsc shSc  ���
�� .sysoexecTEXT���     TEXT�� g� �j V� �������"#���� 0 growl_growler growl_Growler�� ��$�� $  ������ 0 successcount successCount�� 0 itemnum itemNum��  " ������������������ 0 successcount successCount�� 0 itemnum itemNum�� 0 isgrlrunning isGrlRunning�� 
0 part_1  �� 0 plural_test Plural_Test�� 
0 part_2  �� 0 combined_parts  �� 0 shsc shSc# ������������
"%25;K��O������
�� 
prcs
�� 
bnid
�� .corecnte****       ****
�� 
nmbr
�� 
strq�� 0 	growlthis 	growlThis��  ��  �� � �� *�-�[�,\Z�81j jE�UOg� q� i�E�O��&E�O�i  �E�Y /�j  �E�Y #�k  �%�%E�Y �k ��%�%E�Y hO�E�O��%E�Oa �a ,%a %E�O)�k+ Y hOPVW X  h� ��a����%&���� *0 notification_center notification_Center�� ��'�� '  ������ 0 successcount successCount�� 0 itemnum itemNum��  % �������� 0 successcount successCount�� 0 itemnum itemNum�� 0 plural_test Plural_Test& ��|������������������������
�� 
nmbr
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj � ��(����)*��
�� .aevtoappnull  �   � ****( k    ++  �����  ��  ��  ) ������ 0 errtext errText�� 0 errnum errNum* ! ���������������,:��8��?�O�T�_q����� 0 
startgrowl 
startGrowl�� 0 selecteditems selectedItems� 0 
item_check 
item_Check
� 
msng� 0 
item_count 
item_Count� 0 process_items process_Items� 0 item_process item_Process� 0 trashfolder  � 0 success  � 0 growl_growler growl_Growler� *0 notification_center notification_Center� 0 errtext errText, ���
� 
errn� 0 errnum errNum�  
� 
prcs
� 
bnid
� .corecnte****       ****� 0 isgrlrunning isGrlRunning���� 
0 part_1  � 
0 part_2  
� 
ret 
� 
disp
� .sysodlogaskr        TEXT�� �b   �  
)j+ Y hOjvE�O)j+ E�O�� ;)�b  l+ O)b  b  b  m+ O)�k+ O)b  k+ E�OPY 	iEc  Ob   �  )b  b  l+ Y )b  b  l+ OPW rX  �  *a -a [a ,\Za 81j jE` UOga  B_  :�a   a E` Oa E` Y 	a E` Oa �%_ %�%a jl  Y hV ascr  ��ޭ