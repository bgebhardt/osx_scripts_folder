FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
	# DESCRIPTION #

	This script takes the currently selected actions or projects and sets them for action tomorrow.
	
	**IMPORTANT: Now has two modes: "Start" mode and "Due" mode. Start mode is for people
	who use start dates to plan for the day; Due mode is for people who use Due dates for the same.
	It is now my opinion that Start dates are more useful for day-to-day planning, but this script is 
	intended to provide flexibility in whatever system you use.
	
	By default, this script will now set start dates, but you can change this in the settings below.**

	## START MODE LOGIC ##
	For each item:
		- If no original due date, sets due to tomorrow at the set time

	## DUE MODE LOGIC ##
	For each item:
	-	If there's no existing due date: sets Due to tomorrow (at time specified in script settings)
	-	If there's an existing due date: sets Due to tomorrow at the *original* due time
	-	If there's an existing due date AND start date: advances start date by same # of days as due 
		date (this is to respect parameters of repeating actions)
	-	Ignores start date if there's no due date already assigned to a task
	
	
	# LICENSE #
	
	Copyright � 2009-2010 Dan Byler (contact: dbyler@gmail.com)
	Licensed under MIT License (http://www.opensource.org/licenses/mit-license.php)
	

	# CHANGE HISTORY #

	0.41 (2011-10-31)
	-	Updated Growl code to work with Growl 1.3 (App Store version)
	-	Updated tell syntax to call "first document window", not "front document window"

	0.4 (2011-08-30)
	-	Rewrote notification code to gracefully handle situations where Growl is not installed
	
	0.3 (2011-07-07):
	-	New setting: "Start" or "Due" modes (see above)
	-	No longer fails when a Grouping divider is selected
	-	Streamlined calls to OmniFocus with Rob Trew's input (Thanks, Rob!)
	-	Reorganized script for better readability

	0.2c (2010-06-22)
	-	Actual fix for autosave

	0.2b (2010-06-21)
	-	Encapsulated autosave in "try" statements in case this fails

	0.2 (2010-06-15)
	-	Added performance optimization (thanks to Curt Clifton)
	-	Fixed Growl code (broke with Snow Leopard)
	-	Switched to MIT license (simpler, less restrictive)

	0.1: Initial release. Based on my Defer script, which incorporates bug fixes from Curt Clifton. Also uses method that doesn't call Growl directly. This code should be friendly for machines that don't have Growl installed. In my testing, I found that GrowlHelperApp crashes on nearly 10% of AppleScript calls, so the script checks for GrowlHelperApp and launches it if not running. (Thanks to Nanovivid from forums.cocoaforge.com/viewtopic.php?p=32584 and Macfaninpdx from forums.macrumors.com/showthread.php?t=423718 for the information needed to get this working

	# INSTALLATION #

	-	Copy to ~/Library/Scripts/Applications/Omnifocus
 	-	If desired, add to the OmniFocus toolbar using View > Customize Toolbar... within OmniFocus

	# KNOWN BUGS #
	-	When the script is invoked from the OmniFocus toolbar and canceled, OmniFocus returns an error. This issue does not occur when invoked from the script menu, a Quicksilver trigger, etc.
		
     � 	 	
 
 	 #   D E S C R I P T I O N   # 
 
 	 T h i s   s c r i p t   t a k e s   t h e   c u r r e n t l y   s e l e c t e d   a c t i o n s   o r   p r o j e c t s   a n d   s e t s   t h e m   f o r   a c t i o n   t o m o r r o w . 
 	 
 	 * * I M P O R T A N T :   N o w   h a s   t w o   m o d e s :   " S t a r t "   m o d e   a n d   " D u e "   m o d e .   S t a r t   m o d e   i s   f o r   p e o p l e 
 	 w h o   u s e   s t a r t   d a t e s   t o   p l a n   f o r   t h e   d a y ;   D u e   m o d e   i s   f o r   p e o p l e   w h o   u s e   D u e   d a t e s   f o r   t h e   s a m e . 
 	 I t   i s   n o w   m y   o p i n i o n   t h a t   S t a r t   d a t e s   a r e   m o r e   u s e f u l   f o r   d a y - t o - d a y   p l a n n i n g ,   b u t   t h i s   s c r i p t   i s   
 	 i n t e n d e d   t o   p r o v i d e   f l e x i b i l i t y   i n   w h a t e v e r   s y s t e m   y o u   u s e . 
 	 
 	 B y   d e f a u l t ,   t h i s   s c r i p t   w i l l   n o w   s e t   s t a r t   d a t e s ,   b u t   y o u   c a n   c h a n g e   t h i s   i n   t h e   s e t t i n g s   b e l o w . * * 
 
 	 # #   S T A R T   M O D E   L O G I C   # # 
 	 F o r   e a c h   i t e m : 
 	 	 -   I f   n o   o r i g i n a l   d u e   d a t e ,   s e t s   d u e   t o   t o m o r r o w   a t   t h e   s e t   t i m e 
 
 	 # #   D U E   M O D E   L O G I C   # # 
 	 F o r   e a c h   i t e m : 
 	 - 	 I f   t h e r e ' s   n o   e x i s t i n g   d u e   d a t e :   s e t s   D u e   t o   t o m o r r o w   ( a t   t i m e   s p e c i f i e d   i n   s c r i p t   s e t t i n g s ) 
 	 - 	 I f   t h e r e ' s   a n   e x i s t i n g   d u e   d a t e :   s e t s   D u e   t o   t o m o r r o w   a t   t h e   * o r i g i n a l *   d u e   t i m e 
 	 - 	 I f   t h e r e ' s   a n   e x i s t i n g   d u e   d a t e   A N D   s t a r t   d a t e :   a d v a n c e s   s t a r t   d a t e   b y   s a m e   #   o f   d a y s   a s   d u e   
 	 	 d a t e   ( t h i s   i s   t o   r e s p e c t   p a r a m e t e r s   o f   r e p e a t i n g   a c t i o n s ) 
 	 - 	 I g n o r e s   s t a r t   d a t e   i f   t h e r e ' s   n o   d u e   d a t e   a l r e a d y   a s s i g n e d   t o   a   t a s k 
 	 
 	 
 	 #   L I C E N S E   # 
 	 
 	 C o p y r i g h t   �   2 0 0 9 - 2 0 1 0   D a n   B y l e r   ( c o n t a c t :   d b y l e r @ g m a i l . c o m ) 
 	 L i c e n s e d   u n d e r   M I T   L i c e n s e   ( h t t p : / / w w w . o p e n s o u r c e . o r g / l i c e n s e s / m i t - l i c e n s e . p h p ) 
 	 
 
 	 #   C H A N G E   H I S T O R Y   # 
 
 	 0 . 4 1   ( 2 0 1 1 - 1 0 - 3 1 ) 
 	 - 	 U p d a t e d   G r o w l   c o d e   t o   w o r k   w i t h   G r o w l   1 . 3   ( A p p   S t o r e   v e r s i o n ) 
 	 - 	 U p d a t e d   t e l l   s y n t a x   t o   c a l l   " f i r s t   d o c u m e n t   w i n d o w " ,   n o t   " f r o n t   d o c u m e n t   w i n d o w " 
 
 	 0 . 4   ( 2 0 1 1 - 0 8 - 3 0 ) 
 	 - 	 R e w r o t e   n o t i f i c a t i o n   c o d e   t o   g r a c e f u l l y   h a n d l e   s i t u a t i o n s   w h e r e   G r o w l   i s   n o t   i n s t a l l e d 
 	 
 	 0 . 3   ( 2 0 1 1 - 0 7 - 0 7 ) : 
 	 - 	 N e w   s e t t i n g :   " S t a r t "   o r   " D u e "   m o d e s   ( s e e   a b o v e ) 
 	 - 	 N o   l o n g e r   f a i l s   w h e n   a   G r o u p i n g   d i v i d e r   i s   s e l e c t e d 
 	 - 	 S t r e a m l i n e d   c a l l s   t o   O m n i F o c u s   w i t h   R o b   T r e w ' s   i n p u t   ( T h a n k s ,   R o b ! ) 
 	 - 	 R e o r g a n i z e d   s c r i p t   f o r   b e t t e r   r e a d a b i l i t y 
 
 	 0 . 2 c   ( 2 0 1 0 - 0 6 - 2 2 ) 
 	 - 	 A c t u a l   f i x   f o r   a u t o s a v e 
 
 	 0 . 2 b   ( 2 0 1 0 - 0 6 - 2 1 ) 
 	 - 	 E n c a p s u l a t e d   a u t o s a v e   i n   " t r y "   s t a t e m e n t s   i n   c a s e   t h i s   f a i l s 
 
 	 0 . 2   ( 2 0 1 0 - 0 6 - 1 5 ) 
 	 - 	 A d d e d   p e r f o r m a n c e   o p t i m i z a t i o n   ( t h a n k s   t o   C u r t   C l i f t o n ) 
 	 - 	 F i x e d   G r o w l   c o d e   ( b r o k e   w i t h   S n o w   L e o p a r d ) 
 	 - 	 S w i t c h e d   t o   M I T   l i c e n s e   ( s i m p l e r ,   l e s s   r e s t r i c t i v e ) 
 
 	 0 . 1 :   I n i t i a l   r e l e a s e .   B a s e d   o n   m y   D e f e r   s c r i p t ,   w h i c h   i n c o r p o r a t e s   b u g   f i x e s   f r o m   C u r t   C l i f t o n .   A l s o   u s e s   m e t h o d   t h a t   d o e s n ' t   c a l l   G r o w l   d i r e c t l y .   T h i s   c o d e   s h o u l d   b e   f r i e n d l y   f o r   m a c h i n e s   t h a t   d o n ' t   h a v e   G r o w l   i n s t a l l e d .   I n   m y   t e s t i n g ,   I   f o u n d   t h a t   G r o w l H e l p e r A p p   c r a s h e s   o n   n e a r l y   1 0 %   o f   A p p l e S c r i p t   c a l l s ,   s o   t h e   s c r i p t   c h e c k s   f o r   G r o w l H e l p e r A p p   a n d   l a u n c h e s   i t   i f   n o t   r u n n i n g .   ( T h a n k s   t o   N a n o v i v i d   f r o m   f o r u m s . c o c o a f o r g e . c o m / v i e w t o p i c . p h p ? p = 3 2 5 8 4   a n d   M a c f a n i n p d x   f r o m   f o r u m s . m a c r u m o r s . c o m / s h o w t h r e a d . p h p ? t = 4 2 3 7 1 8   f o r   t h e   i n f o r m a t i o n   n e e d e d   t o   g e t   t h i s   w o r k i n g 
 
 	 #   I N S T A L L A T I O N   # 
 
 	 - 	 C o p y   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s 
   	 - 	 I f   d e s i r e d ,   a d d   t o   t h e   O m n i F o c u s   t o o l b a r   u s i n g   V i e w   >   C u s t o m i z e   T o o l b a r . . .   w i t h i n   O m n i F o c u s 
 
 	 #   K N O W N   B U G S   # 
 	 - 	 W h e n   t h e   s c r i p t   i s   i n v o k e d   f r o m   t h e   O m n i F o c u s   t o o l b a r   a n d   c a n c e l e d ,   O m n i F o c u s   r e t u r n s   a n   e r r o r .   T h i s   i s s u e   d o e s   n o t   o c c u r   w h e n   i n v o k e d   f r o m   t h e   s c r i p t   m e n u ,   a   Q u i c k s i l v e r   t r i g g e r ,   e t c . 
 	 	 
   
  
 l     ��������  ��  ��        l     ��  ��    Z TThe following setting changes script mode. Options: "start" or "due" (quotes needed)     �   � T h e   f o l l o w i n g   s e t t i n g   c h a n g e s   s c r i p t   m o d e .   O p t i o n s :   " s t a r t "   o r   " d u e "   ( q u o t e s   n e e d e d )      j     �� �� 0 mode    m        �   
 s t a r t      l     ��������  ��  ��        l          j    �� �� 20 showsummarynotification showSummaryNotification  m    ��
�� boovtrue  1 +if true, will display success notifications     �   V i f   t r u e ,   w i l l   d i s p l a y   s u c c e s s   n o t i f i c a t i o n s       l      ! " # ! j    �� $�� 0 usegrowl useGrowl $ m    ��
�� boovtrue " 8 2if true, will use Growl for success/failure alerts    # � % % d i f   t r u e ,   w i l l   u s e   G r o w l   f o r   s u c c e s s / f a i l u r e   a l e r t s    & ' & l      ( ) * ( j   	 �� +�� 0 	starttime 	startTime + m   	 
���� 	 ) M GStart hour for items not previously assigned a start time (24 hr clock)    * � , , � S t a r t   h o u r   f o r   i t e m s   n o t   p r e v i o u s l y   a s s i g n e d   a   s t a r t   t i m e   ( 2 4   h r   c l o c k ) '  - . - l      / 0 1 / j    �� 2�� 0 duetime dueTime 2 m    ����  0 I CDue hour for items not previously assigned a due time (24 hr clock)    1 � 3 3 � D u e   h o u r   f o r   i t e m s   n o t   p r e v i o u s l y   a s s i g n e d   a   d u e   t i m e   ( 2 4   h r   c l o c k ) .  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8   Don't change these    9 � : : &   D o n ' t   c h a n g e   t h e s e 7  ; < ; j    �� =�� 0 alertitemnum alertItemNum = m     > > � ? ?   <  @ A @ j    �� B�� 0 alertdaynum alertDayNum B m     C C � D D   A  E F E j    �� G�� 0 growlappname growlAppName G m     H H � I I  D a n ' s   S c r i p t s F  J K J j    �� L�� $0 allnotifications allNotifications L J     M M  N O N m     P P � Q Q  G e n e r a l O  R�� R m     S S � T T 
 E r r o r��   K  U V U j    '�� W�� ,0 enablednotifications enabledNotifications W J    & X X  Y Z Y m    ! [ [ � \ \  G e n e r a l Z  ]�� ] m   ! $ ^ ^ � _ _ 
 E r r o r��   V  ` a ` j   ( ,�� b�� "0 iconapplication iconApplication b m   ( + c c � d d  O m n i F o c u s . a p p a  e f e l     ��������  ��  ��   f  g h g i   - 0 i j i I      �������� 0 main  ��  ��   j k    ` k k  l m l O     n o n O    p q p k    r r  s t s l   �� u v��   u  Get selection    v � w w  G e t   s e l e c t i o n t  x y x r     z { z m    ����   { o      ���� 0 totalminutes totalMinutes y  | } | r    2 ~  ~ n    0 � � � 1   . 0��
�� 
valL � l   . ����� � 6  . � � � 2   ��
�� 
OTst � F    - � � � >   " � � � n     � � � m    ��
�� 
pcls � n    � � � 1    ��
�� 
valL �  g     � m    !��
�� 
cobj � >  # , � � � n   $ ( � � � m   & (��
�� 
pcls � n  $ & � � � 1   $ &��
�� 
valL �  g   $ $ � m   ) +��
�� 
FCAr��  ��    o      ���� 00 validselecteditemslist validSelectedItemsList }  � � � r   3 : � � � I  3 8�� ���
�� .corecnte****       **** � o   3 4���� 00 validselecteditemslist validSelectedItemsList��   � o      ���� 0 
totalitems 
totalItems �  � � � Z   ; \ � ����� � =  ; > � � � o   ; <���� 0 
totalitems 
totalItems � m   < =����   � k   A X � �  � � � r   A D � � � m   A B � � � � � 
 E r r o r � o      ���� 0 	alertname 	alertName �  � � � r   E H � � � m   E F � � � � �  S c r i p t   f a i l u r e � o      ���� 0 
alerttitle 
alertTitle �  � � � r   I L � � � m   I J � � � � � 2 N o   v a l i d   t a s k ( s )   s e l e c t e d � o      ���� 0 	alerttext 	alertText �  � � � n  M U � � � I   N U�� ����� 
0 notify   �  � � � o   N O���� 0 	alertname 	alertName �  � � � o   O P���� 0 
alerttitle 
alertTitle �  ��� � o   P Q���� 0 	alerttext 	alertText��  ��   �  f   M N �  ��� � L   V X����  ��  ��  ��   �  � � � l  ] ]��������  ��  ��   �  � � � l  ] ]�� � ���   �  Perform action    � � � �  P e r f o r m   a c t i o n �  � � � r   ] ` � � � m   ] ^����   � o      ���� 0 
successtot 
successTot �  � � � r   a d � � � m   a b��
�� boovfals � o      ���� 0 autosave   �  � � � r   e z � � � [   e x � � � \   e t � � � l  e j ����� � I  e j������
�� .misccurdldt    ��� null��  ��  ��  ��   � l  j s ����� � n   j s � � � 1   o s��
�� 
time � l  j o ����� � I  j o������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   � m   t w����  Q� � o      ���� 0 newdate newDate �  � � � Z   { � � � � � =  { � � � � o   { ����� 0 mode   � m   � � � � � � � 
 s t a r t � X   � � ��� � � k   � � � �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 starttomorrow startTomorrow �  � � � o   � ����� 0 thisitem thisItem �  ��� � o   � ����� 0 newdate newDate��  ��   �  f   � � � o      ���� 0 	succeeded   �  ��� � Z  � � � ����� � o   � ����� 0 	succeeded   � r   � � � � � [   � � � � � o   � ����� 0 
successtot 
successTot � m   � �����  � o      ���� 0 
successtot 
successTot��  ��  ��  �� 0 thisitem thisItem � o   � ����� 00 validselecteditemslist validSelectedItemsList �  � � � =  � � � � � o   � ����� 0 mode   � m   � � � � � � �  d u e �  ��� � X   � � ��� � � k   � � � �    r   � � n  � � I   � ������� 0 duetomorrow dueTomorrow  o   � ����� 0 thisitem thisItem 	��	 o   � ����� 0 newdate newDate��  ��    f   � � o      ���� 0 	succeeded   
��
 Z  � ����� o   � ����� 0 	succeeded   r   � � [   � � o   � ����� 0 
successtot 
successTot m   � �����  o      ���� 0 
successtot 
successTot��  ��  ��  �� 0 thisitem thisItem � o   � ����� 00 validselecteditemslist validSelectedItemsList��   � k   �  r   � � m   � � � 
 E r r o r o      ���� 0 	alertname 	alertName  r   �  m   � � �  S c r i p t   f a i l u r e o      ���� 0 
alerttitle 
alertTitle  r   !  m  "" �## * I m p r o p e r   m o d e   s e t t i n g! o      ���� 0 	alerttext 	alertText $�$ n %&% I  �~'�}�~ 
0 notify  ' ()( o  	�|�| 0 	alertname 	alertName) *+* o  	
�{�{ 0 
alerttitle 
alertTitle+ ,�z, o  
�y�y 0 	alerttext 	alertText�z  �}  &  f  �   � -�x- r  ./. m  �w
�w boovtrue/ o      �v�v 0 autosave  �x   q n    010 1    �u
�u 
FCcn1 n    232 4   �t4
�t 
FCdw4 m   	 
�s�s 3 4   �r5
�r 
docu5 m    �q�q  o m     66�                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   m 787 l �p�o�n�p  �o  �n  8 9:9 l �m;<�m  ; " Display summary notification   < �== 8 D i s p l a y   s u m m a r y   n o t i f i c a t i o n: >�l> Z  `?@�k�j? o  �i�i 20 showsummarynotification showSummaryNotification@ k  \AA BCB r  #DED m  !FF �GG  G e n e r a lE o      �h�h 0 	alertname 	alertNameC HIH r  $)JKJ m  $'LL �MM  S c r i p t   c o m p l e t eK o      �g�g 0 
alerttitle 
alertTitleI NON Z *=PQ�f�eP ?  *-RSR o  *+�d�d 0 
successtot 
successTotS m  +,�c�c Q r  09TUT m  03VV �WW  sU o      �b�b 0 alertitemnum alertItemNum�f  �e  O XYX r  >SZ[Z c  >Q\]\ b  >M^_^ b  >I`a` b  >Cbcb o  >?�a�a 0 
successtot 
successTotc m  ?Bdd �ee 
   i t e ma o  CH�`�` 0 alertitemnum alertItemNum_ m  ILff �gg $   n o w   d u e   t o m o r r o w .] m  MP�_
�_ 
TEXT[ o      �^�^ 0 	alerttext 	alertTextY h�]h n T\iji I  U\�\k�[�\ 
0 notify  k lml o  UV�Z�Z 0 	alertname 	alertNamem non o  VW�Y�Y 0 
alerttitle 
alertTitleo p�Xp o  WX�W�W 0 	alerttext 	alertText�X  �[  j  f  TU�]  �k  �j  �l   h qrq l     �V�U�T�V  �U  �T  r sts i   1 4uvu I      �Sw�R�S 0 starttomorrow startTomorroww xyx o      �Q�Q 0 selecteditem selectedItemy z�Pz o      �O�O 0 newdate newDate�P  �R  v k     E{{ |}| r     ~~ m     �N
�N boovfals o      �M�M 0 success  } ��� O    B��� Q    A���L� k    8�� ��� r    ��� n    ��� 1    �K
�K 
FCDs� o    �J�J 0 selecteditem selectedItem� o      �I�I .0 originalstartdatetime originalStartDateTime� ��H� Z    8���G�� l   ��F�E� >   ��� o    �D�D .0 originalstartdatetime originalStartDateTime� m    �C
�C 
msng�F  �E  � k    $�� ��� l   �B���B  � 1 +Set new start date with original start time   � ��� V S e t   n e w   s t a r t   d a t e   w i t h   o r i g i n a l   s t a r t   t i m e� ��� r     ��� l   ��A�@� [    ��� o    �?�? 0 newdate newDate� l   ��>�=� n    ��� 1    �<
�< 
time� o    �;�; .0 originalstartdatetime originalStartDateTime�>  �=  �A  �@  � n      ��� 1    �:
�: 
FCDs� o    �9�9 0 selecteditem selectedItem� ��8� r   ! $��� m   ! "�7
�7 boovtrue� o      �6�6 0 success  �8  �G  � k   ' 8�� ��� r   ' 4��� l  ' 0��5�4� [   ' 0��� o   ' (�3�3 0 newdate newDate� l  ( /��2�1� ]   ( /��� o   ( -�0�0 0 	starttime 	startTime� 1   - .�/
�/ 
hour�2  �1  �5  �4  � n      ��� 1   1 3�.
�. 
FCDs� o   0 1�-�- 0 selecteditem selectedItem� ��,� r   5 8��� m   5 6�+
�+ boovtrue� o      �*�* 0 success  �,  �H  � R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �L  � m    ���                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��&� L   C E�� o   C D�%�% 0 success  �&  t ��� l     �$�#�"�$  �#  �"  � ��� i   5 8��� I      �!�� �! 0 duetomorrow dueTomorrow� ��� o      �� 0 selecteditem selectedItem� ��� o      �� 0 newdate newDate�  �   � k     w�� ��� r     ��� m     �
� boovfals� o      �� 0 success  � ��� O    t��� Q    s���� k    j�� ��� r    ��� n    ��� 1    �
� 
FCDd� o    �� 0 selecteditem selectedItem� o      �� *0 originalduedatetime originalDueDateTime� ��� Z    j����� l   ���� >   ��� o    �� *0 originalduedatetime originalDueDateTime� m    �
� 
msng�  �  � k    V�� ��� l   ����  � - 'Set new due date with original due time   � ��� N S e t   n e w   d u e   d a t e   w i t h   o r i g i n a l   d u e   t i m e� ��� r    ��� \    ��� o    �� *0 originalduedatetime originalDueDateTime� l   ���� n    ��� 1    �
� 
time� o    �� *0 originalduedatetime originalDueDateTime�  �  � o      �
�
 ,0 originalduestartdate originalDueStartDate� ��� r    &��� ^    $��� l   "��	�� \    "��� o     �� 0 newdate newDate� o     !�� ,0 originalduestartdate originalDueStartDate�	  �  � m   " #��  Q�� o      �� 0 thedelta theDelta� ��� r   ' .��� l  ' ,���� [   ' ,��� o   ' (�� *0 originalduedatetime originalDueDateTime� l  ( +�� ��� ]   ( +� � o   ( )���� 0 thedelta theDelta  1   ) *��
�� 
days�   ��  �  �  � o      ����  0 newduedatetime newDueDateTime�  r   / 4 o   / 0����  0 newduedatetime newDueDateTime n       1   1 3��
�� 
FCDd o   0 1���� 0 selecteditem selectedItem  r   5 :	
	 n   5 8 1   6 8��
�� 
FCDs o   5 6���� 0 selecteditem selectedItem
 o      ���� .0 originalstartdatetime originalStartDateTime  Z   ; R���� l  ; >���� >  ; > o   ; <���� .0 originalstartdatetime originalStartDateTime m   < =��
�� 
msng��  ��   k   A N  r   A H l  A F���� [   A F o   A B���� .0 originalstartdatetime originalStartDateTime l  B E���� ]   B E o   B C���� 0 thedelta theDelta 1   C D��
�� 
days��  ��  ��  ��   o      ���� $0 newstartdatetime newStartDateTime �� r   I N !  o   I J���� $0 newstartdatetime newStartDateTime! n      "#" 1   K M��
�� 
FCDs# o   J K���� 0 selecteditem selectedItem��  ��  ��   $��$ r   S V%&% m   S T��
�� boovtrue& o      ���� 0 success  ��  �  � k   Y j'' ()( r   Y f*+* l  Y b,����, [   Y b-.- o   Y Z���� 0 newdate newDate. l  Z a/����/ ]   Z a010 o   Z _���� 0 duetime dueTime1 1   _ `��
�� 
hour��  ��  ��  ��  + n      232 1   c e��
�� 
FCDd3 o   b c���� 0 selecteditem selectedItem) 4��4 r   g j565 m   g h��
�� boovtrue6 o      ���� 0 success  ��  �  � R      ������
�� .ascrerr ****      � ****��  ��  �  � m    77�                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � 8��8 L   u w99 o   u v���� 0 success  ��  � :;: l     ��������  ��  ��  ; <=< l      ��>?��  >   Begin notification code    ? �@@ 2   B e g i n   n o t i f i c a t i o n   c o d e  = ABA i   9 <CDC I      ��E���� 
0 notify  E FGF o      ���� 0 	alertname 	alertNameG HIH o      ���� 0 
alerttitle 
alertTitleI J��J o      ���� 0 	alerttext 	alertText��  ��  D k     	KK LML l     ��NO��  N - 'Call this to show a normal notification   O �PP N C a l l   t h i s   t o   s h o w   a   n o r m a l   n o t i f i c a t i o nM Q��Q n    	RSR I    	��T���� 0 
notifymain 
notifyMainT UVU o    ���� 0 	alertname 	alertNameV WXW o    ���� 0 
alerttitle 
alertTitleX YZY o    ���� 0 	alerttext 	alertTextZ [��[ m    ��
�� boovfals��  ��  S  f     ��  B \]\ l     ��������  ��  ��  ] ^_^ i   = @`a` I      ��b���� $0 notifywithsticky notifyWithStickyb cdc o      ���� 0 	alertname 	alertNamed efe o      ���� 0 
alerttitle 
alertTitlef g��g o      ���� 0 	alerttext 	alertText��  ��  a k     	hh iji l     ��kl��  k &  Show a sticky Growl notification   l �mm @ S h o w   a   s t i c k y   G r o w l   n o t i f i c a t i o nj n��n n    	opo I    	��q���� 0 
notifymain 
notifyMainq rsr o    ���� 0 	alertname 	alertNames tut o    ���� 0 
alerttitle 
alertTitleu vwv o    ���� 0 	alerttext 	alertTextw x��x m    ��
�� boovtrue��  ��  p  f     ��  _ yzy l     ��������  ��  ��  z {|{ i   A D}~} I      ��������  0 isgrowlrunning IsGrowlRunning��  ��  ~ k      ��� O    ��� r    ��� ?    ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ 6  ��� 2    ��
�� 
prcs� =   ��� 1   	 ��
�� 
fcrt� m    �� ���  G R R R��  ��  ��  ��  ��  � m    ����  � o      ���� 0 growlrunning GrowlRunning� m     ���                                                                                  sevs  alis    �  Macintosh HD               ���VH+   	d�System Events.app                                               �4�-        ����  	                CoreServices    ��*�      �5"�     	d� 	d� 	d�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L    �� o    ���� 0 growlrunning GrowlRunning��  | ��� l     ��������  ��  ��  � ��� i   E H��� I      ������� 0 dicttostring dictToString� ���� o      ���� 0 dict  ��  ��  � l    =���� k     =�� ��� r     ��� m     �� ���  {� o      ���� 0 
dictstring 
dictString� ��� X    4����� k    /�� ��� Z   %������� l   ������ ?    ��� n    ��� 1    ��
�� 
leng� o    ���� 0 
dictstring 
dictString� m    ���� ��  ��  � r    !��� b    ��� o    ���� 0 
dictstring 
dictString� m    �� ���  ,  � o      ���� 0 
dictstring 
dictString��  ��  � ���� r   & /��� b   & -��� b   & +��� b   & )��� o   & '���� 0 
dictstring 
dictString� m   ' (�� ���  "� o   ) *���� 0 i  � m   + ,�� ���  "� o      ���� 0 
dictstring 
dictString��  �� 0 i  � o    ���� 0 dict  � ��� r   5 :��� b   5 8��� o   5 6���� 0 
dictstring 
dictString� m   6 7�� ���  }� o      ���� 0 
dictstring 
dictString� ��� L   ; =�� o   ; <�~�~ 0 
dictstring 
dictString�  � 5 /needed to encapsulate dictionaries in osascript   � ��� ^ n e e d e d   t o   e n c a p s u l a t e   d i c t i o n a r i e s   i n   o s a s c r i p t� ��� l     �}�|�{�}  �|  �{  � ��� i   I L��� I      �z��y�z "0 notifywithgrowl notifyWithGrowl� ��� o      �x�x (0 growlhelperappname growlHelperAppName� ��� o      �w�w 0 	alertname 	alertName� ��� o      �v�v 0 
alerttitle 
alertTitle� ��� o      �u�u 0 	alerttext 	alertText� ��t� o      �s�s 0 	usesticky 	useSticky�t  �y  � O     7��� k    6�� ��� I   $�r�q�
�r .register****      � ****�q  � �p��
�p 
appl� o   	 �o�o 0 growlappname growlAppName� �n��
�n 
anot� o    �m�m $0 allnotifications allNotifications� �l��
�l 
dnot� o    �k�k ,0 enablednotifications enabledNotifications� �j��i
�j 
iapp� o     �h�h "0 iconapplication iconApplication�i  � ��g� I  % 6�f�e�
�f .notifygr****      � ****�e  � �d��
�d 
name� o   ' (�c�c 0 	alertname 	alertName� �b��
�b 
titl� o   ) *�a�a 0 
alerttitle 
alertTitle� �`��
�` 
appl� o   + 0�_�_ 0 growlappname growlAppName� �^��]
�^ 
desc� o   1 2�\�\ 0 	alerttext 	alertText�]  �g  � n    ��� 4    �[�
�[ 
capp� o    �Z�Z (0 growlhelperappname growlHelperAppName�  f     � ��� l     �Y�X�W�Y  �X  �W  � ��� i   M P� � I      �V�U�V (0 notifywithoutgrowl NotifyWithoutGrowl �T o      �S�S 0 	alerttext 	alertText�T  �U    O     I   �R
�R .sysodlogaskr        TEXT o    �Q�Q 0 	alerttext 	alertText �P
�P 
disp m    �O�O  �N	

�N 
btns	 J     �M m    	 �  O K�M  
 �L�K
�L 
dflt m     �  O K�K   m     �                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �J�I�H�J  �I  �H    i   Q T I      �G�F�G 0 
notifymain 
notifyMain  o      �E�E 0 	alertname 	alertName  o      �D�D 0 
alerttitle 
alertTitle  o      �C�C 0 	alerttext 	alertText  �B  o      �A�A 0 	usesticky 	useSticky�B  �F   k     �!! "#" l    $%&$ r     '(' n    )*) I    �@�?�>�@  0 isgrowlrunning IsGrowlRunning�?  �>  *  f     ( o      �=�= 0 growlrunning GrowlRunning% " check if Growl is running...   & �++ 8 c h e c k   i f   G r o w l   i s   r u n n i n g . . .# ,-, Z    `./�<�;. H    
00 o    	�:�: 0 growlrunning GrowlRunning/ l   \1231 k    \44 565 l   7897 r    :;: m    << �==  ; o      �9�9 0 	growlpath 	GrowlPath8 + %check to see if Growl is installed...   9 �>> J c h e c k   t o   s e e   i f   G r o w l   i s   i n s t a l l e d . . .6 ?@? Q    8AB�8A O   /CDC O   .EFE r     -GHG b     +IJI n     'KLK 1   % '�7
�7 
psxpL l    %M�6�5M c     %NON n    #PQP m   ! #�4
�4 
ctnrQ  g     !O m   # $�3
�3 
alis�6  �5  J 1   ' *�2
�2 
pnamH o      �1�1 0 strgrowlpath strGrowlPathF l   R�0�/R 5    �.S�-
�. 
appfS m    TT �UU  G R R R
�- kfrmID  �0  �/  D m    VV�                                                                                  MACS  alis    t  Macintosh HD               ���VH+   	d�
Finder.app                                                      ���B        ����  	                CoreServices    ��*�      �B�     	d� 	d� 	d�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  B R      �,�+�*
�, .ascrerr ****      � ****�+  �*  �8  @ W�)W Z   9 \XY�(�'X >  9 <Z[Z o   9 :�&�& 0 	growlpath 	GrowlPath[ m   : ;\\ �]]  Y l  ? X^_`^ k   ? Xaa bcb I  ? H�%d�$
�% .sysoexecTEXT���     TEXTd b   ? Defe b   ? Bghg m   ? @ii �jj 
 o p e n  h o   @ A�#�# 0 strgrowlpath strGrowlPathf m   B Ckk �ll &   >   / d e v / n u l l   2 > & 1   &�$  c mnm I  I P�"o�!
�" .sysodelanull��� ��� nmbro m   I Lpp ?�      �!  n q� q r   Q Xrsr n  Q Vtut I   R V����  0 isgrowlrunning IsGrowlRunning�  �  u  f   Q Rs o      �� 0 growlrunning GrowlRunning�   _  ...try to launch if so...   ` �vv 2 . . . t r y   t o   l a u n c h   i f   s o . . .�(  �'  �)  2  if Growl isn't running...   3 �ww 2 i f   G r o w l   i s n ' t   r u n n i n g . . .�<  �;  - x�x Z   a �yz�{y o   a b�� 0 growlrunning GrowlRunningz k   e �|| }~} O  e z� O  i y��� r   s x��� 1   s v�
� 
pnam� o      �� (0 growlhelperappname growlHelperAppName� l  i p���� 5   i p���
� 
appf� m   k n�� ���  G R R R
� kfrmID  �  �  � m   e f���                                                                                  MACS  alis    t  Macintosh HD               ���VH+   	d�
Finder.app                                                      ���B        ����  	                CoreServices    ��*�      �B�     	d� 	d� 	d�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ~ ��� I   { ����� "0 notifywithgrowl notifyWithGrowl� ��� o   | }�� (0 growlhelperappname growlHelperAppName� ��� o   } ~�� 0 	alertname 	alertName� ��� o   ~ �� 0 
alerttitle 
alertTitle� ��� o    ��� 0 	alerttext 	alertText� ��� o   � ��
�
 0 	usesticky 	useSticky�  �  �  �  { I   � ��	���	 (0 notifywithoutgrowl NotifyWithoutGrowl� ��� o   � ��� 0 	alerttext 	alertText�  �  �   ��� l      ����  �   end notification code    � ��� .   e n d   n o t i f i c a t i o n   c o d e  � ��� l     ����  �  �  � ��� l    �� ��� I     �������� 0 main  ��  ��  �   ��  �       ��� �������� > C H�� c�������������  � ���������������������������������������������� 0 mode  �� 20 showsummarynotification showSummaryNotification�� 0 usegrowl useGrowl�� 0 	starttime 	startTime�� 0 duetime dueTime�� 0 alertitemnum alertItemNum�� 0 alertdaynum alertDayNum�� 0 growlappname growlAppName�� $0 allnotifications allNotifications�� ,0 enablednotifications enabledNotifications�� "0 iconapplication iconApplication�� 0 main  �� 0 starttomorrow startTomorrow�� 0 duetomorrow dueTomorrow�� 
0 notify  �� $0 notifywithsticky notifyWithSticky��  0 isgrowlrunning IsGrowlRunning�� 0 dicttostring dictToString�� "0 notifywithgrowl notifyWithGrowl�� (0 notifywithoutgrowl NotifyWithoutGrowl�� 0 
notifymain 
notifyMain
�� .aevtoappnull  �   � ****
�� boovtrue
�� boovtrue�� 	�� � ����� �   P S� ����� �   [ ^� �� j���������� 0 main  ��  ��  � ������������������������ 0 totalminutes totalMinutes�� 00 validselecteditemslist validSelectedItemsList�� 0 
totalitems 
totalItems�� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText�� 0 
successtot 
successTot�� 0 autosave  �� 0 newdate newDate�� 0 thisitem thisItem�� 0 	succeeded  �  6������������������� � � ��������� ����� ���"FLVdf��
�� 
docu
�� 
FCdw
�� 
FCcn
�� 
OTst�  
�� 
valL
�� 
pcls
�� 
cobj
�� 
FCAr
�� .corecnte****       ****�� 
0 notify  
�� .misccurdldt    ��� null
�� 
time��  Q�
�� 
kocl�� 0 starttomorrow startTomorrow�� 0 duetomorrow dueTomorrow
�� 
TEXT��a�*�k/�k/�,jE�O*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j 
E�O�j  �E�O�E�O�E�O)���m+ OhY hOjE�OfE�O*j *j a ,a E�Ob   a   3 -�[a �l 
kh 	)��l+ E�O� 
�kE�Y h[OY��Y Yb   a   3 -�[a �l 
kh 	)��l+ E�O� 
�kE�Y h[OY��Y a E�Oa E�Oa E�O)���m+ OeE�UUOb   Ca E�Oa E�O�k a Ec  Y hO�a %b  %a %a &E�O)���m+ Y h� ��v���������� 0 starttomorrow startTomorrow�� ����� �  ������ 0 selecteditem selectedItem�� 0 newdate newDate��  � ���������� 0 selecteditem selectedItem�� 0 newdate newDate�� 0 success  �� .0 originalstartdatetime originalStartDateTime� �������������
�� 
FCDs
�� 
msng
�� 
time
�� 
hour��  ��  �� FfE�O� ; 2��,E�O�� ���,��,FOeE�Y �b  � ��,FOeE�W X  hUO�� ������������� 0 duetomorrow dueTomorrow�� ����� �  ������ 0 selecteditem selectedItem�� 0 newdate newDate��  � 	�������������������� 0 selecteditem selectedItem�� 0 newdate newDate�� 0 success  �� *0 originalduedatetime originalDueDateTime�� ,0 originalduestartdate originalDueStartDate�� 0 thedelta theDelta��  0 newduedatetime newDueDateTime�� .0 originalstartdatetime originalStartDateTime�� $0 newstartdatetime newStartDateTime� 
7������������������
�� 
FCDd
�� 
msng
�� 
time��  Q�
�� 
days
�� 
FCDs
�� 
hour��  ��  �� xfE�O� m d��,E�O�� D���,E�O���!E�O��� E�O���,FO��,E�O�� ��� E�O���,FY hOeE�Y �b  � ��,FOeE�W X  	hUO�� ��D���������� 
0 notify  �� ����� �  �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText��  � �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText� ������ �� 0 
notifymain 
notifyMain�� 
)���f�+ � ��a���������� $0 notifywithsticky notifyWithSticky�� ����� �  �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText��  � ��~�}� 0 	alertname 	alertName�~ 0 
alerttitle 
alertTitle�} 0 	alerttext 	alertText� �|�{�| �{ 0 
notifymain 
notifyMain�� 
)���e�+ � �z~�y�x���w�z  0 isgrowlrunning IsGrowlRunning�y  �x  � �v�v 0 growlrunning GrowlRunning� ��u��t��s
�u 
prcs
�t 
fcrt
�s .corecnte****       ****�w � *�-�[�,\Z�81j jE�UO�� �r��q�p���o�r 0 dicttostring dictToString�q �n��n �  �m�m 0 dict  �p  � �l�k�j�l 0 dict  �k 0 
dictstring 
dictString�j 0 i  � 	��i�h�g�f����
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
leng�o >�E�O /�[��l kh ��,k 
��%E�Y hO��%�%�%E�[OY��O��%E�O�� �e��d�c���b�e "0 notifywithgrowl notifyWithGrowl�d �a��a �  �`�_�^�]�\�` (0 growlhelperappname growlHelperAppName�_ 0 	alertname 	alertName�^ 0 
alerttitle 
alertTitle�] 0 	alerttext 	alertText�\ 0 	usesticky 	useSticky�c  � �[�Z�Y�X�W�[ (0 growlhelperappname growlHelperAppName�Z 0 	alertname 	alertName�Y 0 
alerttitle 
alertTitle�X 0 	alerttext 	alertText�W 0 	usesticky 	useSticky� �V�U�T�S�R�Q�P�O�N�M�L
�V 
capp
�U 
appl
�T 
anot
�S 
dnot
�R 
iapp�Q 
�P .register****      � ****
�O 
name
�N 
titl
�M 
desc
�L .notifygr****      � ****�b 8)�/ 1*�b  �b  �b  	�b  
� O*���b  �� 
U� �K �J�I���H�K (0 notifywithoutgrowl NotifyWithoutGrowl�J �G��G �  �F�F 0 	alerttext 	alertText�I  � �E�E 0 	alerttext 	alertText� �D�C�B�A�@
�D 
disp
�C 
btns
�B 
dflt�A 
�@ .sysodlogaskr        TEXT�H � ��k��kv��� U� �?�>�=���<�? 0 
notifymain 
notifyMain�> �;��; �  �:�9�8�7�: 0 	alertname 	alertName�9 0 
alerttitle 
alertTitle�8 0 	alerttext 	alertText�7 0 	usesticky 	useSticky�=  � �6�5�4�3�2�1�0�/�6 0 	alertname 	alertName�5 0 
alerttitle 
alertTitle�4 0 	alerttext 	alertText�3 0 	usesticky 	useSticky�2 0 growlrunning GrowlRunning�1 0 	growlpath 	GrowlPath�0 0 strgrowlpath strGrowlPath�/ (0 growlhelperappname growlHelperAppName� �.<V�-T�,�+�*�)�(�'�&\ik�%p�$��#�"�!�.  0 isgrowlrunning IsGrowlRunning
�- 
appf
�, kfrmID  
�+ 
ctnr
�* 
alis
�) 
psxp
�( 
pnam�'  �&  
�% .sysoexecTEXT���     TEXT
�$ .sysodelanull��� ��� nmbr�# �" "0 notifywithgrowl notifyWithGrowl�! (0 notifywithoutgrowl NotifyWithoutGrowl�< �)j+  E�O� T�E�O  � *���0 *�,�&�,*�,%E�UUW X 
 hO�� ��%�%j Oa j O)j+  E�Y hY hO� '� *�a �0 *�,E�UUO*�����a + Y *�k+ � � ������
�  .aevtoappnull  �   � ****� k     �� ���  �  �  �  � �� 0 main  � *j+   ascr  ��ޭ