FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �

Script to start and run iSync

Script taken from 
http://www.macosxhints.com/article.php?story=20060223140919435&query=scheduled+isync

     � 	 	 
 
 S c r i p t   t o   s t a r t   a n d   r u n   i S y n c 
 
 S c r i p t   t a k e n   f r o m   
 h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 2 2 3 1 4 0 9 1 9 4 3 5 & q u e r y = s c h e d u l e d + i s y n c 
 
   
  
 l     ��������  ��  ��        p         ������ 0 
syncresult 
syncResult��        l     ����  r         m        �    n o   r e s u l t  o      ���� 0 
syncresult 
syncResult��  ��        l     ��������  ��  ��        l    ����  O       r        l 	   ����  l     ����   ?    ! " ! n     # $ # m    ��
�� 
nmbr $ n    % & % 2   ��
�� 
cobj & l    '���� ' 6    ( ) ( 2   ��
�� 
prcs ) =    * + * 1    ��
�� 
pnam + m     , , � - - 
 i S y n c��  ��   " m    ����  ��  ��  ��  ��    o      ���� 0 isyncrunning iSyncRunning  m     . .�                                                                                  sevs   alis    �  Danger Mouse               ��KXH+    {System Events.app                                                pY���z        ����  	                CoreServices    �ڭ�      ��9�      {  W  V  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��     / 0 / l   r 1���� 1 O    r 2 3 2 k   " q 4 4  5 6 5 I  " '������
�� .blrnSYNCbool       obj ��  ��   6  7 8 7 V   ( < 9 : 9 I  2 7�� ;��
�� .sysodelanull��� ��� nmbr ; m   2 3���� ��   : l  , 1 <���� < =  , 1 = > = 1   , /��
�� 
syng > m   / 0��
�� boovtrue��  ��   8  ? @ ? l  = =��������  ��  ��   @  A B A l  = =�� C D��   C : 4 get the status of the sync to display it with growl    D � E E h   g e t   t h e   s t a t u s   o f   t h e   s y n c   t o   d i s p l a y   i t   w i t h   g r o w l B  F G F r   = [ H I H b   = W J K J b   = S L M L b   = H N O N b   = D P Q P m   = > R R � S S  S y n c   o n   Q 1   > C��
�� 
lsnc O m   D G T T � U U    M n  H R V W V I   I R�� X���� "0 interpretstatus interpretStatus X  Y�� Y 1   I N��
�� 
stsy��  ��   W  f   H I K m   S V Z Z � [ [  . I o      ���� 0 
syncstatus 
syncStatus G  \ ] \ l  \ \�� ^ _��   ^ S Mset syncStatus to "Sync on " & last sync & " status = " & sync status & ".  "    _ � ` ` � s e t   s y n c S t a t u s   t o   " S y n c   o n   "   &   l a s t   s y n c   &   "   s t a t u s   =   "   &   s y n c   s t a t u s   &   " .     " ]  a b a l  \ \�� c d��   c � �set statusHelp to "Status of sync or last sync (running (1), completed with no errors (2), completed with warnings (3), completed with errors (4),last sync cancelled (5), last sync failed to complete (6),never synced (7))"    d � e e� s e t   s t a t u s H e l p   t o   " S t a t u s   o f   s y n c   o r   l a s t   s y n c   ( r u n n i n g   ( 1 ) ,   c o m p l e t e d   w i t h   n o   e r r o r s   ( 2 ) ,   c o m p l e t e d   w i t h   w a r n i n g s   ( 3 ) ,   c o m p l e t e d   w i t h   e r r o r s   ( 4 ) , l a s t   s y n c   c a n c e l l e d   ( 5 ) ,   l a s t   s y n c   f a i l e d   t o   c o m p l e t e   ( 6 ) , n e v e r   s y n c e d   ( 7 ) ) " b  f g f l  \ \��������  ��  ��   g  h i h r   \ a j k j o   \ _���� 0 
syncstatus 
syncStatus k o      ���� 0 
syncresult 
syncResult i  l m l l  b b��������  ��  ��   m  n�� n Z  b q o p���� o >  b e q r q o   b c���� 0 isyncrunning iSyncRunning r m   c d��
�� boovtrue p I  h m������
�� .aevtquitnull���    obj ��  ��  ��  ��  ��   3 m     s s�                                                                                  iSnc   alis    H  Danger Mouse               ��KXH+     	iSync.app                                                       "pG��K        ����  	                Applications    �ڭ�      ���         #Danger Mouse:Applications:iSync.app    	 i S y n c . a p p    D a n g e r   M o u s e  Applications/iSync.app  / ��  ��  ��   0  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x 4 . Now report the results of the sync with growl    y � z z \   N o w   r e p o r t   t h e   r e s u l t s   o f   t h e   s y n c   w i t h   g r o w l w  { | { l  s � }���� } O   s � ~  ~ k   y � � �  � � � l  y y�� � ���   � 1 + Make a list of all the notification types     � � � � V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   �  � � � l  y y�� � ���   � ' ! that this script will ever send:    � � � � B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : �  � � � r   y � � � � l 	 y ~ ����� � J   y ~ � �  ��� � m   y | � � � � � " S y n c   N o t i f i c a t i o n��  ��  ��   � l      ����� � o      ���� ,0 allnotificationslist allNotificationsList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ( " Make a list of the notifications     � � � � D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   �  � � � l  � ��� � ���   � - ' that will be enabled by default.          � � � � N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             �  � � � l  � ��� � ���   � 9 3 Those not enabled by default can be enabled later     � � � � f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   �  � � � l  � ��� � ���   � 7 1 in the 'Applications' tab of the growl prefpane.    � � � � b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . �  � � � r   � � � � � l 	 � � ����� � J   � � � �  ��� � m   � � � � � � � " S y n c   N o t i f i c a t i o n��  ��  ��   � l      ����� � o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   Register our script with growl.    � � � � @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . �  � � � l  � ��� � ���   � 7 1 You can optionally (as here) set a default icon     � � � � b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   �  � � � l  � ��� � ���   � ' ! for this script's notifications.    � � � � B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . �  � � � I  � ����� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � l 	 � � ����� � m   � � � � � � �   r u n   i S y n c   s c r i p t��  ��   � �� � �
�� 
anot � l 
 � � ����� � o   � ����� ,0 allnotificationslist allNotificationsList��  ��   � �� � �
�� 
dnot � l 
 � � ����� � o   � ����� 40 enablednotificationslist enabledNotificationsList��  ��   � �� ���
�� 
iapp � m   � � � � � � � 
 i S y n c��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  	Send a Notification...    � � � � . 	 S e n d   a   N o t i f i c a t i o n . . . �  � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ����� � m   � � � � � � � " S y n c   N o t i f i c a t i o n��  ��   � �� � �
�� 
titl � l 	 � � ����� � m   � � � � � � �   r u n   i S y n c   S t a t u s��  ��   � �� � �
�� 
desc � l 	 � � ���~ � o   � ��}�} 0 
syncresult 
syncResult�  �~   � �| ��{
�| 
appl � m   � � � � � � �   r u n   i S y n c   s c r i p t�{   �  ��z � l  � ��y�x�w�y  �x  �w  �z    m   s v � �2                                                                                  GRRR   alis    �  Danger Mouse               ��KXH+  �;XGrowlHelperApp.app                                             �;��n�u        ����  	                	Resources     �ڭ�      �o�    �;X�;T�;S 	��  �  YDanger Mouse:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    D a n g e r   M o u s e  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��  ��   |  � � � l     �v�u�t�v  �u  �t   �  � � � l      �s � ��s   �	 Small function to return a human readable version of status
	Status of sync or last sync (running (1), completed with no errors (2), completed with warnings (3), completed with errors (4),last sync cancelled (5), last sync failed to complete (6),never synced (7))     � � � �   S m a l l   f u n c t i o n   t o   r e t u r n   a   h u m a n   r e a d a b l e   v e r s i o n   o f   s t a t u s 
 	 S t a t u s   o f   s y n c   o r   l a s t   s y n c   ( r u n n i n g   ( 1 ) ,   c o m p l e t e d   w i t h   n o   e r r o r s   ( 2 ) ,   c o m p l e t e d   w i t h   w a r n i n g s   ( 3 ) ,   c o m p l e t e d   w i t h   e r r o r s   ( 4 ) , l a s t   s y n c   c a n c e l l e d   ( 5 ) ,   l a s t   s y n c   f a i l e d   t o   c o m p l e t e   ( 6 ) , n e v e r   s y n c e d   ( 7 ) )   �  ��r � i      � � � I      �q ��p�q "0 interpretstatus interpretStatus �  ��o � o      �n�n 0 
syncstatus 
syncStatus�o  �p   � k     Q � �    l     �m�l�k�m  �l  �k    Z     O =     	 o     �j�j 0 
syncstatus 
syncStatus	 m    �i�i  L    

 m     �  r u n n i n g  =     o    �h�h 0 
syncstatus 
syncStatus m    �g�g   L     m     � 0 c o m p l e t e d   w i t h   n o   e r r o r s  =     o    �f�f 0 
syncstatus 
syncStatus m    �e�e   L     m     � . c o m p l e t e d   w i t h   w a r n i n g s   =   ! $!"! o   ! "�d�d 0 
syncstatus 
syncStatus" m   " #�c�c   #$# L   ' )%% m   ' (&& �'' * c o m p l e t e d   w i t h   e r r o r s$ ()( =   , /*+* o   , -�b�b 0 
syncstatus 
syncStatus+ m   - .�a�a ) ,-, L   2 4.. m   2 3// �00 & l a s t   s y n c   c a n c e l l e d- 121 =   7 :343 o   7 8�`�` 0 
syncstatus 
syncStatus4 m   8 9�_�_ 2 565 L   = ?77 m   = >88 �99 8 l a s t   s y n c   f a i l e d   t o   c o m p l e t e6 :;: =   B E<=< o   B C�^�^ 0 
syncstatus 
syncStatus= m   C D�]�] ; >�\> L   H J?? m   H I@@ �AA  n e v e r   s y n c e d�\   L   M OBB m   M NCC �DD  u n k n o w n   s t a t u s E�[E l  P P�Z�Y�X�Z  �Y  �X  �[  �r       
�WFGHI�VIJK�U�W  F �T�S�R�Q�P�O�N�M�T "0 interpretstatus interpretStatus
�S .aevtoappnull  �   � ****�R 0 
syncresult 
syncResult�Q 0 isyncrunning iSyncRunning�P 0 
syncstatus 
syncStatus�O ,0 allnotificationslist allNotificationsList�N 40 enablednotificationslist enabledNotificationsList�M  G �L ��K�JLM�I�L "0 interpretstatus interpretStatus�K �HN�H N  �G�G 0 
syncstatus 
syncStatus�J  L �F�F 0 
syncstatus 
syncStatusM �E&�D/�C8�B@C�E �D �C �B �I R�k  �Y F�l  �Y ;�m  �Y 0��  �Y %��  �Y ��  �Y ��  �Y �OPH �AO�@�?PQ�>
�A .aevtoappnull  �   � ****O k     �RR  SS  TT  /UU  {�=�=  �@  �?  P  Q + �< .�;V�: ,�9�8�7 s�6�5�4�3 R�2 T�1�0 Z�/�. � ��- ��,�+ ��*�)�( ��'�&�% ��$ ��# ��"�< 0 
syncresult 
syncResult
�; 
prcsV  
�: 
pnam
�9 
cobj
�8 
nmbr�7 0 isyncrunning iSyncRunning
�6 .blrnSYNCbool       obj 
�5 
syng�4 
�3 .sysodelanull��� ��� nmbr
�2 
lsnc
�1 
stsy�0 "0 interpretstatus interpretStatus�/ 0 
syncstatus 
syncStatus
�. .aevtquitnull���    obj �- ,0 allnotificationslist allNotificationsList�, 40 enablednotificationslist enabledNotificationsList
�+ 
appl
�* 
anot
�) 
dnot
�( 
iapp�' 
�& .registernull��� ��� null
�% 
name
�$ 
titl
�# 
desc
�" .notifygrnull��� ��� null�> ��E�O� *�-�[�,\Z�81�-�,jE�UO� Q*j O h*�,e �j [OY��O�*a ,%a %)*a ,k+ %a %E` O_ E�O�e 
*j Y hUOa  Ua kvE` Oa kvE` O*a a a _ a _ a  a !a " #O*a $a %a &a 'a (�a a )a " *OPUI �WW � S y n c   o n   S u n d a y ,   J u l y   1 3 ,   2 0 0 8   3 : 0 1 : 2 1   A M   c o m p l e t e d   w i t h   n o   e r r o r s .
�V boovfalsJ �!X�! X   �K � Y�  Y   ��U   ascr  ��ޭ