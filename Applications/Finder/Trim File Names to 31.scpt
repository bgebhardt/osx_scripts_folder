FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��Trim Folder NamesThis script is designed to trim the name of specific folders in the front window of the desktop. If no folder windows are open, the script will effect folders on the desktop.Copyright � 2001 Apple Computer, Inc.You may incorporate this Apple sample code into your program(s) withoutrestriction.  This Apple sample code has been provided "AS IS" and theresponsibility for its operation is yours.  You are not permitted toredistribute this Apple sample code as "Apple sample code" after havingmade changes.  If you're going to redistribute the code, we requirethat you make it clear that the code was descended from Apple samplecode, but that you've made changes.       	  l     ������  ��   	  
  
 l     �� ��    ? 9 The following line is disabled due to a Menu Manager bug         l     �� ��    n hset the source_folder to (choose folder with prompt "Pick the folder containing the folders to rename:")         l     ������  ��        l     ��  I    �� ��
�� .sysodlogaskr        ****  m        � {This script will trim all files in the top most folder to 31 characters and put them in a folder with the full file's name.   ��  ��        l     ������  ��        l   ' ��  Q    '     O  	      r     ! " ! c     # $ # l    %�� % n     & ' & m    ��
�� 
cfol ' l    (�� ( 4   �� )
�� 
cwin ) m    ���� ��  ��   $ m    ��
�� 
alis " l      *�� * o      ���� 0 source_folder  ��     m   	 
 + +�null     ߀��  
Finder.appLp1���рX14p3t�����рB "Kp�@                  MACS   alis    ,  Linus                      �رH+    
Finder.app                                                       (���/        ����                   CoreServices      �  �  ,Linus:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    L i n u s    ���      �ğ�  ��    R      ������
�� .ascrerr ****      � ****��  ��    l    ' , - , k     ' . .  / 0 / I    %�� 1��
�� .sysodlogaskr        **** 1 m     ! 2 2  Error:  No open folder.   ��   0  3�� 3 l  & &�� 4��   4 > 8set the source_folder to path to desktop folder as alias   ��   -   no open folder windows   ��     5 6 5 l     ������  ��   6  7 8 7 l     ������  ��   8  9 : 9 l      �� ;��   ;C= repeat	display dialog "Text to trim from every file name:" default answer "" buttons {"Cancel", "Trim Start", "Trim End"}	copy the result as list to {the text_to_trim, the button_pressed}	--if the button_pressed is "Cancel" then return "user cancelled"	if the text_to_trim is not "" then exit repeatend repeat    :  < = < l     ������  ��   =  > ? > l  ( 1 @�� @ r   ( 1 A B A I  ( /�� C D
�� .earslfdrlist  @     fss  C o   ( )���� 0 source_folder   D �� E��
�� 
lfiv E m   * +��
�� boovfals��   B l      F�� F o      ���� 0 	item_list  ��  ��   ?  G H G l  2 7 I�� I r   2 7 J K J c   2 5 L M L o   2 3���� 0 source_folder   M m   3 4��
�� 
TEXT K o      ���� 0 source_folder  ��   H  N O N l  8 P�� P Y   8 Q�� R S�� Q k   G � T T  U V U r   G O W X W n   G K Y Z Y 4   H K�� [
�� 
cobj [ o   I J���� 0 i   Z l  G H \�� \ o   G H���� 0 	item_list  ��   X o      ���� 0 	this_item   V  ] ^ ] r   P [ _ ` _ c   P W a b a l  P U c�� c b   P U d e d o   P Q���� 0 source_folder   e o   Q T���� 0 	this_item  ��   b m   U V��
�� 
alis ` o      ���� 0 	this_item   ^  f g f r   \ g h i h I  \ c�� j��
�� .sysonfo4asfe       **** j o   \ _���� 0 	this_item  ��   i o      ���� 0 	this_info   g  k�� k Z   h � l m���� l =  h q n o n n   h o p q p 1   k o��
�� 
asdr q o   h k���� 0 	this_info   o m   o p��
�� boovfals m k   t � r r  s t s r   t  u v u l  t { w�� w n   t { x y x 1   w {��
�� 
pnam y o   t w���� 0 	this_info  ��   v l      z�� z o      ���� 0 current_name  ��   t  { | { l  � �������  ��   |  } ~ } r   � �  �  I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
cha  � o   � ����� 0 current_name  ��   � l      ��� � o      ���� 0 name_length  ��   ~  � � � l  � �������  ��   �  � � � l  � ��� ���   � $  here we trim to 31 characters    �  ��� � Z   � � � ����� � ?   � � � � � l  � � ��� � o   � ����� 0 name_length  ��   � m   � �����  � k   � � � �  � � � r   � � � � � c   � � � � � l  � � ��� � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � l  � � ��� � \   � � � � � m   � �����  � m   � ����� ��   � l  � � ��� � o   � ����� 0 current_name  ��  ��   � m   � ���
�� 
TEXT � l      ��� � o      ���� 0 new_name  ��   �  � � � r   � � � � � c   � � � � � l  � � ��� � n   � � � � � 7  � ��� � �
�� 
cha  � l  � � ��� � \   � � � � � o   � ����� 0 name_length   � m   � ����� ��   � o   � ����� 0 name_length   � l  � � ��� � o   � ����� 0 current_name  ��  ��   � m   � ���
�� 
TEXT � l      ��� � o      ���� 0 file_ext  ��   �  � � � l  � �������  ��   �  � � � r   � � � � � b   � � � � � o   � ����� 0 new_name   � o   � ����� 0 file_ext   � l      ��� � o      ���� 0 new_name  ��   �  � � � l  � �������  ��   �  � � � I   � ��� ����� 0 set_item_name   �  � � � o   � ����� 0 	this_item   �  ��� � o   � ����� 0 new_name  ��  ��   �  �� � I   � ��~ ��}�~ 0 make_new_folder   �  � � � o   � ��|�| 0 	this_item   �  ��{ � o   � ��z�z 0 current_name  �{  �}  �  ��  ��  ��  ��  ��  ��  �� 0 i   R m   ; <�y�y  S n   < B � � � m   ? A�x
�x 
nmbr � n  < ? � � � 2  = ?�w
�w 
cobj � l  < = ��v � o   < =�u�u 0 	item_list  �v  ��  ��   O  � � � l  ��t � I �s ��r
�s .sysobeepnull��� ��� long � m  �q�q �r  �t   �  � � � l     �p�o�p  �o   �  � � � i      � � � I      �n ��m�n 0 set_item_name   �  � � � o      �l�l 0 	this_item   �  ��k � o      �j�j 0 new_item_name  �k  �m   � O     � � � � k    � � �  � � � l   �i ��i   �  activate    �  � � � r     � � � c    	 � � � l    ��h � l    ��g � n     � � � m    �f
�f 
ctnr � o    �e�e 0 	this_item  �g  �h   � m    �d
�d 
ctxt � l      ��c � o      �b�b 0 parent_container_path  �c   �  ��a � Z    � � ��` � � H     � � l    ��_ � I   �^ ��]
�^ .coredoexbool        obj  � 4    �\ �
�\ 
cobj � l    ��[ � b     � � � l    ��Z � o    �Y�Y 0 parent_container_path  �Z   � o    �X�X 0 new_item_name  �[  �]  �_   � Q    � � � � � r    " � � � o    �W�W 0 new_item_name   � l      ��V � n       � � � 1    !�U
�U 
pnam � o    �T�T 0 	this_item  �V   � R      �S � 
�S .ascrerr ****      � **** � l     �R o      �Q�Q 0 error_message  �R    �P�O
�P 
errn l     �N o      �M�M 0 error_number  �N  �O   � k   * �  Z   * 9�L	 =  * -

 l  * +�K o   * +�J�J 0 error_number  �K   m   + ,�I�I�� r   0 3 m   0 1 B <This name contains improper characters, such as a colon (:).    l     �H o      �G�G 0 error_message  �H  �L  	 l  6 9 l  6 9 r   6 9 o   6 7�F�F 0 error_message   l     �E o      �D�D 0 error_message  �E   2 , "The name is more than 31 characters long."    $ the suggested name is too long     l  : :�C�C   
 beep     O  : P I  > O�B 
�B .sysodlogaskr        **** l  > ?!�A! o   > ?�@�@ 0 error_message  �A    �?"#
�? 
dtxt" o   @ A�>�> 0 new_item_name  # �=$%
�= 
btns$ J   B G&& '(' m   B C))  Cancel   ( *+* m   C D,, 
 Skip   + -�<- m   D E..  OK   �<  % �;/�:
�; 
dflt/ m   H I�9�9 �:    f   : ; 010 s   Q i232 c   Q X454 l  Q T6�86 1   Q T�7
�7 
rslt�8  5 m   T W�6
�6 
list3 J      77 898 o      �5�5 0 new_item_name  9 :�4: o      �3�3 0 button_pressed  �4  1 ;<; Z  j x=>�2�1= =  j o?@? l  j kA�0A o   j k�/�/ 0 button_pressed  �0  @ m   k nBB 
 Skip   > L   r tCC m   r s�.�.  �2  �1  < D�-D n  y �EFE I   z ��,G�+�, 0 set_item_name  G HIH o   z {�*�* 0 	this_item  I J�)J o   { |�(�( 0 new_item_name  �)  �+  F  f   y z�-  �`   � l  � �KLK k   � �MM NON l  � ��'P�'  P 
 beep   O QRQ O  � �STS I  � ��&UV
�& .sysodlogaskr        ****U m   � �WW 0 *This name is already taken, please rename.   V �%XY
�% 
dtxtX o   � ��$�$ 0 new_item_name  Y �#Z[
�# 
btnsZ J   � �\\ ]^] m   � �__  Cancel   ^ `a` m   � �bb 
 Skip   a c�"c m   � �dd  OK   �"  [ �!e� 
�! 
dflte m   � ��� �   T  f   � �R fgf s   � �hih c   � �jkj l  � �l�l 1   � ��
� 
rslt�  k m   � ��
� 
listi J      mm non o      �� 0 new_item_name  o p�p o      �� 0 button_pressed  �  g qrq Z  � �st��s =  � �uvu l  � �w�w o   � ��� 0 button_pressed  �  v m   � �xx 
 Skip   t L   � �yy m   � ���  �  �  r z�z n  � �{|{ I   � ��}�� 0 set_item_name  } ~~ o   � ��� 0 	this_item   ��� o   � ��� 0 new_item_name  �  �  |  f   � ��  L  the name already exists   �a   � m      + � ��� l     ���  �  � ��� i    ��� I      �
��	�
 0 make_new_folder  � ��� o      �� 0 	this_item  � ��� o      �� 0 old_name  �  �	  � O     ���� k    ��� ��� r    ��� c    	��� l   ��� l   ��� n    ��� m    �
� 
ctnr� o    �� 0 	this_item  �  �  � m    �
� 
ctxt� l     �� � o      ���� 0 parent_container_path  �   � ��� l   ������  ��  � ���� Z    ������� H    �� l   ���� I   �����
�� .coredoexbool        obj � 4    ���
�� 
cobj� l   ���� b    ��� l   ���� o    ���� 0 parent_container_path  ��  � o    ���� 0 old_name  ��  ��  ��  � k    S�� ��� Q    Q���� k    8�� ��� r    *��� I   (�����
�� .corecrel****      � null��  � ����
�� 
kocl� m     ��
�� 
cfol� �����
�� 
insh� c   ! $��� l  ! "���� o   ! "���� 0 parent_container_path  ��  � m   " #��
�� 
alis��  � o      ���� 0 
the_folder  � ��� I  + 2����
�� .coremoveobj        obj � o   + ,���� 0 	this_item  � �����
�� 
insh� o   - .���� 0 
the_folder  ��  � ���� r   3 8��� o   3 4���� 0 old_name  � l     ���� n      ��� 1   5 7��
�� 
pnam� o   4 5���� 0 
the_folder  ��  ��  � R      ����
�� .ascrerr ****      � ****� l     ���� o      ���� 0 error_message  ��  � �����
�� 
errn� l     ���� o      ���� 0 error_number  ��  ��  � Z   @ Q������ =  @ C��� l  @ A���� o   @ A���� 0 error_number  ��  � m   A B������� r   F K��� m   F I�� B <This name contains improper characters, such as a colon (:).   � l     ���� o      ���� 0 error_message  ��  ��  � l  N Q��� l  N Q��� r   N Q��� o   N O���� 0 error_message  � l     ���� o      ���� 0 error_message  ��  � 2 , "The name is more than 31 characters long."   � $ the suggested name is too long   � ��� l  R R������  ��  � ���� l  R R�����  � &   TO DO: TEST THIS ELSE CLAUSE!!!   ��  ��  � l  V ���� k   V ��� ��� l  V V�����  � 
 beep   � ��� O  V z��� I  Z y����
�� .sysodlogaskr        ****� m   Z ]�� 0 *This name is already taken, please rename.   � ����
�� 
dtxt� o   ` a���� 0 old_name  � ����
�� 
btns� J   d o�� ��� m   d g��  Cancel   � ��� m   g j�� 
 Skip   � ���� m   j m��  OK   ��  � �����
�� 
dflt� m   r s���� ��  �  f   V W� ��� s   { ���� c   { ���� l  { ~���� 1   { ~��
�� 
rslt��  � m   ~ ���
�� 
list� J      ��    o      ���� 0 old_name   �� o      ���� 0 button_pressed  ��  �  Z  � ����� =  � � l  � �	��	 o   � ����� 0 button_pressed  ��   m   � �

 
 Skip    L   � � m   � �����  ��  ��    r   � � I  � �����
�� .corecrel****      � null��   ��
�� 
kocl m   � ���
�� 
cfol ����
�� 
insh c   � � l  � ��� o   � ����� 0 parent_container_path  ��   m   � ���
�� 
alis��   o      ���� 0 
the_folder    I  � ���
�� .coremoveobj        obj  o   � ����� 0 	this_item   ����
�� 
insh o   � ����� 0 
the_folder  ��   �� r   � � o   � ����� 0 old_name   l     �� n       !  1   � ���
�� 
pnam! o   � ����� 0 
the_folder  ��  ��  �  the name already exists   ��  � m      +�       ��"#$%&'()*��+,����  " �������������������������� 0 set_item_name  �� 0 make_new_folder  
�� .aevtoappnull  �   � ****�� 0 source_folder  �� 0 	item_list  �� 0 	this_item  �� 0 	this_info  �� 0 current_name  �� 0 name_length  �� 0 new_name  �� 0 file_ext  ��  # �� �����-.���� 0 set_item_name  �� ��/�� /  ������ 0 	this_item  �� 0 new_item_name  ��  - �������������� 0 	this_item  �� 0 new_item_name  �� 0 parent_container_path  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  .  +������������0����~),.�}�|�{�z�yB�xW_bdx
�� 
ctnr
�� 
ctxt
�� 
cobj
�� .coredoexbool        obj 
�� 
pnam�� 0 error_message  0 �w�v�u
�w 
errn�v 0 error_number  �u  ����
� 
dtxt
�~ 
btns
�} 
dflt�| 
�{ .sysodlogaskr        ****
�z 
rslt
�y 
list�x 0 set_item_name  �� �� Ϡ�,�&E�O*㢡%/j  k 
���,FW ]X  ��  �E�Y �E�O) ������mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ Y P) a ��a a a mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ U$ �t��s�r12�q�t 0 make_new_folder  �s �p3�p 3  �o�n�o 0 	this_item  �n 0 old_name  �r  1 �m�l�k�j�i�h�g�m 0 	this_item  �l 0 old_name  �k 0 parent_container_path  �j 0 
the_folder  �i 0 error_message  �h 0 error_number  �g 0 button_pressed  2  +�f�e�d�c�b�a�`�_�^�]�\�[�Z4�Y���X�W����V�U�T�S�R

�f 
ctnr
�e 
ctxt
�d 
cobj
�c .coredoexbool        obj 
�b 
kocl
�a 
cfol
�` 
insh
�_ 
alis�^ 
�] .corecrel****      � null
�\ .coremoveobj        obj 
�[ 
pnam�Z 0 error_message  4 �Q�P�O
�Q 
errn�P 0 error_number  �O  �Y��
�X 
dtxt
�W 
btns
�V 
dflt�U 
�T .sysodlogaskr        ****
�S 
rslt
�R 
list�q �� ���,�&E�O*㢡%/j  >  *����&� 
E�O��l O���,FW X  ��  
a E�Y �E�OPY j) !a a �a a a a mva ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO*����&� 
E�O��l O���,FU% �N5�M�L67�K
�N .aevtoappnull  �   � ****5 k    88  99  ::  >;;  G<<  N==  ��J�J  �M  �L  6 �I�I 0 i  7   �H +�G�F�E�D�C�B 2�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,
�H .sysodlogaskr        ****
�G 
cwin
�F 
cfol
�E 
alis�D 0 source_folder  �C  �B  
�A 
lfiv
�@ .earslfdrlist  @     fss �? 0 	item_list  
�> 
TEXT
�= 
cobj
�< 
nmbr�; 0 	this_item  
�: .sysonfo4asfe       ****�9 0 	this_info  
�8 
asdr
�7 
pnam�6 0 current_name  
�5 
cha 
�4 .corecnte****       ****�3 0 name_length  �2 �1 �0 0 new_name  �/ 0 file_ext  �. 0 set_item_name  �- 0 make_new_folder  
�, .sysobeepnull��� ��� long�K	�j O � *�k/�,�&E�UW X  �j OPO��fl E�O��&E�O �k��-�,Ekh  ��/E` O�_ %�&E` O_ j E` O_ a ,f  �_ a ,E` O_ a -j E` O_ a  `_ [a \[Zk\Za a 2�&E` O_ [a \[Z_ m\Z_ 2�&E` O_ _ %E` O*_ _ l+ O*_ _ l+ Y hY h[OY�DOlj & U ;Snoopy:Wink:temp detached from Notes:* really temp:WBS 2.4:                 ' �+>�+ >  ?@A? �BB > S e n d A l e r t s   2 . X   I n s t a l l - D r 1 8 . d o c@ �CC t S e n d A l e r t s _ I n s t a l l a t i o n _ P a c k a g e _ I n s t r u c t i o n s _ 1 _ P r e r e q s . x l sA �DD ~ S e n d A l e r t s _ I n s t a l l a t i o n _ P a c k a g e _ I n s t r u c t i o n s _ 2 _ I n s t a l l a t i o n . x l s(�alis    �   Snoopy                     ��;]H+   q�SendAlerts_Installat#1371A4.xls                                 q�            ����                   WBS 2.4    q� ��  s@  �  ZSnoopy:Wink:temp detached from Notes:* really temp:WBS 2.4:SendAlerts_Installat#1371A4.xls  � ? S e n d A l e r t s _ I n s t a l l a t i o n _ P a c k a g e _ I n s t r u c t i o n s _ 2 _ I n s t a l l a t i o n . x l s    S n o o p y    ���  ��  ) �**E
�* 
pnam* �FF ~ S e n d A l e r t s _ I n s t a l l a t i o n _ P a c k a g e _ I n s t r u c t i o n s _ 2 _ I n s t a l l a t i o n . x l sE �)�(G
�) 
ascd
�( 
msngG �'HI
�' 
asmoH ldt     �� XI �&JK
�& 
asipJ �%L�% L  �$�#�$  �#  K �"�!M
�" 
pvis
�! boovtrueM � NO
�  
ptszN @�      O ��P
� 
asdr
� boovfalsP ��Q
� 
alis
� boovfalsQ �RS
� 
nmxtR �TT  x l sS ��U
� 
hidx
� boovfalsU ��V
� 
ispk
� boovfalsV �WX
� 
astyW 
        X �YZ
� 
asctY 
        Z �[\
� 
dnam[ �]] ~ S e n d A l e r t s _ I n s t a l l a t i o n _ P a c k a g e _ I n s t r u c t i o n s _ 2 _ I n s t a l l a t i o n . x l s\ �^_
� 
asda^Zalis    V   Snoopy                     ��;]H+   �IMicrosoft Excel                                                 �"�{J�APPLXCEL����                   Microsoft Office 2001    �I   3  DSnoopy:Applications (Mac OS 9):Microsoft Office 2001:Microsoft Excel     M i c r o s o f t   E x c e l    S n o o p y    ���      �{�7  ��  _ ��`
� 
aslk
� boovfals` ��a
� 
bzst
� boovfalsa �bc
� 
assvb      c �d�
� 
aslvd      �  �� ?+ 9 SendAlerts_Installation_Pac.xls                 ,  .xls                 ��   ascr  ��ޭ