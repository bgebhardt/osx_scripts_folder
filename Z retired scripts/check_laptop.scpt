FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	�� Figured out this approach from these 2 tips:

How to use Bonjour to find stuff
http://lists.apple.com/archives/applescript-users/2004/Oct/msg00465.html

Do shell script references
http://macscripter.net/viewtopic.php?id=24761
http://macscripter.net/viewtopic.php?id=26334

How to background and issue commands on the same line
http://serverfault.com/questions/71545/bash-put-a-job-in-the-background-and-then-tail-the-log
    
 �  L   F i g u r e d   o u t   t h i s   a p p r o a c h   f r o m   t h e s e   2   t i p s : 
 
 H o w   t o   u s e   B o n j o u r   t o   f i n d   s t u f f 
 h t t p : / / l i s t s . a p p l e . c o m / a r c h i v e s / a p p l e s c r i p t - u s e r s / 2 0 0 4 / O c t / m s g 0 0 4 6 5 . h t m l 
 
 D o   s h e l l   s c r i p t   r e f e r e n c e s 
 h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 4 7 6 1 
 h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 6 3 3 4 
 
 H o w   t o   b a c k g r o u n d   a n d   i s s u e   c o m m a n d s   o n   t h e   s a m e   l i n e 
 h t t p : / / s e r v e r f a u l t . c o m / q u e s t i o n s / 7 1 5 4 5 / b a s h - p u t - a - j o b - i n - t h e - b a c k g r o u n d - a n d - t h e n - t a i l - t h e - l o g 
      l     ��������  ��  ��        l     ����  r         l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   n d a t e ;   m D N S   - B   _ a f p o v e r t c p . _ t c p .   &   s l e e p   1 ;   k i l l A l l   m D N S��  ��  ��    o      ���� 0 
afpservers  ��  ��        l     ��������  ��  ��        l      ��  ��   UO Example output:
"Browsing for _afpovertcp._tcp.Talking to DNS SD Daemon at Mach port 3843Timestamp     A/R Flags Domain                   Service Type             Instance Name 9:05:22.137  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro  9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro  9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro  9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro  9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        April Gebhardt�s Computer 9:05:22.138  Add     1 local.                   _afpovertcp._tcp.        Bryans MacBook Pro  9:05:22.138  Add     0 local.                   _afpovertcp._tcp.        bryan personal laptop"
     �  �   E x a m p l e   o u t p u t : 
 " B r o w s i n g   f o r   _ a f p o v e r t c p . _ t c p .  T a l k i n g   t o   D N S   S D   D a e m o n   a t   M a c h   p o r t   3 8 4 3  T i m e s t a m p           A / R   F l a g s   D o m a i n                                       S e r v i c e   T y p e                           I n s t a n c e   N a m e    9 : 0 5 : 2 2 . 1 3 7     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 B r y a n s   M a c B o o k   P r o      9 : 0 5 : 2 2 . 1 3 8     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 B r y a n s   M a c B o o k   P r o      9 : 0 5 : 2 2 . 1 3 8     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 B r y a n s   M a c B o o k   P r o      9 : 0 5 : 2 2 . 1 3 8     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 B r y a n s   M a c B o o k   P r o      9 : 0 5 : 2 2 . 1 3 8     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 A p r i l   G e b h a r d t  s   C o m p u t e r    9 : 0 5 : 2 2 . 1 3 8     A d d           1   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 B r y a n s   M a c B o o k   P r o      9 : 0 5 : 2 2 . 1 3 8     A d d           0   l o c a l .                                       _ a f p o v e r t c p . _ t c p .                 b r y a n   p e r s o n a l   l a p t o p " 
      l     ��������  ��  ��       !   l     �� " #��   " / ) set theServer to "bryan personal laptop"    # � $ $ R   s e t   t h e S e r v e r   t o   " b r y a n   p e r s o n a l   l a p t o p " !  % & % l    '���� ' r     ( ) ( m    	 * * � + +  B r y a n ' s   i M a c ) o      ���� 0 	theserver 	theServer��  ��   &  , - , l     ��������  ��  ��   -  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 p j tell system events so this can be run on the cmd line.  see http://macscripter.net/viewtopic.php?id=26334    3 � 4 4 �   t e l l   s y s t e m   e v e n t s   s o   t h i s   c a n   b e   r u n   o n   t h e   c m d   l i n e .     s e e   h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 2 6 3 3 4 1  5 6 5 l   8 7���� 7 O    8 8 9 8 k    7 : :  ; < ; I   ������
�� .miscactvnull��� ��� null��  ��   <  =�� = Z    7 > ?�� @ > E     A B A o    ���� 0 
afpservers   B o    ���� 0 	theserver 	theServer ? k    ( C C  D E D n   & F G F I    &�� H���� 0 growlmessage GrowlMessage H  I J I b      K L K o    ���� 0 	theserver 	theServer L m     M M � N N    i s   c o n n e c t e d . J  O P O o     !���� 0 
afpservers   P  Q�� Q m   ! "��
�� boovfals��  ��   G  f     E  R�� R l  ' '�� S T��   S P Jdisplay dialog theServer & " is connected." & return & return & afpservers    T � U U � d i s p l a y   d i a l o g   t h e S e r v e r   &   "   i s   c o n n e c t e d . "   &   r e t u r n   &   r e t u r n   &   a f p s e r v e r s��  ��   @ k   + 7 V V  W X W n  + 5 Y Z Y I   , 5�� [���� 0 growlmessage GrowlMessage [  \ ] \ b   , / ^ _ ^ o   , -���� 0 	theserver 	theServer _ m   - . ` ` � a a T   i s   N O T   c o n n e c t e d .   C h e c k   w i r e l e s s   n e t w o r k . ]  b c b o   / 0���� 0 
afpservers   c  d�� d m   0 1��
�� boovtrue��  ��   Z  f   + , X  e�� e l  6 6�� f g��   f m gdisplay dialog theServer & " is not connected.  Check wireless network." & return & return & afpservers    g � h h � d i s p l a y   d i a l o g   t h e S e r v e r   &   "   i s   n o t   c o n n e c t e d .     C h e c k   w i r e l e s s   n e t w o r k . "   &   r e t u r n   &   r e t u r n   &   a f p s e r v e r s��  ��   9 m     i i�                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��   6  j k j l     ��������  ��  ��   k  l�� l i      m n m I      �� o���� 0 growlmessage GrowlMessage o  p q p o      ���� 0 sdescription sDescription q  r s r o      ���� 0 sstr sStr s  t�� t o      ���� 0 bdown bDown��  ��   n k     � u u  v w v l     �� x y��   x   check for Growl    y � z z     c h e c k   f o r   G r o w l w  { | { r      } ~ } m     ��
�� boovfals ~ o      ���� 0 ggrowlenabled gGrowlEnabled |   �  O     � � � r     � � � ?     � � � l 	   ����� � l    ����� � I   �� ���
�� .corecnte****       **** � l    ����� � 6    � � � 2    ��
�� 
prcs � =    � � � 1    ��
�� 
pnam � m     � � � � �  G r o w l H e l p e r A p p��  ��  ��  ��  ��  ��  ��   � m    ����   � o      ���� 0 ggrowlenabled gGrowlEnabled � m     � ��                                                                                  sevs  alis    �  Danger Mouse               �h�'H+   9System Events.app                                               �vǙ�L        ����  	                CoreServices    �i�      ǚR�     9 �5 �3  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��   �  � � � l   ��������  ��  ��   �  � � � Z    6 � ����� � =   ! � � � o    ���� 0 ggrowlenabled gGrowlEnabled � m     ��
�� boovfals � k   $ 2 � �  � � � I  $ /�� ���
�� .sysodlogaskr        TEXT � b   $ + � � � b   $ ) � � � b   $ ' � � � o   $ %���� 0 stitle sTitle � o   % &��
�� 
ret  � o   ' (��
�� 
ret  � o   ) *���� 0 sdescription sDescription��   �  ��� � L   0 2����  ��  ��  ��   �  � � � l  7 7��������  ��  ��   �  � � � l  7 7�� � ���   �   set up Growl messages    � � � � ,   s e t   u p   G r o w l   m e s s a g e s �  � � � O   7 � � � � k   ; � � �  � � � l  ; ;�� � ���   � 1 + Make a list of all the notification types     � � � � V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   �  � � � l  ; ;�� � ���   � ' ! that this script will ever send:    � � � � B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : �  � � � r   ; B � � � l 	 ; @ ����� � J   ; @ � �  � � � m   ; < � � � � � 2 C h e c k   L a p t o p   N o t i f i c a t i o n �  � � � m   < = � � � � � B L a p t o p   N o t   C o n n e c t e d   N o t i f i c a t i o n �  ��� � m   = > � � � � �  T e s t��  ��  ��   � l      ����� � o      ���� ,0 allnotificationslist allNotificationsList��  ��   �  � � � l  C C��������  ��  ��   �  � � � l  C C�� � ���   � ( " Make a list of the notifications     � � � � D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   �  � � � l  C C�� � ���   � - ' that will be enabled by default.          � � � � N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             �  � � � l  C C�� � ���   � 9 3 Those not enabled by default can be enabled later     � � � � f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   �  � � � l  C C�� � ���   � 7 1 in the 'Applications' tab of the growl prefpane.    � � � � b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . �  � � � r   C I � � � l 	 C G ����� � J   C G � �  � � � m   C D � � � � � 2 C h e c k   L a p t o p   N o t i f i c a t i o n �  ��� � m   D E � � � � � B L a p t o p   N o t   C o n n e c t e d   N o t i f i c a t i o n��  ��  ��   � l      ����� � o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   �  � � � l  J J��������  ��  ��   �  � � � l  J J�� � ���   � &   Register our script with growl.    � � � � @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . �  � � � l  J J�� � ���   � 7 1 You can optionally (as here) set a default icon     � � � � b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   �  � � � l  J J� � �   � ' ! for this script's notifications.     � B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . �  I  J a�~�}
�~ .registernull��� ��� null�}   �|
�| 
appl l 	 L M�{�z m   L M �		 < G r o w l   C h e c k   L a p t o p   A p p l e S c r i p t�{  �z   �y

�y 
anot
 l 
 P Q�x�w o   P Q�v�v ,0 allnotificationslist allNotificationsList�x  �w   �u
�u 
dnot l 
 T U�t�s o   T U�r�r 40 enablednotificationslist enabledNotificationsList�t  �s   �q�p
�q 
iapp m   X [ �  G r o w l H e l p e r A p p�p    l  b b�o�n�m�o  �n  �m    l  b b�l�l    	Send a Notification...    � . 	 S e n d   a   N o t i f i c a t i o n . . . �k Z   b ��j =  b e o   b c�i�i 0 bdown bDown m   c d�h
�h boovtrue I  h ��g�f 
�g .notifygrnull��� ��� null�f    �e!"
�e 
name! l 	 l o#�d�c# m   l o$$ �%% B L a p t o p   N o t   C o n n e c t e d   N o t i f i c a t i o n�d  �c  " �b&'
�b 
titl& l 	 r s(�a�`( o   r s�_�_ 0 sdescription sDescription�a  �`  ' �^)*
�^ 
desc) l 	 v w+�]�\+ o   v w�[�[ 0 sstr sStr�]  �\  * �Z,�Y
�Z 
appl, m   x {-- �.. < G r o w l   C h e c k   L a p t o p   A p p l e S c r i p t�Y  �j   I  � ��X�W/
�X .notifygrnull��� ��� null�W  / �V01
�V 
name0 l 	 � �2�U�T2 m   � �33 �44 2 C h e c k   L a p t o p   N o t i f i c a t i o n�U  �T  1 �S56
�S 
titl5 l 	 � �7�R�Q7 o   � ��P�P 0 sdescription sDescription�R  �Q  6 �O89
�O 
desc8 l 	 � �:�N�M: o   � ��L�L 0 sstr sStr�N  �M  9 �K;�J
�K 
appl; m   � �<< �== < G r o w l   C h e c k   L a p t o p   A p p l e S c r i p t�J  �k   � m   7 8>>2                                                                                  GRRR  alis    �  Danger Mouse               �h�'H+   3�GrowlHelperApp.app                                              3�,�\��        ����  	                	Resources     �i�      �]4     3� 3� 3� d� �  YDanger Mouse:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    D a n g e r   M o u s e  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   � ?�I? l  � ��H�G�F�H  �G  �F  �I  ��       �E@AB�E  @ �D�C�D 0 growlmessage GrowlMessage
�C .aevtoappnull  �   � ****A �B n�A�@CD�?�B 0 growlmessage GrowlMessage�A �>E�> E  �=�<�;�= 0 sdescription sDescription�< 0 sstr sStr�; 0 bdown bDown�@  C �:�9�8�7�6�5�4�: 0 sdescription sDescription�9 0 sstr sStr�8 0 bdown bDown�7 0 ggrowlenabled gGrowlEnabled�6 0 stitle sTitle�5 ,0 allnotificationslist allNotificationsList�4 40 enablednotificationslist enabledNotificationsListD  ��3F�2 ��1�0�/> � � � � ��.�-�,�+�*�)�($�'�&-�%3<
�3 
prcsF  
�2 
pnam
�1 .corecnte****       ****
�0 
ret 
�/ .sysodlogaskr        TEXT
�. 
appl
�- 
anot
�, 
dnot
�+ 
iapp�* 
�) .registernull��� ��� null
�( 
name
�' 
titl
�& 
desc
�% .notifygrnull��� ��� null�? �fE�O� *�-�[�,\Z�81j jE�UO�f  ��%�%�%j OhY hO� d���mvE�O��lvE�O*��a �a �a a a  O�e  *a a a �a ��a a  Y *a a a �a ��a a  UOPB �$G�#�"HI�!
�$ .aevtoappnull  �   � ****G k     8JJ  KK  %LL  5� �   �#  �"  H  I 
 �� *� i� M� `
� .sysoexecTEXT���     TEXT� 0 
afpservers  � 0 	theserver 	theServer
� .miscactvnull��� ��� null� 0 growlmessage GrowlMessage�! 9�j E�O�E�O� )*j O�� )��%�fm+ OPY )��%�em+ OPUascr  ��ޭ