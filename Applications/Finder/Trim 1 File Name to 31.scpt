FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��Trim Folder NamesThis script is designed to trim the name of specific folders in the front window of the desktop. If no folder windows are open, the script will effect folders on the desktop.Copyright � 2001 Apple Computer, Inc.You may incorporate this Apple sample code into your program(s) withoutrestriction.  This Apple sample code has been provided "AS IS" and theresponsibility for its operation is yours.  You are not permitted toredistribute this Apple sample code as "Apple sample code" after havingmade changes.  If you're going to redistribute the code, we requirethat you make it clear that the code was descended from Apple samplecode, but that you've made changes.       	  l     ������  ��   	  
  
 l     �� ��    ? 9 The following line is disabled due to a Menu Manager bug         l     �� ��    n hset the source_folder to (choose folder with prompt "Pick the folder containing the folders to rename:")         l     ������  ��        l     ������  ��        l     ������  ��        l     ��  Q          O       r        c       !   1    
��
�� 
sele ! m   
 ��
�� 
alis  o      ���� 0 	this_item    m     " "�null     ߀�� 4G
Finder.app��0D " � �      `��������5|t��ې    �5f          MACS   alis    `  Kermit                     ���]H+   4G
Finder.app                                                      W��jJv        ����                  CoreServices    ��(�      �j��     4G 1N 1M  -Kermit:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    K e r m i t  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��    l    # $ # k     % %  & ' & I   �� (��
�� .sysodlogaskr        **** ( m     ) )  Error:  No open folder.   ��   '  *�� * l   �� +��   + > 8set the source_folder to path to desktop folder as alias   ��   $   no open folder windows   ��     , - , l     ������  ��   -  . / . l   & 0�� 0 r    & 1 2 1 I   $�� 3��
�� .sysonfo4asfe       **** 3 o     ���� 0 	this_item  ��   2 o      ���� 0 	this_info  ��   /  4 5 4 l     ������  ��   5  6 7 6 l  ' � 8�� 8 Z   ' � 9 :���� 9 =  ' , ; < ; n   ' * = > = 1   ( *��
�� 
asdr > o   ' (���� 0 	this_info   < m   * +��
�� boovfals : k   / � ? ?  @ A @ r   / 4 B C B l  / 2 D�� D n   / 2 E F E 1   0 2��
�� 
pnam F o   / 0���� 0 	this_info  ��   C l      G�� G o      ���� 0 current_name  ��   A  H I H l  5 5������  ��   I  J K J r   5 > L M L I  5 <�� N��
�� .corecnte****       **** N n   5 8 O P O 2  6 8��
�� 
cha  P o   5 6���� 0 current_name  ��   M l      Q�� Q o      ���� 0 name_length  ��   K  R S R l  ? ?������  ��   S  T U T l  ? ?�� V��   V $  here we trim to 31 characters    U  W�� W Z   ? � X Y���� X ?   ? D Z [ Z l  ? @ \�� \ o   ? @���� 0 name_length  ��   [ m   @ C����  Y k   G � ] ]  ^ _ ^ r   G ` ` a ` c   G \ b c b l  G X d�� d n   G X e f e 7  H X�� g h
�� 
cha  g m   L N����  h l  O W i�� i \   O W j k j m   P S����  k m   S V���� ��   f l  G H l�� l o   G H���� 0 current_name  ��  ��   c m   X [��
�� 
TEXT a l      m�� m o      ���� 0 new_name  ��   _  n o n r   a v p q p c   a r r s r l  a n t�� t n   a n u v u 7  b n�� w x
�� 
cha  w l  f j y�� y \   f j z { z o   g h���� 0 name_length   { m   h i���� ��   x o   k m���� 0 name_length   v l  a b |�� | o   a b���� 0 current_name  ��  ��   s m   n q��
�� 
TEXT q l      }�� } o      ���� 0 file_ext  ��   o  ~  ~ l  w w������  ��     � � � r   w � � � � b   w ~ � � � o   w z���� 0 new_name   � o   z }���� 0 file_ext   � l      ��� � o      ���� 0 new_name  ��   �  � � � l  � �������  ��   �  � � � I   � ��� ����� 0 set_item_name   �  � � � o   � ����� 0 	this_item   �  ��� � o   � ����� 0 new_name  ��  ��   �  ��� � I   � ��� ����� 0 make_new_folder   �  � � � o   � ����� 0 	this_item   �  ��� � o   � ����� 0 current_name  ��  ��  ��  ��  ��  ��  ��  ��  ��   7  � � � l     ������  ��   �  � � � l  � � ��� � I  � ��� ���
�� .sysobeepnull��� ��� long � m   � ����� ��  ��   �  � � � l     ������  ��   �  � � � i      � � � I      �� ����� 0 set_item_name   �  � � � o      ���� 0 	this_item   �  ��� � o      ���� 0 new_item_name  ��  ��   � O     � � � � k    � � �  � � � l   �� ���   �  activate    �  � � � r     � � � c    	 � � � l    ��� � l    ��� � n     � � � m    ��
�� 
ctnr � o    ���� 0 	this_item  ��  ��   � m    ��
�� 
ctxt � l      ��� � o      ���� 0 parent_container_path  ��   �  ��� � Z    � � ��� � � H     � � l    ��� � I   �� ���
�� .coredoexbool        obj  � 4    �� �
�� 
cobj � l    �� � b     � � � l    ��~ � o    �}�} 0 parent_container_path  �~   � o    �|�| 0 new_item_name  �  ��  ��   � Q    � � � � � r    " � � � o    �{�{ 0 new_item_name   � l      ��z � n       � � � 1    !�y
�y 
pnam � o    �x�x 0 	this_item  �z   � R      �w � �
�w .ascrerr ****      � **** � l      ��v � o      �u�u 0 error_message  �v   � �t ��s
�t 
errn � l      ��r � o      �q�q 0 error_number  �r  �s   � k   * � � �  � � � Z   * 9 � ��p � � =  * - � � � l  * + ��o � o   * +�n�n 0 error_number  �o   � m   + ,�m�m�� � r   0 3 � � � m   0 1 � � B <This name contains improper characters, such as a colon (:).    � l      ��l � o      �k�k 0 error_message  �l  �p   � l  6 9 � � � l  6 9 � � � r   6 9 � � � o   6 7�j�j 0 error_message   � l      ��i � o      �h�h 0 error_message  �i   � 2 , "The name is more than 31 characters long."    � $ the suggested name is too long    �  � � � l  : :�g ��g   � 
 beep    �  � � � O  : P � � � I  > O�f � �
�f .sysodlogaskr        **** � l  > ? ��e � o   > ?�d�d 0 error_message  �e   � �c � �
�c 
dtxt � o   @ A�b�b 0 new_item_name   � �a � �
�a 
btns � J   B G � �  � � � m   B C � �  Cancel    �  � � � m   C D � � 
 Skip    �  ��` � m   D E � �  OK   �`   � �_ ��^
�_ 
dflt � m   H I�]�] �^   �  f   : ; �  � � � s   Q i � � � c   Q X � � � l  Q T �\  1   Q T�[
�[ 
rslt�\   � m   T W�Z
�Z 
list � J        o      �Y�Y 0 new_item_name   �X o      �W�W 0 button_pressed  �X   �  Z  j x�V�U =  j o	
	 l  j k�T o   j k�S�S 0 button_pressed  �T  
 m   k n 
 Skip    L   r t m   r s�R�R  �V  �U   �Q n  y � I   z ��P�O�P 0 set_item_name    o   z {�N�N 0 	this_item   �M o   { |�L�L 0 new_item_name  �M  �O    f   y z�Q  ��   � l  � � k   � �  l  � ��K�K   
 beep     O  � � I  � ��J 
�J .sysodlogaskr        **** m   � �!! 0 *This name is already taken, please rename.     �I"#
�I 
dtxt" o   � ��H�H 0 new_item_name  # �G$%
�G 
btns$ J   � �&& '(' m   � �))  Cancel   ( *+* m   � �,, 
 Skip   + -�F- m   � �..  OK   �F  % �E/�D
�E 
dflt/ m   � ��C�C �D    f   � � 010 s   � �232 c   � �454 l  � �6�B6 1   � ��A
�A 
rslt�B  5 m   � ��@
�@ 
list3 J      77 898 o      �?�? 0 new_item_name  9 :�>: o      �=�= 0 button_pressed  �>  1 ;<; Z  � �=>�<�;= =  � �?@? l  � �A�:A o   � ��9�9 0 button_pressed  �:  @ m   � �BB 
 Skip   > L   � �CC m   � ��8�8  �<  �;  < D�7D n  � �EFE I   � ��6G�5�6 0 set_item_name  G HIH o   � ��4�4 0 	this_item  I J�3J o   � ��2�2 0 new_item_name  �3  �5  F  f   � ��7    the name already exists   ��   � m      " � KLK l     �1�0�1  �0  L M�/M i    NON I      �.P�-�. 0 make_new_folder  P QRQ o      �,�, 0 	this_item  R S�+S o      �*�* 0 old_name  �+  �-  O O     �TUT k    �VV WXW r    YZY c    	[\[ l   ]�)] l   ^�(^ n    _`_ m    �'
�' 
ctnr` o    �&�& 0 	this_item  �(  �)  \ m    �%
�% 
ctxtZ l     a�$a o      �#�# 0 parent_container_path  �$  X bcb l   �"�!�"  �!  c d� d Z    �ef�ge H    hh l   i�i I   �j�
� .coredoexbool        obj j 4    �k
� 
cobjk l   l�l b    mnm l   o�o o    �� 0 parent_container_path  �  n o    �� 0 old_name  �  �  �  f k    Spp qrq Q    Qstus k    8vv wxw r    *yzy I   (��{
� .corecrel****      � null�  { �|}
� 
kocl| m     �
� 
cfol} �~�
� 
insh~ c   ! $� l  ! "��� o   ! "�� 0 parent_container_path  �  � m   " #�
� 
alis�  z o      �� 0 
the_folder  x ��� I  + 2���
� .coremoveobj        obj � o   + ,�� 0 	this_item  � �
��	
�
 
insh� o   - .�� 0 
the_folder  �	  � ��� r   3 8��� o   3 4�� 0 old_name  � l     ��� n      ��� 1   5 7�
� 
pnam� o   4 5�� 0 
the_folder  �  �  t R      ���
� .ascrerr ****      � ****� l     ��� o      � �  0 error_message  �  � �����
�� 
errn� l     ���� o      ���� 0 error_number  ��  ��  u Z   @ Q������ =  @ C��� l  @ A���� o   @ A���� 0 error_number  ��  � m   A B������� r   F K��� m   F I�� B <This name contains improper characters, such as a colon (:).   � l     ���� o      ���� 0 error_message  ��  ��  � l  N Q��� l  N Q��� r   N Q��� o   N O���� 0 error_message  � l     ���� o      ���� 0 error_message  ��  � 2 , "The name is more than 31 characters long."   � $ the suggested name is too long   r ��� l  R R������  ��  � ���� l  R R�����  � &   TO DO: TEST THIS ELSE CLAUSE!!!   ��  �  g l  V ���� k   V ��� ��� l  V V�����  � 
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
list� J      �� ��� o      ���� 0 old_name  � ���� o      ���� 0 button_pressed  ��  � ��� Z  � �������� =  � ���� l  � ����� o   � ����� 0 button_pressed  ��  � m   � ��� 
 Skip   � L   � ��� m   � �����  ��  ��  � ��� r   � ���� I  � ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   � ���
�� 
cfol� �����
�� 
insh� c   � ���� l  � ����� o   � ����� 0 parent_container_path  ��  � m   � ���
�� 
alis��  � o      ���� 0 
the_folder  � ��� I  � �����
�� .coremoveobj        obj � o   � ����� 0 	this_item  � �����
�� 
insh� o   � ����� 0 
the_folder  ��  � ���� r   � ���� o   � ����� 0 old_name  � l     ���� n      ��� 1   � ���
�� 
pnam� o   � ����� 0 
the_folder  ��  ��  �  the name already exists   �   U m      "�/       ���������������������  � �������������������������� 0 set_item_name  �� 0 make_new_folder  
�� .aevtoappnull  �   � ****�� 0 	this_item  �� 0 	this_info  �� 0 current_name  �� 0 name_length  �� 0 new_name  �� 0 file_ext  ��  ��  ��  � �� ����������� 0 set_item_name  �� ����� �  ������ 0 	this_item  �� 0 new_item_name  ��  � �������������� 0 	this_item  �� 0 new_item_name  �� 0 parent_container_path  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  �  "��������������� ����� � � �������������!),.B
�� 
ctnr
�� 
ctxt
�� 
cobj
�� .coredoexbool        obj 
�� 
pnam�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ����
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        ****
�� 
rslt
�� 
list�� 0 set_item_name  �� �� Ϡ�,�&E�O*㢡%/j  k 
���,FW ]X  ��  �E�Y �E�O) ������mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ Y P) a ��a a a mv�ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO)��l+ U� ��O���������� 0 make_new_folder  �� ����� �  ������ 0 	this_item  �� 0 old_name  ��  � ���������������� 0 	this_item  �� 0 old_name  �� 0 parent_container_path  �� 0 
the_folder  �� 0 error_message  �� 0 error_number  �� 0 button_pressed  �  "��������������������~�}�|��{���z�y����x�w�v�u�t�
�� 
ctnr
�� 
ctxt
�� 
cobj
�� .coredoexbool        obj 
�� 
kocl
�� 
cfol
�� 
insh
�� 
alis�� 
� .corecrel****      � null
�~ .coremoveobj        obj 
�} 
pnam�| 0 error_message  � �s�r�q
�s 
errn�r 0 error_number  �q  �{��
�z 
dtxt
�y 
btns
�x 
dflt�w 
�v .sysodlogaskr        ****
�u 
rslt
�t 
list�� �� ���,�&E�O*㢡%/j  >  *����&� 
E�O��l O���,FW X  ��  
a E�Y �E�OPY j) !a a �a a a a mva ma  UO_ a &E[�k/EQ�Z[�l/EQ�ZO�a   jY hO*����&� 
E�O��l O���,FU� �p��o�n���m
�p .aevtoappnull  �   � ****� k     �      .  6  ��l�l  �o  �n  �  �  "�k�j�i�h�g )�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V
�k 
sele
�j 
alis�i 0 	this_item  �h  �g  
�f .sysodlogaskr        ****
�e .sysonfo4asfe       ****�d 0 	this_info  
�c 
asdr
�b 
pnam�a 0 current_name  
�` 
cha 
�_ .corecnte****       ****�^ 0 name_length  �] �\ 
�[ 
TEXT�Z 0 new_name  �Y 0 file_ext  �X 0 set_item_name  �W 0 make_new_folder  
�V .sysobeepnull��� ��� long�m � � 	*�,�&E�UW X  �j OPO�j E�O��,f  n��,E�O��-j E�O�a  R�[�\[Zk\Za a 2a &E` O�[�\[Z�m\Z�2a &E` O_ _ %E` O*�_ l+ O*��l+ Y hY hOlj �&alis    "   Kermit                     ���]H+   ��OTV-CR-xxx WBS 3.3.34#EEE3C.doc                                 �<��9W8TNMSWD����                  WBS 3.3.34 (DCT A17)    ��(�      ��     �� =� � � 5 �� H�  lKermit:Users:bryan:Wink:Projects:1 Current Projects:DCT:WBS 3.3.34 (DCT A17):OTV-CR-xxx WBS 3.3.34#EEE3C.doc  B   O T V - C R - x x x   W B S   3 . 3 . 3 4   0 . 2   C R . d o c    K e r m i t  fUsers/bryan/Wink/Projects/1 Current Projects/DCT/WBS 3.3.34 (DCT A17)/OTV-CR-xxx WBS 3.3.34 0.2 CR.doc  / ��  � �U�
�U 
pnam� � @ O T V - C R - x x x   W B S   3 . 3 . 3 4   0 . 2   C R . d o c �T
�T 
ascd ldt     ��9 �S	
�S 
asmo ldt     �t�	 �R

�R 
asip
 �Q�Q   �P�O�P  �O   �N�M
�N 
pvis
�M boovtrue �L
�L 
ptsz A8�     �K�J
�K 
asdr
�J boovfals �I�H
�I 
alis
�H boovfals �G
�G 
nmxt �  d o c �F�E
�F 
hidx
�E boovfals �D�C
�D 
ispk
�C boovfals �B
�B 
asty 
 W8TN    �A
�A 
asct 
 MSWD    �@
�@ 
dnam � @ O T V - C R - x x x   W B S   3 . 3 . 3 4   0 . 2   C R . d o c �?
�? 
asda~alis    z   Kermit                     ���]H+   Microsoft Word                                                  ,���� APPLMSWD����                  Microsoft Office X    ��(�      ��p      +P  5Kermit:Applications:Microsoft Office X:Microsoft Word     M i c r o s o f t   W o r d    K e r m i t  .Applications/Microsoft Office X/Microsoft Word  / ��   �>�= 
�> 
aslk
�= boovfals  �<�;!
�< 
bzst
�; boovfals! �:"#
�: 
assv"      # �9$�8
�9 
aslv$      �8  ��  � 9 OTV-CR-xxx WBS 3.3.34 0.2 C.doc                  �  .doc                  ��  ��  ��   ascr  ��ޭ