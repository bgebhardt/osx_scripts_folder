FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 timeout_value    m     ���� <    	  l     ������  ��   	  
  
 l   � ��  O    �    k   �       I   	������
�� .miscactvnull��� ��� null��  ��     ��  Q   
�     k   �       I    ��  
�� .sysodlogaskr        TEXT  b        b        b         m     ! !  Open Reuters News Stories      o    ��
�� 
ret   o    ��
�� 
ret   m     " " i cThis script will open all the top news stories from the Reuters website in new windows or new tabs.     �� # $
�� 
btns # J     % %  & ' & m     ( (  Cancel    '  ) * ) m     + +  Windows    *  ,�� , m     - - 
 Tabs   ��   $ �� .��
�� 
dflt . m    ���� ��     / 0 / r   ! & 1 2 1 l  ! $ 3�� 3 n   ! $ 4 5 4 1   " $��
�� 
bhit 5 l  ! " 6�� 6 1   ! "��
�� 
rslt��  ��   2 l      7�� 7 o      ���� 0 display_method  ��   0  8 9 8 l  ' '������  ��   9  : ; : Z   ' G < =���� < H   ' 0 > > l  ' / ?�� ? I  ' /�� @��
�� .coredoexbool       obj  @ 4   ' +�� A
�� 
docu A m   ) *���� ��  ��   = I  3 C���� B
�� .corecrel****      � null��   B �� C D
�� 
kocl C m   7 8��
�� 
docu D �� E��
�� 
insh E l  ; ? F�� F n   ; ? G H G  :   > ? H 2  ; >��
�� 
docu��  ��  ��  ��   ;  I J I l  H H������  ��   J  K L K l  H H�� M��   M !  open the Reuters news site    L  N O N r   H T P Q P m   H K R R ^ Xhttp://www.reuters.com/newsChannel.jhtml;jsessionid=4WHZE4SCY31KYCRBAEKSFEY?type=topNews    Q l      S�� S n       T U T 1   O S��
�� 
pURL U l  K O V�� V 4  K O�� W
�� 
docu W m   M N���� ��  ��   O  X Y X l  U U������  ��   Y  Z [ Z l  U U�� \��   \ . ( delay some seconds for the page to load    [  ] ^ ] I  U Z�� _��
�� .sysodelanull��� ��� long _ m   U V���� ��   ^  ` a ` l  [ [�� b��   b 5 / check to see if the page has completed loading    a  c d c Z  [ t e f���� e =  [ g g h g n  [ e i j i I   \ e�� k���� 0 page_loaded   k  l�� l o   \ a���� 0 timeout_value  ��  ��   j  f   [ \ h m   e f��
�� boovfals f R   j p�� m��
�� .ascrerr ****      � **** m m   l o n n ; 5The page did not load in the indicated timeout value.   ��  ��  ��   d  o p o l  u u������  ��   p  q r q l  u u�� s��   s , & get URLs for all the top news stories    r  t u t r   u � v w v c   u � x y x l  u � z�� z I  u ��� { |
�� .sfridojsnull���    obj  { m   u x } }  document.links.length    | �� ~��
�� 
dcnm ~ 4   { �� 
�� 
docu  m   } ~���� ��  ��   y m   � ���
�� 
long w l      ��� � o      ���� 0 links_count  ��   u  � � � r   � � � � � J   � �����   � l      ��� � o      ���� 0 
links_list  ��   �  � � � Z   � � � ����� � >  � � � � � l  � � ��� � o   � ����� 0 links_count  ��   � m   � �����   � Y   � � ��� � ��� � k   � � � �  � � � r   � � � � � l  � � ��� � I  � ��� � �
�� .sfridojsnull���    obj  � l  � � ��� � b   � � � � � b   � � � � � m   � � � �  document.links[    � l  � � ��� � c   � � � � � o   � ����� 0 i   � m   � ���
�� 
TEXT��   � m   � � � �  ].href   ��   � �� ���
�� 
dcnm � 4   � ��� �
�� 
docu � m   � ����� ��  ��   � o      ���� 0 	this_link   �  ��� � Z   � � � ����� � F   � � � � � E   � � � � � o   � ����� 0 	this_link   � m   � � � �  topNews&storyID    � H   � � � � E  � � � � � l  � � ��� � o   � ����� 0 
links_list  ��   � o   � ����� 0 	this_link   � r   � � � � � o   � ����� 0 	this_link   � l      ��� � n       � � �  ;   � � � l  � � ��� � o   � ����� 0 
links_list  ��  ��  ��  ��  ��  �� 0 i   � m   � �����   � l  � � ��� � \   � � � � � l  � � ��� � o   � ����� 0 links_count  ��   � m   � ����� ��  ��  ��  ��   �  � � � l  � �������  ��   �  � � � Z   �� � ����� � >  � � � � � l  � � ��� � o   � ����� 0 
links_list  ��   � J   � �����   � k   �� � �  � � � Z   � � ����� � =  � � � � l  � � ��� � o   � ����� 0 display_method  ��   � m   � � � 
 Tabs    � k   � �  � � � I �� � �
�� .sfridojsnull���    obj  � m  	 � � < 6self.moveTo(0,0);self.resizeTo(800,screen.availHeight)    � �� ���
�� 
dcnm � 4  � �
� 
docu � m  �~�~ ��   �  � � � l �} ��}   � + % size the document to full screen        �  ��| � l �{ ��{   � d ^ do JavaScript "moveTo(0,0);self.resizeTo(screen.availWidth,screen.availHeight)" in document 1   �|  ��  ��   �  ��z � Y  � ��y � ��x � k  0� � �  � � � r  0< � � � n  08 � � � 4  38�w �
�w 
cobj � o  67�v�v 0 i   � o  03�u�u 0 
links_list   � o      �t�t 0 	this_item   �  � � � r  =H � � � b  =D � � � m  =@ � �  http://www.reuters.com/    � o  @C�s�s 0 	this_item   � o      �r�r 0 this_url this_URL �  ��q � Z  I� � ��p � � = IN � � � l IJ ��o � o  IJ�n�n 0 display_method  �o   � m  JM � �  Windows    � k  Qq � �  � � � l QQ�m ��m   � ( " open each story in its own window    �  � � � r  Qe � � � I Qa�l�k �
�l .corecrel****      � null�k   � �j � �
�j 
kocl � m  UV�i
�i 
docu � �h ��g
�h 
insh � l Y] �f  n  Y]  :  \] 2 Y\�e
�e 
docu�f  �g   � o      �d�d 0 this_document   � �c r  fq o  fi�b�b 0 this_url this_URL l     �a n       1  lp�`
�` 
pURL o  il�_�_ 0 this_document  �a  �c  �p   � k  t�		 

 l tt�^�^   %  open each story in its own tab     n ty I  uy�]�\�[�] 0 new_tab  �\  �[    f  tu �Z r  z� o  z}�Y�Y 0 this_url this_URL l     �X n       1  ���W
�W 
pURL 4  }��V
�V 
docu m  ��U�U �X  �Z  �q  �y 0 i   � m  �T�T  � l +�S n  + m  &*�R
�R 
nmbr n & 2 "&�Q
�Q 
cobj o  "�P�P 0 
links_list  �S  �x  �z  ��  ��   � �O l ���N�M�N  �M  �O    R      �L
�L .ascrerr ****      � **** l      �K  o      �J�J 0 error_message  �K   �I!�H
�I 
errn! l     "�G" o      �F�F 0 error_number  �G  �H    k  ��## $%$ l ���E&�E  & l f don't display error message if the user canceled a dialog within the [try] and [on error] lines above   % '�D' Z  ��()�C�B( > ��*+* l ��,�A, o  ���@�@ 0 error_number  �A  + m  ���?�?��) k  ��-- ./. r  ��010 b  ��232 b  ��454 b  ��676 m  ��88  Error:    7 l ��9�>9 o  ���=�= 0 error_number  �>  5 m  ��::  .    3 l ��;�<; o  ���;�; 0 error_message  �<  1 l     <�:< o      �9�9 0 
error_text  �:  / =�8= I ���7>?
�7 .sysodlogaskr        TEXT> l ��@�6@ o  ���5�5 0 
error_text  �6  ? �4AB
�4 
btnsA J  ��CC D�3D m  ��EE  Cancel   �3  B �2F�1
�2 
dfltF m  ���0�0 �1  �8  �C  �B  �D  ��    m     GG�null     ߀��  u
Safari.app���D "L� �      L��ి�఍5|t���P    �5f          sfri   alis    L  Macintosh HD               �-�H+    u
Safari.app                                                      .̺��P        ����                  Applications    �e�      ���      u  $Macintosh HD:Applications:Safari.app   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��    HIH l     �/�.�/  �.  I JKJ i    LML I      �-N�,�- 0 page_loaded  N O�+O o      �*�* 0 timeout_value  �+  �,  M k     ;PP QRQ Y     8S�)TU�(S O   
 3VWV Z    2XYZ[X =   \]\ l   ^�'^ I   �&_`
�& .sfridojsnull���    obj _ m    aa  document.readyState   ` �%b�$
�% 
dcnmb 4    �#c
�# 
docuc m    �"�" �$  �'  ] m    dd  complete   Y L    ee m    �!
�! boovtrueZ fgf =  " %hih o   " #� �  0 i  i l  # $j�j o   # $�� 0 timeout_value  �  g k�k L   ( *ll m   ( )�
� boovfals�  [ I  - 2�m�
� .sysodelanull��� ��� longm m   - .�� �  W m   
 G�) 0 i  T m    �� U l   n�n o    �� 0 timeout_value  �  �(  R o�o L   9 ;pp m   9 :�
� boovfals�  K qrq l     ���  �  r sts i    
uvu I      ���� 0 new_tab  �  �  v k     &ww xyx O    
z{z I   	���
� .miscactvnull��� ��� null�  �  { m     Gy |�| O    &}~} O    %� I   $�
��	
�
 .prcsclicnull���    obj � n     ��� 4     ��
� 
menI� m    ��  New Tab   � n    ��� 4    ��
� 
menE� m    �� 
 File   � 4    ��
� 
mbar� m    �� �	  � 4    ��
� 
prcs� m    ��  Safari   ~ m    ���null     ���� +ؒSystem Events.app� �      ����п��Ѝ5|t���p    �5f          sevs   alis    �  Macintosh HD               �-�H+   +ؒSystem Events.app                                               .1�H�        ����                  CoreServices    �e�      ��)     +ؒ +ՙ +՘  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  t ��� l     ���  �  �       � ��������������������������   � ���������������������������������� 0 timeout_value  �� 0 page_loaded  �� 0 new_tab  
�� .aevtoappnull  �   � ****�� 0 display_method  �� 0 links_count  �� 0 
links_list  �� 0 	this_link  �� 0 	this_item  �� 0 this_url this_URL��  ��  ��  ��  ��  ��  �� <� ��M���������� 0 page_loaded  �� ����� �  ���� 0 timeout_value  ��  � ������ 0 timeout_value  �� 0 i  � Ga������d��
�� 
dcnm
�� 
docu
�� .sfridojsnull���    obj 
�� .sysodelanull��� ��� long�� < 7k�kh � &��*�k/l �  eY ��  fY kj U[OY��Of� ��v���������� 0 new_tab  ��  ��  �  � G����������������
�� .miscactvnull��� ��� null
�� 
prcs
�� 
mbar
�� 
menE
�� 
menI
�� .prcsclicnull���    obj �� '� *j UO� *��/ *�k/��/��/j 
UU� �����������
�� .aevtoappnull  �   � ****� k    ���  
����  ��  ��  � �������� 0 i  �� 0 error_message  �� 0 error_number  � 6G�� !�� "�� ( + -���������������������� R������ n }���������� ��� ��� ��� � ������� ��� ����������8:��E
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 display_method  
�� 
docu
�� .coredoexbool       obj 
�� 
kocl
�� 
insh
�� .corecrel****      � null
�� 
pURL
�� .sysodelanull��� ��� long�� 0 page_loaded  
�� 
dcnm
�� .sfridojsnull���    obj 
�� 
long�� 0 links_count  �� 0 
links_list  
�� 
TEXT�� 0 	this_link  
�� 
bool
�� 
cobj
�� 
nmbr�� 0 	this_item  �� 0 this_url this_URL�� 0 this_document  �� 0 new_tab  �� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ������ 0 
error_text  �����*j O���%�%�%����mv�m� O��,E�O*�k/j  *a �a *�-5� Y hOa *�k/a ,FOlj O)b   k+ f  )ja Y hOa a *�k/l a &E` OjvE` O_ j Z Tj_ kkh  a �a  &%a !%a *�k/l E` "O_ "a #	 _ _ "a $& _ "_ 6FY h[OY��Y hO_ jv ��a %  a &a *�k/l OPY hO ok_ a '-a (,Ekh  _ a '�/E` )Oa *_ )%E` +O�a ,  %*a �a *�-5� E` -O_ +_ -a ,FY )j+ .O_ +*�k/a ,F[OY��Y hOPW 2X / 0�a 1 $a 2�%a 3%�%E` 4O_ 4�a 5kv�k� Y hU� 
 Tabs   �� F� ����� 
�  ����������������������� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 5 9 5� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 5 6 2� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 6 4 4� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 5 6 5� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 5 7 1� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 5 2 4� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 6 0 0� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 3 0 7� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 3 2 0� ��� � n e w s A r t i c l e . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A ? t y p e = t o p N e w s & s t o r y I D = 2 5 5 5 6 0 5��  ��  ��  ��  ��  ��  � ��� z h e l p S e c t i o n C o n t a c t U s . j h t m l ; j s e s s i o n i d = K N 1 A L W U 5 T Y T A 0 C R B A E 0 C F F A� � hhttp://www.reuters.com/newsArticle.jhtml;jsessionid=KN1ALWU5TYTA0CRBAE0CFFA?type=topNews&storyID=2555605                  ��  ��  ��  ��  ��  ��  ascr  ��ޭ