FasdUAS 1.101.10   ��   ��    k             l     ��  ��    < 6 Script from: http://hohle.net/scrap_post.php?post=204     � 	 	 l   S c r i p t   f r o m :   h t t p : / / h o h l e . n e t / s c r a p _ p o s t . p h p ? p o s t = 2 0 4   
  
 l     ��  ��    � � I threw this in my ~/Library/Scripts directory, and can call it from the the command line or cron with `osascript Library/Scripts/iSync.scpt`.     �     I   t h r e w   t h i s   i n   m y   ~ / L i b r a r y / S c r i p t s   d i r e c t o r y ,   a n d   c a n   c a l l   i t   f r o m   t h e   t h e   c o m m a n d   l i n e   o r   c r o n   w i t h   ` o s a s c r i p t   L i b r a r y / S c r i p t s / i S y n c . s c p t ` .      l     ��������  ��  ��        l     ��  ��    S M This script will tell iSync to synchronize.  if there's more then one device     �   �   T h i s   s c r i p t   w i l l   t e l l   i S y n c   t o   s y n c h r o n i z e .     i f   t h e r e ' s   m o r e   t h e n   o n e   d e v i c e      l     ��  ��    . ( attached, I don't know what that means.     �   P   a t t a c h e d ,   I   d o n ' t   k n o w   w h a t   t h a t   m e a n s .      l     ��  ��    M G hints from http://growl.info/documentation/applescript-support.php and     �   �   h i n t s   f r o m   h t t p : / / g r o w l . i n f o / d o c u m e n t a t i o n / a p p l e s c r i p t - s u p p o r t . p h p   a n d     !   l     �� " #��   " E ? http://www.macosxhints.com/article.php?story=20031201172150673    # � $ $ ~   h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 3 1 2 0 1 1 7 2 1 5 0 6 7 3 !  % & % l     ��������  ��  ��   &  ' ( ' l    . )���� ) O     . * + * k    - , ,  - . - r     / 0 / ?     1 2 1 l    3���� 3 I   �� 4��
�� .corecnte****       **** 4 l    5���� 5 6    6 7 6 2    ��
�� 
prcs 7 =    8 9 8 1   	 ��
�� 
pnam 9 m     : : � ; ;  G r o w l H e l p e r A p p��  ��  ��  ��  ��   2 m    ����   0 o      ����  0 growlisrunning growlIsRunning .  < = < l   ��������  ��  ��   =  >�� > r    - ? @ ? ?    + A B A l   ) C���� C I   )�� D��
�� .corecnte****       **** D l   % E���� E 6   % F G F 2    ��
�� 
prcs G =   $ H I H 1     ��
�� 
pnam I m   ! # J J � K K 
 i S y n c��  ��  ��  ��  ��   B m   ) *����   @ o      ����  0 isyncisrunning iSyncIsRunning��   + m      L L�                                                                                  sevs   alis    �  Danger Mouse               đ;wH+   %�System Events.app                                               �����-        ����  	                CoreServices    đ��      ��Y�     %� %�      :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  ��  ��   (  M N M l     ��������  ��  ��   N  O P O l  / _ Q���� Q Z   / _ R S���� R o   / 0����  0 growlisrunning growlIsRunning S O   3 [ T U T k   7 Z V V  W X W l  7 7��������  ��  ��   X  Y Z Y l  7 7�� [ \��   [ 1 + Make a list of all the notification types     \ � ] ] V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   Z  ^ _ ^ l  7 7�� ` a��   ` ' ! that this script will ever send:    a � b b B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : _  c d c r   7 < e f e J   7 : g g  h�� h m   7 8 i i � j j & R e s u l t   N o t i f i c a t i o n��   f l      k���� k o      ���� ,0 allnotificationslist allNotificationsList��  ��   d  l m l l  = =��������  ��  ��   m  n o n l  = =�� p q��   p ( " Make a list of the notifications     q � r r D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   o  s t s l  = =�� u v��   u - ' that will be enabled by default.          v � w w N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             t  x y x l  = =�� z {��   z 9 3 Those not enabled by default can be enabled later     { � | | f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   y  } ~ } l  = =��  ���    7 1 in the 'Applications' tab of the growl prefpane.    � � � � b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . ~  � � � r   = B � � � J   = @ � �  ��� � m   = > � � � � � & R e s u l t   N o t i f i c a t i o n��   � l      ����� � o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   �  � � � l  C C��������  ��  ��   �  ��� � I  C Z���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � m   E F � � � � �  i S y n c S c r i p t � �� � �
�� 
anot � o   I J���� ,0 allnotificationslist allNotificationsList � �� � �
�� 
dnot � o   M N���� 40 enablednotificationslist enabledNotificationsList � �� ���
�� 
iapp � m   Q T � � � � �  S c r i p t   E d i t o r��  ��   U m   3 4 � �2                                                                                  GRRR   alis    �  Danger Mouse               đ;wH+  >��GrowlHelperApp.app                                             >�����         ����  	                	Resources     đ��      ��6p    >��>��>�� �r     YDanger Mouse:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    D a n g e r   M o u s e  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��  ��  ��  ��   P  � � � l     ��������  ��  ��   �  � � � l  ` � ����� � O   ` � � � � k   f � � �  � � � I  f k������
�� .miscactvnull��� ��� null��  ��   �  � � � I  l q������
�� .blrnSYNCbool       obj ��  ��   �  � � � l  r r�� � ���   � 2 , wait until sync status != 1 (synchronizing)    � � � � X   w a i t   u n t i l   s y n c   s t a t u s   ! =   1   ( s y n c h r o n i z i n g ) �  � � � V   r ��� ���   � l  v } ����� � =  v } � � � 1   v {��
�� 
syng � m   { |��
�� boovtrue��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
stsy � o      ���� 0 
syncstatus 
syncStatus �  ��� � r   � � � � � 1   � ���
�� 
lsnc � o      ���� 0 lastsync lastSync��   � m   ` c � ��                                                                                  iSnc   alis    H  Danger Mouse               đ;wH+     	iSync.app                                                         Lđ1�        ����  	                Applications    đ��      đ��         #Danger Mouse:Applications:iSync.app    	 i S y n c . a p p    D a n g e r   M o u s e  Applications/iSync.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ����  0 syncstatustext syncStatusText��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 4 . syncStatus = 2 -> successfully completed sync    � � � � \   s y n c S t a t u s   =   2   - >   s u c c e s s f u l l y   c o m p l e t e d   s y n c �  � � � l  � ����� � Z   � � ��� � � =   � � � � � o   � ����� 0 
syncstatus 
syncStatus � m   � �����  � r   � � � � � m   � � � � � � � & S u c c e s s f u l l y   S y n c e d � o      ����  0 syncstatustext syncStatusText��   � k   � � �  � � � Z   � � � ��� � =   � � � � � o   � ����� 0 
syncstatus 
syncStatus � m   � �����  � r   � � � � � m   � � � � � � � . C o m p l e t e d   w i t h   W a r n i n g s � o      ����  0 syncstatustext syncStatusText �  � � � =   � � � � � o   � ����� 0 
syncstatus 
syncStatus � m   � �����  �  � � � r   � � � � � m   � � � � � � � * C o m p l e t e d   w i t h   E r r o r s � o      ����  0 syncstatustext syncStatusText �  � � � =   � � � � � o   � ��� 0 
syncstatus 
syncStatus � m   � ��~�~  �  � � � r   � � � � � m   � � � � � � � & L a s t   S y n c   C a n c e l l e d � o      �}�}  0 syncstatustext syncStatusText �  � � � =   � � � � � o   � ��|�| 0 
syncstatus 
syncStatus � m   � ��{�{  �  � � � r   � � � � � m   � �   � 8 L a s t   S y n c   F a i l e d   t o   C o m p l e t e � o      �z�z  0 syncstatustext syncStatusText �  =    o   �y�y 0 
syncstatus 
syncStatus m  �x�x  �w r  
 m  
		 �

  N e v e r   S y n c e d o      �v�v  0 syncstatustext syncStatusText�w  ��   � �u l �t�s�r�t  �s  �r  �u  ��  ��   �  l     �q�p�o�q  �p  �o    l 9�n�m Z  9�l�k F  & =   o  �j�j 0 
syncstatus 
syncStatus m  �i�i  H   " o   !�h�h  0 isyncisrunning iSyncIsRunning O )5 I /4�g�f�e
�g .aevtquitnull��� ��� null�f  �e   m  ),�                                                                                  iSnc   alis    H  Danger Mouse               đ;wH+     	iSync.app                                                         Lđ1�        ����  	                Applications    đ��      đ��         #Danger Mouse:Applications:iSync.app    	 i S y n c . a p p    D a n g e r   M o u s e  Applications/iSync.app  / ��  �l  �k  �n  �m    l     �d�c�b�d  �c  �b    l :U�a�` r  :U !  b  :Q"#" b  :M$%$ b  :I&'& b  :E()( b  :A*+* m  :=,, �--  S t a t u s :  + o  =@�_�_  0 syncstatustext syncStatusText) m  AD.. �//    (' o  EH�^�^ 0 
syncstatus 
syncStatus% m  IL00 �11  ) .     S y n c e d   o n  # o  MP�]�] 0 lastsync lastSync! o      �\�\ 0 displaytext displayText�a  �`   232 l     �[�Z�Y�[  �Z  �Y  3 454 l V�6�X�W6 Z  V�78�V97 o  VW�U�U  0 growlisrunning growlIsRunning8 O  Z�:;: I ^��T�S<
�T .notifygrnull��� ��� null�S  < �R=>
�R 
name= m  be?? �@@ & R e s u l t   N o t i f i c a t i o n> �QAB
�Q 
titlA m  hkCC �DD  i S y n c S c r i p tB �PEF
�P 
descE o  nq�O�O 0 displaytext displayTextF �NGH
�N 
applG m  ruII �JJ  i S y n c S c r i p tH �MK�L
�M 
iappK m  x{LL �MM 
 i S y n c�L  ; m  Z[NN2                                                                                  GRRR   alis    �  Danger Mouse               đ;wH+  >��GrowlHelperApp.app                                             >�����         ����  	                	Resources     đ��      ��6p    >��>��>�� �r     YDanger Mouse:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    D a n g e r   M o u s e  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �V  9 I ���KO�J
�K .sysodlogaskr        TEXTO b  ��PQP m  ��RR �SS  s y n c S t a t u s :  Q o  ���I�I 0 
syncstatus 
syncStatus�J  �X  �W  5 TUT l     �H�G�F�H  �G  �F  U V�EV l ��W�D�CW L  ��XX o  ���B�B 0 
syncstatus 
syncStatus�D  �C  �E       �AYZ�A  Y �@
�@ .aevtoappnull  �   � ****Z �?[�>�=\]�<
�? .aevtoappnull  �   � ****[ k    �^^  '__  O``  �aa  �bb  �cc dd ee 4ff V�;�;  �>  �=  \  ] ; L�:g�9 :�8�7 J�6 � i�5 ��4�3 ��2�1�0 ��/�. ��-�,�+�*�)�(�' ��& � ��% ��$ ��# �"	�!� ,.0��?�C�IL��R�
�: 
prcsg  
�9 
pnam
�8 .corecnte****       ****�7  0 growlisrunning growlIsRunning�6  0 isyncisrunning iSyncIsRunning�5 ,0 allnotificationslist allNotificationsList�4 40 enablednotificationslist enabledNotificationsList
�3 
appl
�2 
anot
�1 
dnot
�0 
iapp�/ 
�. .registernull��� ��� null
�- .miscactvnull��� ��� null
�, .blrnSYNCbool       obj 
�+ 
syng
�* 
stsy�) 0 
syncstatus 
syncStatus
�( 
lsnc�' 0 lastsync lastSync�&  0 syncstatustext syncStatusText�% �$ �# �" 
�! 
bool
�  .aevtquitnull��� ��� null� 0 displaytext displayText
� 
name
� 
titl
� 
desc� 

� .notifygrnull��� ��� null
� .sysodlogaskr        TEXT�<�� +*�-�[�,\Z�81j jE�O*�-�[�,\Z�81j jE�UO� -� %�kvE�O�kvE�O*��a �a �a a a  UY hOa  2*j O*j O h*a ,e hY��O*a ,E` O*a ,E` UOa E` O_ l  a  E` Y g_ m  a !E` Y S_ a "  a #E` Y ?_ a $  a %E` Y +_ a &  a 'E` Y _ a (  a )E` Y hOPO_ l 	 �a *& a  *j +UY hOa ,_ %a -%_ %a .%_ %E` /O� -� %*a 0a 1a 2a 3a 4_ /�a 5a a 6a 7 8UY a 9_ %j :O_ ascr  ��ޭ