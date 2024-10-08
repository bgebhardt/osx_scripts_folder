FasdUAS 1.101.10   ��   ��    k             l      ��  ��   SM
Script that sets window positions of my common apps.

iTunes - powerbook monitor
Adium - powerbook monitor
Mail - main monitor
Address book - where?
iCal - where?

TODO: add an option to extend/collapse window to fit screen bounds
TODO: update window positions for primary display

TO DO: integrate with internet start up script??

     � 	 	� 
 S c r i p t   t h a t   s e t s   w i n d o w   p o s i t i o n s   o f   m y   c o m m o n   a p p s . 
 
 i T u n e s   -   p o w e r b o o k   m o n i t o r 
 A d i u m   -   p o w e r b o o k   m o n i t o r 
 M a i l   -   m a i n   m o n i t o r 
 A d d r e s s   b o o k   -   w h e r e ? 
 i C a l   -   w h e r e ? 
 
 T O D O :   a d d   a n   o p t i o n   t o   e x t e n d / c o l l a p s e   w i n d o w   t o   f i t   s c r e e n   b o u n d s 
 T O D O :   u p d a t e   w i n d o w   p o s i t i o n s   f o r   p r i m a r y   d i s p l a y 
 
 T O   D O :   i n t e g r a t e   w i t h   i n t e r n e t   s t a r t   u p   s c r i p t ? ? 
 
   
  
 l     ��������  ��  ��        l     ��  ��    . ( prints the positions of all the windows     �   P   p r i n t s   t h e   p o s i t i o n s   o f   a l l   t h e   w i n d o w s      p         �� �� 0 bdebug bDebug  �� �� 0 bonedisplay bOneDisplay  ������ 0 bnotifyerrors bNotifyErrors��        l     ����  r         m     ��
�� boovfals  o      ���� 0 bdebug bDebug��  ��        l        r       !   m    ��
�� boovfals ! o      ���� 0 bnotifyerrors bNotifyErrors  1 + set to true to display dialogs with errors     � " " V   s e t   t o   t r u e   t o   d i s p l a y   d i a l o g s   w i t h   e r r o r s   # $ # l    %���� % r     & ' & n    ( ) ( I   	 �������� 0 isonedisplay isOneDisplay��  ��   )  f    	 ' o      ���� 0 bonedisplay bOneDisplay��  ��   $  * + * l    ,���� , I   �� -��
�� .ascrcmnt****      � **** - b     . / . m     0 0 � 1 1  b O n e D i s p l a y   =   / l    2���� 2 c     3 4 3 o    ���� 0 bonedisplay bOneDisplay 4 m    ��
�� 
TEXT��  ��  ��  ��  ��   +  5 6 5 l     ��������  ��  ��   6  7 8 7 l   9���� 9 O    : ; : k    < <  = > = l   �� ? @��   ? * $set theApps to application processes    @ � A A H s e t   t h e A p p s   t o   a p p l i c a t i o n   p r o c e s s e s >  B C B l   �� D E��   D % application process "Text Edit"    E � F F > a p p l i c a t i o n   p r o c e s s   " T e x t   E d i t " C  G H G l   ��������  ��  ��   H  I J I l   �� K L��   K + % for all windows on a second display	    L � M M J   f o r   a l l   w i n d o w s   o n   a   s e c o n d   d i s p l a y 	 J  N O N Z    ` P Q�� R P l    S���� S o    ���� 0 bonedisplay bOneDisplay��  ��   Q k   " , T T  U V U l  " "�� W X��   W 3 - only move the windows if there's one display    X � Y Y Z   o n l y   m o v e   t h e   w i n d o w s   i f   t h e r e ' s   o n e   d i s p l a y V  Z�� Z n  " , [ \ [ I   # ,�� ]����  0 cascadewindows cascadeWindows ]  ^ _ ^ m   # $ ` ` � a a  M a i l _  b�� b J   $ ( c c  d e d m   $ %����  e  f�� f m   % &���� ��  ��  ��   \  f   " #��  ��   R k   / ` g g  h i h n  / : j k j I   0 :�� l����  0 positionwindow positionWindow l  m n m m   0 1 o o � p p  C o n t a c t s n  q r q m   1 2 s s � t t 
 A d i u m r  u�� u J   2 6 v v  w x w m   2 3�����) x  y�� y m   3 4����  ��  ��  ��   k  f   / 0 i  z { z l  ; ;�� | }��   | H B old position my getPositionWindow("iTunes", "iTunes", {-1433, 4})    } � ~ ~ �   o l d   p o s i t i o n   m y   g e t P o s i t i o n W i n d o w ( " i T u n e s " ,   " i T u n e s " ,   { - 1 4 3 3 ,   4 } ) {   �  n  ; L � � � I   < L�� �����  0 positionwindow positionWindow �  � � � m   < ? � � � � � 
 S k y p e �  � � � m   ? B � � � � � 
 S k y p e �  ��� � J   B H � �  � � � m   B E������ �  ��� � m   E F����  ��  ��  ��   �  f   ; < �  ��� � n  M ` � � � I   N `�� �����  0 positionwindow positionWindow �  � � � m   N Q � � � � �  i T u n e s �  � � � m   Q T � � � � �  i T u n e s �  ��� � J   T \ � �  � � � m   T W�����g �  ��� � m   W Z���� <��  ��  ��   �  f   M N��   O  � � � l  a a��������  ��  ��   �  � � � l  a a�� � ���   � 2 , my positionWindow("iCal", "iCal", {15, 44})    � � � � X   m y   p o s i t i o n W i n d o w ( " i C a l " ,   " i C a l " ,   { 1 5 ,   4 4 } ) �  � � � l  a a�� � ���   � C = my positionWindow("Address Book", "Address Book", {500, 40})    � � � � z   m y   p o s i t i o n W i n d o w ( " A d d r e s s   B o o k " ,   " A d d r e s s   B o o k " ,   { 5 0 0 ,   4 0 } ) �  � � � l  a a�� � ���   � : 4my positionWindow("NewsFire", "NewsFire", {360, 32})    � � � � h m y   p o s i t i o n W i n d o w ( " N e w s F i r e " ,   " N e w s F i r e " ,   { 3 6 0 ,   3 2 } ) �  � � � l  a a�� � ���   � F @my getPositionWindow("", "OmniOutliner Professional", {360, 32})    � � � � � m y   g e t P o s i t i o n W i n d o w ( " " ,   " O m n i O u t l i n e r   P r o f e s s i o n a l " ,   { 3 6 0 ,   3 2 } ) �  � � � l  a a�� � ���   � 1 +my getPositionWindow("", "Mail", {360, 32})    � � � � V m y   g e t P o s i t i o n W i n d o w ( " " ,   " M a i l " ,   { 3 6 0 ,   3 2 } ) �  � � � l  a o � � � � n  a o � � � I   b o�� �����  0 cascadewindows cascadeWindows �  � � � m   b e � � � � � 2 O m n i O u t l i n e r   P r o f e s s i o n a l �  ��� � J   e k � �  � � � m   e h���� � �  ��� � m   h i���� ��  ��  ��   �  f   a b � + % move over so utility drawer can show    � � � � J   m o v e   o v e r   s o   u t i l i t y   d r a w e r   c a n   s h o w �  � � � l  p p��������  ��  ��   �  � � � l  p p�� � ���   � f `my positionWindow("Inbox", "Mail", {-1434, 80}) -- doesn't work because inbox window name varies    � � � � � m y   p o s i t i o n W i n d o w ( " I n b o x " ,   " M a i l " ,   { - 1 4 3 4 ,   8 0 } )   - -   d o e s n ' t   w o r k   b e c a u s e   i n b o x   w i n d o w   n a m e   v a r i e s �  � � � n  p | � � � I   q |�� �����  0 cascadewindows cascadeWindows �  � � � m   q t � � � � �  M a i l �  ��� � J   t x � �  � � � m   t u����  �  ��� � m   u v���� ��  ��  ��   �  f   p q �  � � � n  } � � � � I   ~ ��� �����  0 cascadewindows cascadeWindows �  � � � m   ~ � � � � � �  M a i l p l a n e �  ��� � J   � � � �  � � � m   � �����  �  ��� � m   � ����� ��  ��  ��   �  f   } ~ �  � � � n  � � � � � I   � ��� �����  0 cascadewindows cascadeWindows �  � � � m   � � � � � � �  G m a i l   P e r s o n a l �  ��� � J   � � � �  � � � m   � �����  �  ��� � m   � ����� ��  ��  ��   �  f   � � �    l  � �����   8 2 my cascadeWindows("Microsoft Entourage", {5, 27})    � d   m y   c a s c a d e W i n d o w s ( " M i c r o s o f t   E n t o u r a g e " ,   { 5 ,   2 7 } )  n  � � I   � ���	����  0 cascadewindows cascadeWindows	 

 m   � � �  N e t N e w s W i r e �� J   � �  m   � �����  �� m   � ����� ��  ��  ��    f   � �  n  � � I   � �������  0 cascadewindows cascadeWindows  m   � � �  O m n i F o c u s �� J   � �  m   � �����   ��  m   � ����� ��  ��  ��    f   � � !"! l  � ���#$��  # / ) my cascadeWindows("DEVONthink", {5, 27})   $ �%% R   m y   c a s c a d e W i n d o w s ( " D E V O N t h i n k " ,   { 5 ,   2 7 } )" &'& n  � �()( I   � ���*����  0 cascadewindows cascadeWindows* +,+ m   � �-- �..  S a f a r i, /��/ J   � �00 121 m   � ����� 2 3��3 m   � ��� ��  ��  ��  )  f   � �' 454 n  � �676 I   � ��~8�}�~  0 cascadewindows cascadeWindows8 9:9 m   � �;; �<<  G o o g l e   C h r o m e: =�|= J   � �>> ?@? m   � ��{�{ @ A�zA m   � ��y�y �z  �|  �}  7  f   � �5 BCB n  � �DED I   � ��xF�w�x  0 cascadewindows cascadeWindowsF GHG m   � �II �JJ  T e x t M a t eH K�vK J   � �LL MNM m   � ��u�u N O�tO m   � ��s�s �t  �v  �w  E  f   � �C PQP n  � �RSR I   � ��rT�q�r  0 cascadewindows cascadeWindowsT UVU m   � �WW �XX  P r e v i e wV Y�pY J   � �ZZ [\[ m   � ��o�o \ ]�n] m   � ��m�m �n  �p  �q  S  f   � �Q ^_^ n  � �`a` I   � ��lb�k�l  0 cascadewindows cascadeWindowsb cdc m   � �ee �ff  T e r m i n a ld g�jg J   � �hh iji m   � ��i�i j k�hk m   � ��g�g �h  �j  �k  a  f   � �_ lml n  � �non I   � ��fp�e�f  0 cascadewindows cascadeWindowsp qrq m   � �ss �tt  V M w a r e   F u s i o nr u�du J   � �vv wxw m   � ��c�c x y�by m   � ��a�a �b  �d  �e  o  f   � �m z�`z n  �{|{ I   �_}�^�_  0 cascadewindows cascadeWindows} ~~ m   �� ���  P a t h   F i n d e r ��]� J  �� ��� m  �\�\ � ��[� m  �Z�Z �[  �]  �^  |  f   � �`   ; m    ���                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��   8 ��� l     �Y�X�W�Y  �X  �W  � ��� l     �V���V  � / ) get's the position of the app's windows.   � ��� R   g e t ' s   t h e   p o s i t i o n   o f   t h e   a p p ' s   w i n d o w s .� ��� i     ��� I      �U��T�U &0 getpositionwindow getPositionWindow� ��� o      �S�S 0 thewin theWin� ��� o      �R�R 0 
theprocess 
theProcess� ��Q� o      �P�P 0 thepos thePos�Q  �T  � Z     ����O�N� n    ��� I    �M��L�M 0 isapprunning isAppRunning� ��K� o    �J�J 0 
theprocess 
theProcess�K  �L  �  f     � O   	 ���� k    ��� ��� l   �I���I  �   log window position   � ��� (   l o g   w i n d o w   p o s i t i o n� ��� l   �H���H  � 7 1 if no window passed in then log all window names   � ��� b   i f   n o   w i n d o w   p a s s e d   i n   t h e n   l o g   a l l   w i n d o w   n a m e s� ��G� Z    ����F�� l   ��E�D� =   ��� o    �C�C 0 thewin theWin� m    �� ���  �E  �D  � k    _�� ��� r    ��� m    �B�B  � o      �A�A 0 windowindex windowIndex� ��� l   �@���@  � "  log position of each window   � ��� 8   l o g   p o s i t i o n   o f   e a c h   w i n d o w� ��?� X    _��>�� k   , Z�� ��� r   , 1��� n   , /��� 1   - /�=
�= 
posn� o   , -�<�< 0 i  � o      �;�; 0 curpos curPos� ��� I  2 T�:��9
�: .ascrcmnt****      � ****� b   2 P��� b   2 N��� b   2 I��� b   2 G��� b   2 B��� b   2 @��� b   2 9��� b   2 7��� m   2 3�� ��� & p o s i t i o n   o f   w i n d o w  � n   3 6��� 1   4 6�8
�8 
pnam� o   3 4�7�7 0 i  � m   7 8�� ���    o f   a p p  � n   9 ?��� 1   = ?�6
�6 
pnam� 4   9 =�5�
�5 
pcap� o   ; <�4�4 0 
theprocess 
theProcess� m   @ A�� ��� 
   i s   {� n   B F��� 4   C F�3�
�3 
cobj� m   D E�2�2 � o   B C�1�1 0 curpos curPos� m   G H�� ���  ,  � n   I M��� 4   J M�0�
�0 
cobj� m   K L�/�/ � o   I J�.�. 0 curpos curPos� m   N O�� ���  }�9  � ��� l  U U�-���-  �   increment the index   � ��� (   i n c r e m e n t   t h e   i n d e x� ��,� r   U Z��� [   U X��� o   U V�+�+ 0 windowindex windowIndex� m   V W�*�* � o      �)�) 0 windowindex windowIndex�,  �> 0 i  � n     ��� 2    �(
�( 
cwin� 4    �'�
�' 
pcap� o    �&�& 0 
theprocess 
theProcess�?  �F  � k   b ��� � � l  b b�%�%   !  log position of the window    � 6   l o g   p o s i t i o n   o f   t h e   w i n d o w   r   b m n   b k	 1   i k�$
�$ 
posn	 n   b i

 4   f i�#
�# 
cwin o   g h�"�" 0 thewin theWin 4   b f�!
�! 
pcap o   d e� �  0 
theprocess 
theProcess o      �� 0 curpos curPos � I  n ���
� .ascrcmnt****      � **** b   n � b   n � b   n � b   n � b   n � b   n ~ b   n w b   n s m   n q   �!! & p o s i t i o n   o f   w i n d o w   o   q r�� 0 thewin theWin m   s v"" �##    o f   a p p   n   w }$%$ 1   { }�
� 
pnam% 4   w {�&
� 
pcap& o   y z�� 0 
theprocess 
theProcess m   ~ �'' �(( 
   i s   { n   � �)*) 4   � ��+
� 
cobj+ m   � ��� * o   � ��� 0 curpos curPos m   � �,, �--  ,   n   � �./. 4   � ��0
� 
cobj0 m   � ��� / o   � ��� 0 curpos curPos m   � �11 �22  }�  �  �G  � m   	 
33�                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  �O  �N  � 454 l     ����  �  �  5 676 i    898 I      �:��  0 positionwindow positionWindow: ;<; o      �� 0 thewin theWin< =>= o      �� 0 
theprocess 
theProcess> ?�
? o      �	�	 0 thepos thePos�
  �  9 Z     �@A��@ n    BCB I    �D�� 0 isapprunning isAppRunningD E�E o    �� 0 
theprocess 
theProcess�  �  C  f     A O   	 �FGF k    �HH IJI Q    1KLMK e    NN 4    �O
� 
pcapO o    �� 0 
theprocess 
theProcessL R      � ����
�  .ascrerr ****      � ****��  ��  M k    1PP QRQ Z    .ST����S o    ���� 0 bnotifyerrors bNotifyErrorsT I  ! *��U��
�� .sysodlogaskr        TEXTU b   ! &VWV b   ! $XYX m   ! "ZZ �[[  A p p l i c a t i o n  Y o   " #���� 0 
theprocess 
theProcessW m   $ %\\ �]]    n o t   o p e n .��  ��  ��  R ^��^ L   / 1����  ��  J _`_ l  2 2��������  ��  ��  ` aba l  2 2��cd��  c !  check if the window exists   d �ee 6   c h e c k   i f   t h e   w i n d o w   e x i s t sb fgf l  2 2��hi��  h m g originally added as with Leopard spaces windows I assumed there would not be available on every space.   i �jj �   o r i g i n a l l y   a d d e d   a s   w i t h   L e o p a r d   s p a c e s   w i n d o w s   I   a s s u m e d   t h e r e   w o u l d   n o t   b e   a v a i l a b l e   o n   e v e r y   s p a c e .g klk l  2 2��mn��  m ; 5 of course this is just a good error check in general   n �oo j   o f   c o u r s e   t h i s   i s   j u s t   a   g o o d   e r r o r   c h e c k   i n   g e n e r a ll pqp l  2 2��rs��  r Q K The hack here is to just check if the process has any windows on this page   s �tt �   T h e   h a c k   h e r e   i s   t o   j u s t   c h e c k   i f   t h e   p r o c e s s   h a s   a n y   w i n d o w s   o n   t h i s   p a g eq uvu Z   2 Gwx����w =  2 >yzy l  2 <{����{ I  2 <��|��
�� .corecnte****       ****| n   2 8}~} 2  6 8��
�� 
cwin~ 4   2 6��
�� 
pcap o   4 5���� 0 
theprocess 
theProcess��  ��  ��  z m   < =����  x L   A C����  ��  ��  v ��� l  H H��������  ��  ��  � ��� l  H H��������  ��  ��  � ���� Z   H ������� l  H K������ =  H K��� o   H I���� 0 bdebug bDebug� m   I J��
�� boovfals��  ��  � k   N q�� ��� l  N N������  �   move the window   � ���     m o v e   t h e   w i n d o w� ��� l  N N��������  ��  ��  � ��� Q   N o���� r   Q \��� o   Q R���� 0 thepos thePos� n      ��� 1   Y [��
�� 
posn� n   R Y��� 4   V Y���
�� 
cwin� o   W X���� 0 thewin theWin� 4   R V���
�� 
pcap� o   T U���� 0 
theprocess 
theProcess� R      ������
�� .ascrerr ****      � ****��  ��  � I  d o�����
�� .sysodlogaskr        TEXT� b   d k��� b   d i��� b   d g��� m   d e�� ��� 0 C a n   n o t   p o s i t i o n   w i n d o w  � o   e f���� 0 thewin theWin� m   g h�� ���    f o r   p r o c e s s  � o   i j���� 0 
theprocess 
theProcess��  � ��� l  p p��������  ��  ��  � ���� l  p p��������  ��  ��  ��  ��  � k   t ��� ��� l  t t������  �   log window position   � ��� (   l o g   w i n d o w   p o s i t i o n� ��� l  t t������  � 7 1 if no window passed in then log all window names   � ��� b   i f   n o   w i n d o w   p a s s e d   i n   t h e n   l o g   a l l   w i n d o w   n a m e s� ��� Z   t ������� l  t w������ =  t w��� o   t u���� 0 thewin theWin� m   u v�� ���  ��  ��  � e   z ��� n   z ���� 2  ~ ���
�� 
cwin� 4   z ~���
�� 
pcap� o   | }���� 0 
theprocess 
theProcess��  � k   � ��� ��� l  � �������  � !  log position of the window   � ��� 6   l o g   p o s i t i o n   o f   t h e   w i n d o w� ��� r   � ���� n   � ���� 1   � ���
�� 
posn� n   � ���� 4   � ����
�� 
cwin� o   � ����� 0 thewin theWin� 4   � ����
�� 
pcap� o   � ����� 0 
theprocess 
theProcess� o      ���� 0 curpos curPos� ���� I  � ������
�� .ascrcmnt****      � ****� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� & p o s i t i o n   o f   w i n d o w  � o   � ����� 0 thewin theWin� m   � ��� ���    o f   a p p  � n   � ���� 1   � ���
�� 
pnam� 4   � ����
�� 
pcap� o   � ����� 0 
theprocess 
theProcess� m   � ��� ��� 
   i s   {� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 curpos curPos� m   � ��� ���  ,  � n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 curpos curPos� m   � ��� ���  }��  ��  � ���� l  � ���������  ��  ��  ��  ��  G m   	 
���                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  �  �  7 ��� l     ��������  ��  ��  �    l     ����   2 , pass in the process and the start position.    � X   p a s s   i n   t h e   p r o c e s s   a n d   t h e   s t a r t   p o s i t i o n .  l     ����   : 4 TODO, create a way to default startPos to { 5, 27 }    �		 h   T O D O ,   c r e a t e   a   w a y   t o   d e f a u l t   s t a r t P o s   t o   {   5 ,   2 7   } 

 i     I      ������  0 cascadewindows cascadeWindows  o      ���� 0 
theprocess 
theProcess �� o      ���� 0 startpos startPos��  ��   Z     r���� n     I    ������ 0 isapprunning isAppRunning �� o    ���� 0 
theprocess 
theProcess��  ��    f      Q   	 n k    U  r     n     !  4    ��"
�� 
cobj" m    ���� ! o    ���� 0 startpos startPos o      ���� 0 startx startX #$# r    %&% n    '(' 4    ��)
�� 
cobj) m    ���� ( o    ���� 0 startpos startPos& o      ���� 0 starty startY$ *+* O    S,-, k    R.. /0/ r    !121 m    ����  2 o      ���� 0 windowindex windowIndex0 3��3 X   " R4��54 k   7 M66 787 l  7 7��9:��  9 9 3	first move window to upper corner of main display.   : �;; f 	 f i r s t   m o v e   w i n d o w   t o   u p p e r   c o r n e r   o f   m a i n   d i s p l a y .8 <=< l  7 7��>?��  > P J  make the position of cascade actually cascade by 25 pixels in x and in y   ? �@@ �     m a k e   t h e   p o s i t i o n   o f   c a s c a d e   a c t u a l l y   c a s c a d e   b y   2 5   p i x e l s   i n   x   a n d   i n   y= ABA l  7 GCDEC r   7 GFGF J   7 CHH IJI [   7 <KLK l  7 :M���M ]   7 :NON o   7 8�~�~ 0 windowindex windowIndexO m   8 9�}�} ��  �  L o   : ;�|�| 0 startx startXJ P�{P [   < AQRQ l  < ?S�z�yS ]   < ?TUT o   < =�x�x 0 windowindex windowIndexU m   = >�w�w �z  �y  R o   ? @�v�v 0 starty startY�{  G n      VWV 1   D F�u
�u 
posnW o   C D�t�t 0 i  D   {0, 22}   E �XX    { 0 ,   2 2 }B YZY l  H H�s�r�q�s  �r  �q  Z [\[ l  H H�p]^�p  ]   increment the index   ^ �__ (   i n c r e m e n t   t h e   i n d e x\ `�o` r   H Maba [   H Kcdc o   H I�n�n 0 windowindex windowIndexd m   I J�m�m b o      �l�l 0 windowindex windowIndex�o  �� 0 i  5 n   % +efe 2  ) +�k
�k 
cwinf 4   % )�jg
�j 
pcapg o   ' (�i�i 0 
theprocess 
theProcess��  - m    hh�                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  + i�hi l  T T�g�f�e�g  �f  �e  �h   R      �d�c�b
�d .ascrerr ****      � ****�c  �b   Z   ] njk�a�`j o   ] ^�_�_ 0 bnotifyerrors bNotifyErrorsk I  a j�^l�]
�^ .sysodlogaskr        TEXTl b   a fmnm b   a dopo m   a bqq �rr H C a n   n o t   c a s c a d e   w i n d o w s   f o r   p r o c e s s  p o   b c�\�\ 0 
theprocess 
theProcessn m   d ess �tt  .�]  �a  �`  ��  ��   uvu l     �[�Z�Y�[  �Z  �Y  v wxw l     �Xyz�X  y 1 + determines if you have one or two displays   z �{{ V   d e t e r m i n e s   i f   y o u   h a v e   o n e   o r   t w o   d i s p l a y sx |}| l     �W~�W  ~    improved version based on    ��� 4   i m p r o v e d   v e r s i o n   b a s e d   o n} ��� l     �V���V  � = 7 http://hintsforums.macworld.com/showthread.php?t=90267   � ��� n   h t t p : / / h i n t s f o r u m s . m a c w o r l d . c o m / s h o w t h r e a d . p h p ? t = 9 0 2 6 7� ��� l     �U���U  � 7 1 Could also use displays in Image Events app too.   � ��� b   C o u l d   a l s o   u s e   d i s p l a y s   i n   I m a g e   E v e n t s   a p p   t o o .� ��� l     �T���T  � \ V Old way: from http://daringfireball.net/2006/12/display_size_applescript_the_lazy_way   � ��� �   O l d   w a y :   f r o m   h t t p : / / d a r i n g f i r e b a l l . n e t / 2 0 0 6 / 1 2 / d i s p l a y _ s i z e _ a p p l e s c r i p t _ t h e _ l a z y _ w a y� ��� l     �S���S  � U O NOTE: This only works when the main screen is on the right of the 2nd display!   � ��� �   N O T E :   T h i s   o n l y   w o r k s   w h e n   t h e   m a i n   s c r e e n   i s   o n   t h e   r i g h t   o f   t h e   2 n d   d i s p l a y !� ��� l     �R�Q�P�R  �Q  �P  � ��� i    ��� I      �O�N�M�O 0 isonedisplay isOneDisplay�N  �M  � k     �� ��� O     ��� k    �� ��� l   �L�K�J�L  �K  �J  � ��I� Z    ���H�� ?    ��� l   ��G�F� I   �E��D
�E .corecnte****       ****� 2    �C
�C 
dskp�D  �G  �F  � m    �B�B � L    �� m    �A
�A boovfals�H  � L    �� m    �@
�@ boovtrue�I  � m     ���                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  � ��� l   �?�>�=�?  �>  �=  � ��� l    �<���<  �	tell application "Finder"		-- get the desktop bounds		set _b to bounds of window of desktop		set _startX to item 1 of _b		set _startY to item 2 of _b		set _width to item 3 of _b		set _height to item 4 of _b		log _startX		log _startY		log _width		log _height				-- if the bounds start with two zeros then this is one display		-- NOTE: This only works when the main screen is on the right of the 2nd display!		if _startX is 0 and _startY is 0 then			return true		else			return false		end if	end tell
	   � ���  	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 - -   g e t   t h e   d e s k t o p   b o u n d s  	 	 s e t   _ b   t o   b o u n d s   o f   w i n d o w   o f   d e s k t o p  	 	 s e t   _ s t a r t X   t o   i t e m   1   o f   _ b  	 	 s e t   _ s t a r t Y   t o   i t e m   2   o f   _ b  	 	 s e t   _ w i d t h   t o   i t e m   3   o f   _ b  	 	 s e t   _ h e i g h t   t o   i t e m   4   o f   _ b  	 	 l o g   _ s t a r t X  	 	 l o g   _ s t a r t Y  	 	 l o g   _ w i d t h  	 	 l o g   _ h e i g h t  	 	  	 	 - -   i f   t h e   b o u n d s   s t a r t   w i t h   t w o   z e r o s   t h e n   t h i s   i s   o n e   d i s p l a y  	 	 - -   N O T E :   T h i s   o n l y   w o r k s   w h e n   t h e   m a i n   s c r e e n   i s   o n   t h e   r i g h t   o f   t h e   2 n d   d i s p l a y !  	 	 i f   _ s t a r t X   i s   0   a n d   _ s t a r t Y   i s   0   t h e n  	 	 	 r e t u r n   t r u e  	 	 e l s e  	 	 	 r e t u r n   f a l s e  	 	 e n d   i f  	 e n d   t e l l 
 	� ��;� l   �:�9�8�:  �9  �8  �;  � ��� l     �7�6�5�7  �6  �5  � ��4� i    ��� I      �3��2�3 0 isapprunning isAppRunning� ��1� o      �0�0 0 appname appName�1  �2  � k     �� ��� O    ��� I   �/��.
�/ .coredoexbool       obj � l   ��-�,� 6  ��� 2   �+
�+ 
prcs� =   ��� 1   	 �*
�* 
pnam� o    �)�) 0 appname appName�-  �,  �.  � m     ���                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  � ��(� l   �'�&�%�'  �&  �%  �(  �4       �$��������$  � �#�"�!� ���# &0 getpositionwindow getPositionWindow�"  0 positionwindow positionWindow�!  0 cascadewindows cascadeWindows�  0 isonedisplay isOneDisplay� 0 isapprunning isAppRunning
� .aevtoappnull  �   � ****� �������� &0 getpositionwindow getPositionWindow� ��� �  ���� 0 thewin theWin� 0 
theprocess 
theProcess� 0 thepos thePos�  � ������� 0 thewin theWin� 0 
theprocess 
theProcess� 0 thepos thePos� 0 windowindex windowIndex� 0 i  � 0 curpos curPos� �3������
�	������� "',1� 0 isapprunning isAppRunning
� 
pcap
� 
cwin
� 
kocl
� 
cobj
�
 .corecnte****       ****
�	 
posn
� 
pnam
� .ascrcmnt****      � ****� �)�k+   �� ���  QjE�O G*�/�-[��l kh ��,E�O��,%�%*�/�,%�%��k/%�%��l/%�%j O�kE�[OY��Y 8*�/�/�,E�Oa �%a %*�/�,%a %��k/%a %��l/%a %j UY h� �9������  0 positionwindow positionWindow� ��� �  �� ��� 0 thewin theWin�  0 
theprocess 
theProcess�� 0 thepos thePos�  � ���������� 0 thewin theWin�� 0 
theprocess 
theProcess�� 0 thepos thePos�� 0 curpos curPos� �����������Z\�������������������������� 0 isapprunning isAppRunning
�� 
pcap��  ��  �� 0 bnotifyerrors bNotifyErrors
�� .sysodlogaskr        TEXT
�� 
cwin
�� .corecnte****       ****�� 0 bdebug bDebug
�� 
posn
�� 
pnam
�� 
cobj
�� .ascrcmnt****      � ****� �)�k+   �� � 
*�/EW X  � �%�%j Y hOhO*�/�-j 
j  hY hO�f  ( �*�/�/�,FW X  ��%�%�%j OPY P��  *�/�-EY >*�/�/�,E�Oa �%a %*�/a ,%a %�a k/%a %�a l/%a %j OPUY h� ������������  0 cascadewindows cascadeWindows�� ����� �  ������ 0 
theprocess 
theProcess�� 0 startpos startPos��  � �������������� 0 
theprocess 
theProcess�� 0 startpos startPos�� 0 startx startX�� 0 starty startY�� 0 windowindex windowIndex�� 0 i  � ����h������������������qs���� 0 isapprunning isAppRunning
�� 
cobj
�� 
pcap
�� 
cwin
�� 
kocl
�� .corecnte****       ****�� 
�� 
posn��  ��  �� 0 bnotifyerrors bNotifyErrors
�� .sysodlogaskr        TEXT�� s)�k+   j N��k/E�O��l/E�O� 6jE�O /*�/�-[��l kh �� ��� �lv��,FO�kE�[OY��UOPW X 	 
� �%�%j Y hY h� ������������� 0 isonedisplay isOneDisplay��  ��  �  � �����
�� 
dskp
�� .corecnte****       ****�� � *�-j k fY eUOP� ������������� 0 isapprunning isAppRunning�� ����� �  ���� 0 appname appName��  � ���� 0 appname appName� ��������
�� 
prcs�  
�� 
pnam
�� .coredoexbool       obj �� � *�-�[�,\Z�81j UOP� �����������
�� .aevtoappnull  �   � ****� k    ��  ��  ��  #��  *��  7����  ��  ��  �  � %�������� 0����� `������ o s���� � ��� � ����� ��� � � �-;IWes��� 0 bdebug bDebug�� 0 bnotifyerrors bNotifyErrors�� 0 isonedisplay isOneDisplay�� 0 bonedisplay bOneDisplay
�� 
TEXT
�� .ascrcmnt****      � ****�� �� ��  0 cascadewindows cascadeWindows���)��  0 positionwindow positionWindow�������g�� <�� ���fE�OfE�O)j+ E�O���&%j O� �� )���lvl+ Y 3)���jlvm+ O)a a a jlvm+ O)a a a a lvm+ O)a a �lvl+ O)a ��lvl+ O)a ��lvl+ O)a ��lvl+ O)a ��lvl+ O)a ��lvl+ O)a ��lvl+ O)a ��lvl+ O)a  ��lvl+ O)a !��lvl+ O)a "��lvl+ O)a #��lvl+ O)a $��lvl+ Uascr  ��ޭ