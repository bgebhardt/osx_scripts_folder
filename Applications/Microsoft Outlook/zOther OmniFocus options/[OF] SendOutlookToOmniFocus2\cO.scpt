FasdUAS 1.101.10   ��   ��    k             l     ��  ��    , &--------------------------------------     � 	 	 L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    "  PROPERTIES TO BE AJUSTED --     �   8   P R O P E R T I E S   T O   B E   A J U S T E D   - -      l     ��  ��    , &--------------------------------------     �   L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ��  ��    E ? here we specify if we want the quick entry pane (1) or not (0)     �   ~   h e r e   w e   s p e c i f y   i f   w e   w a n t   t h e   q u i c k   e n t r y   p a n e   ( 1 )   o r   n o t   ( 0 )      j     �� ��  0 showquickentry showQuickEntry  m     ����       l     ��   !��     W Q if you dont want to have omnifocus be brought to the foreground, set this to 0,     ! � " " �   i f   y o u   d o n t   w a n t   t o   h a v e   o m n i f o c u s   b e   b r o u g h t   t o   t h e   f o r e g r o u n d ,   s e t   t h i s   t o   0 ,     # $ # l     �� % &��   % A ; however, this will only take effect if showQuickEntry is 1    & � ' ' v   h o w e v e r ,   t h i s   w i l l   o n l y   t a k e   e f f e c t   i f   s h o w Q u i c k E n t r y   i s   1 $  ( ) ( j    �� *�� 80 bringomnifocustoforeground bringOmnifocusToForeground * m    ����   )  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / 9 3 set this to 0 if you dont want an email attachment    0 � 1 1 f   s e t   t h i s   t o   0   i f   y o u   d o n t   w a n t   a n   e m a i l   a t t a c h m e n t .  2 3 2 j    �� 4�� (0 attachmailtooftask attachMailToOFTask 4 m    ����  3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9   set this to    : � ; ;    s e t   t h i s   t o 8  < = < l     �� > ?��   > , & 0: for not putting the focus anywhere    ? � @ @ L   0 :   f o r   n o t   p u t t i n g   t h e   f o c u s   a n y w h e r e =  A B A l     �� C D��   C 8 2 1: for putting the focus into the task name field    D � E E d   1 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   t a s k   n a m e   f i e l d B  F G F l     �� H I��   H 4 . 2: for putting the focus in the project field    I � J J \   2 :   f o r   p u t t i n g   t h e   f o c u s   i n   t h e   p r o j e c t   f i e l d G  K L K l     �� M N��   M 6 0 3: for putting the focus into the context field    N � O O `   3 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   c o n t e x t   f i e l d L  P Q P l     �� R S��   R 2 , 4: for putting the focus into the due field    S � T T X   4 :   f o r   p u t t i n g   t h e   f o c u s   i n t o   t h e   d u e   f i e l d Q  U V U l     �� W X��   W H B default: a reasonable default is 2 to set it to the project field    X � Y Y �   d e f a u l t :   a   r e a s o n a b l e   d e f a u l t   i s   2   t o   s e t   i t   t o   t h e   p r o j e c t   f i e l d V  Z [ Z j   	 �� \�� (0 focusspecificfield focusSpecificField \ m   	 
����  [  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a n h CAUTION: use at your own RISK, this will delete the original mail after it was transferred to OmniFocus    b � c c �   C A U T I O N :   u s e   a t   y o u r   o w n   R I S K ,   t h i s   w i l l   d e l e t e   t h e   o r i g i n a l   m a i l   a f t e r   i t   w a s   t r a n s f e r r e d   t o   O m n i F o c u s `  d e d j    �� f�� 60 deletemailafterprocessing deleteMailAfterProcessing f m    ����   e  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k 8 2 configure mail post processing, if this is set to    l � m m d   c o n f i g u r e   m a i l   p o s t   p r o c e s s i n g ,   i f   t h i s   i s   s e t   t o j  n o n l     �� p q��   p ^ X 0: for not moving the mail (use 0 if you want to enable mail deletion as defined above)    q � r r �   0 :   f o r   n o t   m o v i n g   t h e   m a i l   ( u s e   0   i f   y o u   w a n t   t o   e n a b l e   m a i l   d e l e t i o n   a s   d e f i n e d   a b o v e ) o  s t s l     �� u v��   u 2 , 1: if you want to move the mail to a folder    v � w w X   1 :   i f   y o u   w a n t   t o   m o v e   t h e   m a i l   t o   a   f o l d e r t  x y x l     ��������  ��  ��   y  z { z j    �� |�� $0 movemailtofolder moveMailToFolder | m    ����   {  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   � _ Y configure the target folder name to where the mail should be moved. Needs to exist first    � � � � �   c o n f i g u r e   t h e   t a r g e t   f o l d e r   n a m e   t o   w h e r e   t h e   m a i l   s h o u l d   b e   m o v e d .   N e e d s   t o   e x i s t   f i r s t �  � � � j    �� ��� ,0 targetmailfoldername targetMailFolderName � m     � � � � �  t e s t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   � ����� � O    � � � � k   � � �  � � � l   �� � ���   � 5 / get the currently selected message or messages    � � � � ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s �  � � � r    	 � � � 1    ��
�� 
CMgs � o      ���� $0 selectedmessages selectedMessages �  � � � l  
 
�� � ���   � E ? if there are no messages selected, warn the user and then quit    � � � � ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t �  � � � Z   
  � ����� � =  
  � � � o   
 ���� $0 selectedmessages selectedMessages � J    ����   � k     � �  � � � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � � P l e a s e   s e l e c t   o n e   o r   m o r e   m e s s a g e s   f i r s t   a n d   t h e n   r u n   t h i s   s c r i p t . � �� ���
�� 
disp � m    ���� ��   �  ��� � L    ����  ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � X    � ��� � � k   0� � �  � � � l  0 0��������  ��  ��   �  � � � r   0 5 � � � n   0 3 � � � 1   1 3��
�� 
subj � o   0 1���� 0 
themessage 
theMessage � o      ���� 0 thename theName �  � � � l  6 6��������  ��  ��   �  � � � l  6 6�� � ���   � N H Check for a blank subject line, check provided by Peter as well as Paul    � � � � �   C h e c k   f o r   a   b l a n k   s u b j e c t   l i n e ,   c h e c k   p r o v i d e d   b y   P e t e r   a s   w e l l   a s   P a u l �  � � � Z   6 C � ����� � =  6 9 � � � o   6 7���� 0 thename theName � m   7 8��
�� 
msng � r   < ? � � � m   < = � � � � �  N o   S u b j e c t � o      ���� 0 thename theName��  ��   �  � � � l  D D�� � ���   �  
 End check    � � � �    E n d   c h e c k �  � � � l  D D��������  ��  ��   �  � � � r   D I � � � n   D G � � � 1   E G��
�� 
ctnt � o   D E���� 0 
themessage 
theMessage � o      ���� 0 
thecontent 
theContent �  � � � r   J U � � � c   J Q � � � n   J M � � � 1   K M��
�� 
ID   � o   J K���� 0 
themessage 
theMessage � m   M P��
�� 
TEXT � o      ���� 0 theid theID �  � � � r   V _ � � � n   V [ � � � 1   W [��
�� 
sndr � o   V W���� 0 
themessage 
theMessage � o      ���� 0 	thesender 	theSender �  � � � l  ` `��������  ��  ��   �  � � � l  ` `�� � ���   � W Q some messages dont have a sender name so lets make sure that we catch this error    � � � � �   s o m e   m e s s a g e s   d o n t   h a v e   a   s e n d e r   n a m e   s o   l e t s   m a k e   s u r e   t h a t   w e   c a t c h   t h i s   e r r o r �  � � � r   ` g � � � m   ` c � � � � �  U n k n o w n   S e n d e r � o      ���� $0 thesenderaddress theSenderAddress �  � � � r   h o � � � m   h k � � � � �  N o   S e n d e r   N a m e � o      ���� 0 thesendername theSenderName �  � � � Q   p � � �� � r   s ~ n   s z 1   v z��
�� 
pnam o   s v���� 0 	thesender 	theSender o      ���� 0 thesendername theSenderName  R      ������
�� .ascrerr ****      � ****��  ��  ��   �  Q   � ��� r   � �	
	 n   � � 1   � ���
�� 
radd o   � ����� 0 	thesender 	theSender
 o      ���� $0 thesenderaddress theSenderAddress R      ����~
�� .ascrerr ****      � ****�  �~  ��    l  � ��}�|�{�}  �|  �{    r   � � n   � � 1   � ��z
�z 
tims o   � ��y�y 0 
themessage 
theMessage o      �x�x 0 msgtime msgTime  r   � � b   � � b   � � b   � � b   � �  b   � �!"! b   � �#$# b   � �%&% b   � �'(' b   � �)*) b   � �+,+ b   � �-.- 1   � ��w
�w 
lnfd. 1   � ��v
�v 
lnfd, m   � �// �00  F r o m :  * o   � ��u�u 0 thesendername theSenderName( m   � �11 �22    [& o   � ��t�t $0 thesenderaddress theSenderAddress$ m   � �33 �44  ]" o   � ��s
�s 
ret   m   � �55 �66  D a t e :   o   � ��r�r 0 msgtime msgTime o   � ��q
�q 
ret  o   � ��p
�p 
ret  o      �o�o "0 omnifocusheader OmniFocusHeader 787 l  � ��n�m�l�n  �m  �l  8 9:9 l  � ��k;<�k  ; k e here we try to spotlight-search for the Selected Outlook message using the unique Outlook Message ID   < �== �   h e r e   w e   t r y   t o   s p o t l i g h t - s e a r c h   f o r   t h e   S e l e c t e d   O u t l o o k   m e s s a g e   u s i n g   t h e   u n i q u e   O u t l o o k   M e s s a g e   I D: >?> l  � ��j@A�j  @ @ : and save the file name (including full path) to myMsgFile   A �BB t   a n d   s a v e   t h e   f i l e   n a m e   ( i n c l u d i n g   f u l l   p a t h )   t o   m y M s g F i l e? CDC l  � ��i�h�g�i  �h  �g  D EFE l  � ��fGH�f  G y s note that this does not work on my system since outlook is claiming that the msg is from a different identity, FFS   H �II �   n o t e   t h a t   t h i s   d o e s   n o t   w o r k   o n   m y   s y s t e m   s i n c e   o u t l o o k   i s   c l a i m i n g   t h a t   t h e   m s g   i s   f r o m   a   d i f f e r e n t   i d e n t i t y ,   F F SF JKJ l  � ��eLM�e  L K E		set myShellCmd to "mdfind com_microsoft_outlook_recordID==" & theID   M �NN � 	 	 s e t   m y S h e l l C m d   t o   " m d f i n d   c o m _ m i c r o s o f t _ o u t l o o k _ r e c o r d I D = = "   &   t h e I DK OPO l  � ��dQR�d  Q U O		set myMsgFile to the first item of paragraphs of (do shell script myShellCmd)   R �SS � 	 	 s e t   m y M s g F i l e   t o   t h e   f i r s t   i t e m   o f   p a r a g r a p h s   o f   ( d o   s h e l l   s c r i p t   m y S h e l l C m d )P TUT l  � ��c�b�a�c  �b  �a  U VWV l  � ��`XY�`  X f ` set the path to a temp area on your HD to temporarily store the attachment to be loaded into OF   Y �ZZ �   s e t   t h e   p a t h   t o   a   t e m p   a r e a   o n   y o u r   H D   t o   t e m p o r a r i l y   s t o r e   t h e   a t t a c h m e n t   t o   b e   l o a d e d   i n t o   O FW [\[ r   � �]^] b   � �_`_ b   � �aba m   � �cc �dd  / t m p / O u t l o o k M s gb o   � ��_�_ 0 theid theID` m   � �ee �ff  . e m l^ o      �^�^ 0 thefilename theFileName\ ghg Z   �ij�]�\i l  � �k�[�Zk =  � �lml o   � ��Y�Y (0 attachmailtooftask attachMailToOFTaskm m   � ��X�X �[  �Z  j k   �nn opo O   �
qrq I  �	�Ws�V
�W .ascrcmnt****      � ****s b   �tut m   �vv �ww " s a v i n g   t h e   f i l e :  u o  �U�U 0 thefilename theFileName�V  r m   � �xx�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  p y�Ty I �Sz{
�S .coresavenull���     obj z o  �R�R 0 
themessage 
theMessage{ �Q|�P
�Q 
kfil| o  �O�O 0 thefilename theFileName�P  �T  �]  �\  h }~} l �N�M�L�N  �M  �L  ~ � l �K���K  � d ^ here we convert the HTML of the Message Content to plain text to insert into the Note section   � ��� �   h e r e   w e   c o n v e r t   t h e   H T M L   o f   t h e   M e s s a g e   C o n t e n t   t o   p l a i n   t e x t   t o   i n s e r t   i n t o   t h e   N o t e   s e c t i o n� ��� l �J���J  � ; 5 update: fixed input encoding as suggested by @Andrew   � ��� j   u p d a t e :   f i x e d   i n p u t   e n c o d i n g   a s   s u g g e s t e d   b y   @ A n d r e w� ��� r  0��� I ,�I��H
�I .sysoexecTEXT���     TEXT� l (��G�F� b  (��� b  $��� m  �� ��� 
 e c h o  � l #��E�D� n  #��� 1  #�C
�C 
strq� o  �B�B 0 
thecontent 
theContent�E  �D  � m  $'�� ��� �   | t e x t u t i l   - f o r m a t   h t m l   - i n p u t e n c o d i n g   U T F - 8   - c o n v e r t   t x t   - s t d i n   - s t d o u t�G  �F  �H  � o      �A�A 0 mytxtcontent myTxtContent� ��� l 11�@�?�>�@  �?  �>  � ��� r  1D��� b  1@��� b  1<��� b  18��� o  14�=�= "0 omnifocusheader OmniFocusHeader� 1  47�<
�< 
lnfd� 1  8;�;
�; 
lnfd� o  <?�:�: 0 mytxtcontent myTxtContent� o      �9�9 0 thetxtcontent theTxtContent� ��� l EE�8�7�6�8  �7  �6  � ��� l EE�5�4�3�5  �4  �3  � ��� O  E���� k  K��� ��� r  KT��� 1  KP�2
�2 
FCDo� o      �1�1 0 thedoc theDoc� ��� r  UZ��� o  UV�0�0 0 thename theName� o      �/�/ 0 thetask theTask� ��� r  [b��� o  [^�.�. 0 thetxtcontent theTxtContent� o      �-�- 0 thenote theNote� ��,� Z  c����+�� l cj��*�)� = cj��� o  ch�(�(  0 showquickentry showQuickEntry� m  hi�'�' �*  �)  � O  m��� k  u�� ��� r  u���� I u��&�%�
�& .corecrel****      � null�%  � �$��
�$ 
kocl� m  wz�#
�# 
FCit� �"��!
�" 
prdt� K  }��� � ��
�  
pnam� o  ���� 0 thetask theTask� ���
� 
FCno� o  ���� 0 thetxtcontent theTxtContent�  �!  � o      �� 0 newtask NewTask� ��� Z  ������� l ������ = ����� o  ���� (0 attachmailtooftask attachMailToOFTask� m  ���� �  �  � k  ���� ��� O ����� r  ����� l ������ 4  ����
� 
psxf� o  ���� 0 thefilename theFileName�  �  � o      �� 0 theattachment theAttachment�  f  ��� ��� l ������  �  �  � ��� O  ����� I ����
�
� .corecrel****      � null�
  � �	��
�	 
kocl� m  ���
� 
OSfA� ���
� 
prdt� K  ���� ���
� 
atfn� o  ���� 0 theattachment theAttachment� ���
� 
OSin� m  ���
� boovtrue�  �  � l ���� ��� n  ����� 1  ����
�� 
FCno� o  ������ 0 newtask NewTask�   ��  �  �  �  � ��� Z  ��������� l �������� = ����� o  ������ 80 bringomnifocustoforeground bringOmnifocusToForeground� m  ������ ��  ��  � I ��������
�� .miscactvnull��� ��� null��  ��  ��  ��  � ��� I ��������
�� .aevtodocnull  �    alis��  ��  � ���� O  ���� U   ��� I �����
�� .prcskprsnull���     ctxt� 1  ��
�� 
tab ��  � o  ���� (0 focusspecificfield focusSpecificField� m  ��  �                                                                                  sevs  alis    �  Macintosh HD               �`iYH+     !System Events.app                                               P��(]        ����  	                CoreServices    �`��      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  � 1  mr��
�� 
FCQE�+  � k  �  l ����   \ V we dont want the quick entry panel but the task will immediately show up in the inbox    � �   w e   d o n t   w a n t   t h e   q u i c k   e n t r y   p a n e l   b u t   t h e   t a s k   w i l l   i m m e d i a t e l y   s h o w   u p   i n   t h e   i n b o x �� O  �	 O  "�

 k  +�  r  +M I +I����
�� .corecrel****      � null��   ��
�� 
kocl m  -0��
�� 
FCit ����
�� 
prdt K  3C ��
�� 
pnam o  69���� 0 thetask theTask ����
�� 
FCno o  <?���� 0 thetxtcontent theTxtContent��  ��   o      ���� 0 newtask NewTask �� Z  N����� l NU���� = NU o  NS���� (0 attachmailtooftask attachMailToOFTask m  ST���� ��  ��   O  X  I b~����!
�� .corecrel****      � null��  ! ��"#
�� 
kocl" m  dg��
�� 
OSfA# ��$��
�� 
prdt$ K  jx%% ��&'
�� 
atfn& o  mp���� 0 thefilename theFileName' ��(��
�� 
OSin( m  st��
�� boovtrue��  ��    l X_)����) n  X_*+* 1  [_��
�� 
FCno+ o  X[���� 0 newtask NewTask��  ��  ��  ��  ��   l "(,����, 4 "(��-
�� 
docu- m  &'���� ��  ��  	 m  ..�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  �,  � m  EH//�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � 010 l ����������  ��  ��  1 232 l ����45��  4 J D the message should be removed from Outlook after it gets sent to OF   5 �66 �   t h e   m e s s a g e   s h o u l d   b e   r e m o v e d   f r o m   O u t l o o k   a f t e r   i t   g e t s   s e n t   t o   O F3 787 Z  ��9:����9 l ��;����; = ��<=< o  ������ 60 deletemailafterprocessing deleteMailAfterProcessing= m  ������ ��  ��  : I ����>��
�� .coredelonull���     obj > o  ������ 0 
themessage 
theMessage��  ��  ��  8 ?@? Z  ��AB����A l ��C����C = ��DED o  ������ $0 movemailtofolder moveMailToFolderE m  ������ ��  ��  B I ����FG
�� .coremovenull���     obj F o  ������ 0 
themessage 
theMessageG ��H��
�� 
inshH 4  ����I
�� 
cFldI o  ������ ,0 targetmailfoldername targetMailFolderName��  ��  ��  @ J��J l ����KL��  K $ 		display dialog theTxtContent   L �MM < 	 	 d i s p l a y   d i a l o g   t h e T x t C o n t e n t��  �� 0 
themessage 
theMessage � o   # $���� $0 selectedmessages selectedMessages��   � m     NN�                                                                                  OPIM  alis    x  Macintosh HD               �`iYH+     AMicrosoft Outlook.app                                           ̑� ��        ����  	                Applications    �`��      � ��       A  0Macintosh HD:Applications: Microsoft Outlook.app  ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  "Applications/Microsoft Outlook.app  / ��  ��  ��   � OPO l     ��QR��  Q ) # delete all the old leftover emails   R �SS F   d e l e t e   a l l   t h e   o l d   l e f t o v e r   e m a i l sP TUT l ��V����V Q  ��WXYW I ����Z��
�� .sysoexecTEXT���     TEXTZ m  ��[[ �\\ & r m   / t m p / O u t l o o k M s g *��  X R      ��]^
�� .ascrerr ****      � ****] l     _����_ o      ���� 0 error_message  ��  ��  ^ ��`��
�� 
errn` l     a����a o      ���� 0 error_number  ��  ��  ��  Y O  ��bcb I ����d��
�� .ascrcmnt****      � ****d b  ��efe b  ��ghg b  ��iji b  ��klk m  ��mm �nn : E r r o r   d e l e t i n g   o l d   t m p   f i l e s  l o  ������ 0 error_message  j m  ��oo �pp    (h o  ������ 0 error_number  f m  ��qq �rr  )��  c m  ��ss�                                                                                  OFOC  alis    X  Macintosh HD               �`iYH+     AOmniFocus.app                                                   !V��v        ����  	                Applications    �`��      �X�       A  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��  U tut l     ��������  ��  ��  u vwv l     ��xy��  x #  bring OmniFocus to the front   y �zz :   b r i n g   O m n i F o c u s   t o   t h e   f r o n tw {|{ l     ��}~��  } ( " thanks to tim @ omni for this one   ~ � D   t h a n k s   t o   t i m   @   o m n i   f o r   t h i s   o n e| ��� l     ������  � - ' does not seem to work with OmniFocus 2   � ��� N   d o e s   n o t   s e e m   t o   w o r k   w i t h   O m n i F o c u s   2� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 findandreplace findAndReplace� ��� o      ���� 
0 tofind  � ��� o      ���� 0 	toreplace  � ���� o      ���� 0 	thestring 	TheString��  ��  � k     C�� ��� r     ��� 1     �
� 
txdl� o      �~�~ 0 ditd  � ��� r    	��� m    �}
�} 
msng� o      �|�| 0 res  � ��� r   
 ��� o   
 �{�{ 
0 tofind  � 1    �z
�z 
txdl� ��� X    :��y�� Z   " 5���x�� =  " %��� o   " #�w�w 0 res  � m   # $�v
�v 
msng� r   ( +��� o   ( )�u�u 0 tis  � o      �t�t 0 res  �x  � r   . 5��� b   . 3��� b   . 1��� o   . /�s�s 0 res  � o   / 0�r�r 0 	toreplace  � o   1 2�q�q 0 tis  � o      �p�p 0 res  �y 0 tis  � n    ��� 2   �o
�o 
citm� o    �n�n 0 	thestring 	TheString� ��� r   ; @��� o   ; <�m�m 0 ditd  � 1   < ?�l
�l 
txdl� ��k� L   A C�� o   A B�j�j 0 res  �k  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f���f  � 7 1 currently not used but who knows what might come   � ��� b   c u r r e n t l y   n o t   u s e d   b u t   w h o   k n o w s   w h a t   m i g h t   c o m e� ��� i    ��� I      �e��d�e 0 	urlencode  � ��c� o      �b�b 0 thetext theText�c  �d  � k    �� ��� r     ��� m     �� ���  � o      �a�a 0 
thetextenc 
theTextEnc� ��� X    ��`�� k    ��� ��� r    ��� o    �_�_ 0 eachchar eachChar� o      �^�^ 0 usechar useChar� ��� r    !��� I   �]��\
�] .sysoctonshor       TEXT� o    �[�[ 0 eachchar eachChar�\  � o      �Z�Z 0 eachcharnum eachCharNum� ��� Z   " �����Y� =   " %��� o   " #�X�X 0 eachcharnum eachCharNum� m   # $�W�W  � r   ( +��� m   ( )�� ���  +� o      �V�V 0 usechar useChar� ��� F   . ��� F   . k��� F   . Y��� F   . I��� F   . 9��� l  . 1��U�T� >   . 1��� o   . /�S�S 0 eachcharnum eachCharNum� m   / 0�R�R *�U  �T  � l  4 7��Q�P� >   4 7��� o   4 5�O�O 0 eachcharnum eachCharNum� m   5 6�N�N _�Q  �P  � l  < G��M�L� G   < G��� A   < ?��� o   < =�K�K 0 eachcharnum eachCharNum� m   = >�J�J -� ?   B E� � o   B C�I�I 0 eachcharnum eachCharNum  m   C D�H�H .�M  �L  � l  L W�G�F G   L W A   L O o   L M�E�E 0 eachcharnum eachCharNum m   M N�D�D 0 ?   R U o   R S�C�C 0 eachcharnum eachCharNum m   S T�B�B 9�G  �F  � l  \ i�A�@ G   \ i	
	 A   \ _ o   \ ]�?�? 0 eachcharnum eachCharNum m   ] ^�>�> A
 ?   b g o   b c�=�= 0 eachcharnum eachCharNum m   c f�<�< Z�A  �@  � l  n }�;�: G   n } A   n s o   n o�9�9 0 eachcharnum eachCharNum m   o r�8�8 a ?   v { o   v w�7�7 0 eachcharnum eachCharNum m   w z�6�6 z�;  �:  � �5 k   � �  r   � � I  � ��4
�4 .sysorondlong        doub l  � ��3�2 ^   � �  o   � ��1�1 0 eachcharnum eachCharNum  m   � ��0�0 �3  �2   �/!�.
�/ 
dire! m   � ��-
�- olierndD�.   o      �,�, 0 firstdig firstDig "#" r   � �$%$ `   � �&'& o   � ��+�+ 0 eachcharnum eachCharNum' m   � ��*�* % o      �)�) 0 	seconddig 	secondDig# ()( Z   � �*+�(�'* ?   � �,-, o   � ��&�& 0 firstdig firstDig- m   � ��%�% 	+ k   � �.. /0/ r   � �121 [   � �343 o   � ��$�$ 0 firstdig firstDig4 m   � ��#�# 72 o      �"�" 0 anum aNum0 5�!5 r   � �676 I  � �� 8�
�  .sysontocTEXT       shor8 o   � ��� 0 anum aNum�  7 o      �� 0 firstdig firstDig�!  �(  �'  ) 9:9 Z   � �;<��; ?   � �=>= o   � ��� 0 	seconddig 	secondDig> m   � ��� 	< k   � �?? @A@ r   � �BCB [   � �DED o   � ��� 0 	seconddig 	secondDigE m   � ��� 7C o      �� 0 anum aNumA F�F r   � �GHG I  � ��I�
� .sysontocTEXT       shorI o   � ��� 0 anum aNum�  H o      �� 0 	seconddig 	secondDig�  �  �  : JKJ r   � �LML c   � �NON l  � �P��P b   � �QRQ b   � �STS m   � �UU �VV  %T l  � �W��W c   � �XYX o   � ��� 0 firstdig firstDigY m   � ��
� 
TEXT�  �  R l  � �Z�
�	Z c   � �[\[ o   � ��� 0 	seconddig 	secondDig\ m   � ��
� 
TEXT�
  �	  �  �  O m   � ��
� 
TEXTM o      �� 0 numhex numHexK ]�] r   � �^_^ o   � ��� 0 numhex numHex_ o      �� 0 usechar useChar�  �5  �Y  � `�` r   � �aba c   � �cdc b   � �efe o   � �� �  0 
thetextenc 
theTextEncf o   � ����� 0 usechar useChard m   � ���
�� 
TEXTb o      ���� 0 
thetextenc 
theTextEnc�  �` 0 eachchar eachChar� n    
ghg 2   
��
�� 
cha h o    ���� 0 thetext theText� i��i L  jj o  ���� 0 
thetextenc 
theTextEnc��  � klk i     mnm I      ��o���� 0 write_error_log  o p��p o      ���� 0 
this_error  ��  ��  n k     Mqq rsr r     tut b     	vwv l    x����x c     yzy l    {����{ I    ��|��
�� .earsffdralis        afdr| m     ��
�� afdrdesk��  ��  ��  z m    ��
�� 
ctxt��  ��  w m    }} �~~ ( S c r i p t   E r r o r   L o g . t x tu l     ���� o      ���� 0 	error_log  ��  ��  s ���� Q    M���� k    1�� ��� I   ����
�� .rdwropenshor       file� 4    ���
�� 
file� l   ������ o    ���� 0 	error_log  ��  ��  � �����
�� 
perm� m    ��
�� boovtrue��  � ��� I   (����
�� .rdwrwritnull���     ****� l   ������ b    ��� o    ���� 0 
this_error  � o    ��
�� 
ret ��  ��  � ����
�� 
refn� 4    "���
�� 
file� l    !������ o     !���� 0 	error_log  ��  ��  � �����
�� 
wrat� m   # $��
�� rdwreof ��  � ���� I  ) 1�����
�� .rdwrclosnull���     ****� 4   ) -���
�� 
file� l  + ,������ o   + ,���� 0 	error_log  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   9 M����� I  < D�����
�� .rdwrclosnull���     ****� 4   < @���
�� 
file� l  > ?������ o   > ?���� 0 	error_log  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  l ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ��������������� �������  � ������������������������  0 showquickentry showQuickEntry�� 80 bringomnifocustoforeground bringOmnifocusToForeground�� (0 attachmailtooftask attachMailToOFTask�� (0 focusspecificfield focusSpecificField�� 60 deletemailafterprocessing deleteMailAfterProcessing�� $0 movemailtofolder moveMailToFolder�� ,0 targetmailfoldername targetMailFolderName��  0 findandreplace findAndReplace�� 0 	urlencode  �� 0 write_error_log  
�� .aevtoappnull  �   � ****�� ��  �� �� ��  ��  � �������������  0 findandreplace findAndReplace�� ����� �  �������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString��  � �������������� 
0 tofind  �� 0 	toreplace  �� 0 	thestring 	TheString�� 0 ditd  �� 0 res  �� 0 tis  � ������������
�� 
txdl
�� 
msng
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� D*�,E�O�E�O�*�,FO )��-[��l kh ��  �E�Y 	��%�%E�[OY��O�*�,FO�� ������������� 0 	urlencode  �� ����� �  ���� 0 thetext theText��  � 	�������������������� 0 thetext theText�� 0 
thetextenc 
theTextEnc�� 0 eachchar eachChar�� 0 usechar useChar�� 0 eachcharnum eachCharNum�� 0 firstdig firstDig�� 0 	seconddig 	secondDig�� 0 anum aNum�� 0 numhex numHex� �����������~��}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�lU�k
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
� .sysoctonshor       TEXT�~  �} *�| _
�{ 
bool�z -�y .�x 0�w 9�v A�u Z�t a�s z�r 
�q 
dire
�p olierndD
�o .sysorondlong        doub�n 	�m 7
�l .sysontocTEXT       shor
�k 
TEXT���E�O ���-[��l kh �E�O�j E�O��  �E�Y Ť�	 ���&	 ��
 ���&�&	 ��
 ���&�&	 ��
 	�a �&�&	 �a 
 	�a �&�& p�a !a a l E�O�a #E�O�a  �a E�O�j E�Y hO�a  �a E�O�j E�Y hOa �a &%�a &%a &E�O�E�Y hO��%a &E�[OY�O�� �jn�i�h���g�j 0 write_error_log  �i �f��f �  �e�e 0 
this_error  �h  � �d�c�d 0 
this_error  �c 0 	error_log  � �b�a�`}�_�^�]�\�[�Z�Y�X�W�V�U�T
�b afdrdesk
�a .earsffdralis        afdr
�` 
ctxt
�_ 
file
�^ 
perm
�] .rdwropenshor       file
�\ 
ret 
�[ 
refn
�Z 
wrat
�Y rdwreof �X 
�W .rdwrwritnull���     ****
�V .rdwrclosnull���     ****�U  �T  �g N�j �&�%E�O '*�/�el O��%�*�/��� O*�/j W X   *�/j W X  h� �S��R�Q���P
�S .aevtoappnull  �   � ****� k    ���  ��� T�O�O  �R  �Q  � �N�M�L�N 0 
themessage 
theMessage�M 0 error_message  �L 0 error_number  � SN�K�J ��I�H�G�F�E�D�C�B ��A�@�?�>�=�<�; ��: ��9�8�7�6�5�4�3�2/13�15�0ce�/xv�.�-�,��+��*�)�(�'�&�%�$�#�"�!� ���������� �������[��moq
�K 
CMgs�J $0 selectedmessages selectedMessages
�I 
disp
�H .sysodlogaskr        TEXT
�G 
kocl
�F 
cobj
�E .corecnte****       ****
�D 
subj�C 0 thename theName
�B 
msng
�A 
ctnt�@ 0 
thecontent 
theContent
�? 
ID  
�> 
TEXT�= 0 theid theID
�< 
sndr�; 0 	thesender 	theSender�: $0 thesenderaddress theSenderAddress�9 0 thesendername theSenderName
�8 
pnam�7  �6  
�5 
radd
�4 
tims�3 0 msgtime msgTime
�2 
lnfd
�1 
ret �0 "0 omnifocusheader OmniFocusHeader�/ 0 thefilename theFileName
�. .ascrcmnt****      � ****
�- 
kfil
�, .coresavenull���     obj 
�+ 
strq
�* .sysoexecTEXT���     TEXT�) 0 mytxtcontent myTxtContent�( 0 thetxtcontent theTxtContent
�' 
FCDo�& 0 thedoc theDoc�% 0 thetask theTask�$ 0 thenote theNote
�# 
FCQE
�" 
FCit
�! 
prdt
�  
FCno� 
� .corecrel****      � null� 0 newtask NewTask
� 
psxf� 0 theattachment theAttachment
� 
OSfA
� 
atfn
� 
OSin
� .miscactvnull��� ��� null
� .aevtodocnull  �    alis
� 
tab 
� .prcskprsnull���     ctxt
� 
docu
� .coredelonull���     obj 
� 
insh
� 
cFld
� .coremovenull���     obj � 0 error_message  � ���
� 
errn� 0 error_number  �  �P���*�,E�O�jv  ��kl OhY hO��[��l kh  ��,E�O��  �E�Y hO��,E�O��,a &E` O�a ,E` Oa E` Oa E` O _ a ,E` W X  hO _ a ,E` W X  hO�a ,E` O_ _ %a %_ %a  %_ %a !%_ "%a #%_ %_ "%_ "%E` $Oa %_ %a &%E` 'Ob  k  #a ( a )_ '%j *UO�a +_ 'l ,Y hOa -�a .,%a /%j 0E` 1O_ $_ %_ %_ 1%E` 2Oa (<*a 3,E` 4O�E` 5O_ 2E` 6Ob   k  �*a 7, �*�a 8a 9a _ 5a :_ 2a ;a ; <E` =Ob  k  >) *a >_ '/E` ?UO_ =a :, *�a @a 9a A_ ?a Bea ;a ; <UY hOb  k  
*j CY hO*j DOa E  b  kh_ Fj G[OY��UUY ka ( d*a Hk/ Z*�a 8a 9a _ 5a :_ 2a ;a ; <E` =Ob  k  ,_ =a :, *�a @a 9a A_ 'a Bea ;a ; <UY hUUUOb  k  
�j IY hOb  k  �a J*a Kb  /l LY hOP[OY�mUO a Mj 0W !X N Oa ( a P�%a Q%�%a R%j *Uascr  ��ޭ