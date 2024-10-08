FasdUAS 1.101.10   ��   ��    k             l     �� ��    G A Watch and auto-export OmniGraffle files to web-friendly versions       	  l     �� 
��   
 c ] files/folders to watch are to be dropped onto this script (saved as a Stay Open application)    	     l     �� ��    K E  if a folder is watched all OG files in the folder will be monitored         l     �� ��    a [ exported files are created alongside the originals, named with the export_format extension         l     �� ��    r l  multiple-canvas documents are exported as per the 'Entire Document' (subdirectory named after the OG file)         l     �� ��    n h  based on / hacked from the original from Greg Titus (http://forums.omnigroup.com/showthread.php?p=537)         l     �� ��      Changelog:         l     �� ��    - ' 2006-04-19 BDL	added multiple canvases         l     �� ��    ` Z 2006-04-21 BDL	removed per-canvas exporting (window flipping is too intrusive), replaced         !   l     �� "��   " e _					with export area = entire document; much mucking about with 'save in file'/folder business    !  # $ # l     �� %��   % : 4 2006-05-17 BDL	added "support" for OG package files    $  & ' & l     ������  ��   '  ( ) ( l     ������  ��   )  * + * l     �� ,��   , 9 3 a file extension which Graffle supports for export    +  - . - j     �� /�� 0 export_format   / m      0 0 	 png    .  1 2 1 l     ������  ��   2  3 4 3 l     �� 5��   5 � � amount of time to wait in between checking for file changes-- this is adaptive, and is reset to 10s when a change is detected and will ramp up to 300s    4  6 7 6 j    �� 8�� 0 	idle_time   8 m    ���� 
 7  9 : 9 j    �� ;�� 0 idle_time_min   ; m    ���� 
 :  < = < j   	 �� >�� 0 idle_time_max   > m   	 
����, =  ? @ ? j    �� A�� 0 idle_time_inc   A m    ����  @  B C B l     ������  ��   C  D E D l     �� F��   F L F list of 'aliases' (folders, files) to watch (added to via 'on open')     E  G H G j    �� I�� 0 watch_files   I J    ����   H  J K J j    �� L�� 0 watch_folders   L J    ����   K  M N M l     ������  ��   N  O P O i     Q R Q I     ������
�� .aevtoappnull  �   � ****��  ��   R k     � S S  T U T r      V W V b      X Y X b      Z [ Z b      \ ] \ b      ^ _ ^ b      ` a ` b      b c b b      d e d b      f g f m      h h  OmniGraffle Auto-Exporter    g o    ��
�� 
ret  e l 	   i�� i m     j j a [Drop files/folders to be monitored on this script and they'll be automatically exported to    ��   c o    
���� 0 export_format   a l 	   k�� k m     l l  
 versions.   ��   _ o    ��
�� 
ret  ] o    ��
�� 
ret  [ l 	   m�� m m     n n ? 9This script will stay open whilst OmniGraffle is running.   ��   Y o    ��
�� 
ret  W o      ���� 0 t   U  o p o r    5 q r q b    3 s t s b    1 u v u b    ' w x w b    % y z y b     { | { o    ���� 0 t   | m     } }  Currently monitoring     z l   $ ~�� ~ I   $�� ��
�� .corecnte****       ****  o     ���� 0 watch_files  ��  ��   x m   % & � �   file(s) and     v l  ' 0 ��� � I  ' 0�� ���
�� .corecnte****       **** � o   ' ,���� 0 watch_folders  ��  ��   t m   1 2 � �   folder(s).     r o      ���� 0 t   p  ��� � Z   6 � � ��� � � G   6 Q � � � ?   6 A � � � l  6 ? ��� � I  6 ?�� ���
�� .corecnte****       **** � o   6 ;���� 0 watch_files  ��  ��   � m   ? @����   � ?   D O � � � l  D M ��� � I  D M�� ���
�� .corecnte****       **** � o   D I���� 0 watch_folders  ��  ��   � m   M N����   � k   T � � �  � � � r   T w � � � n   T s � � � 1   o s��
�� 
bhit � l  T o ��� � I  T o�� � �
�� .sysodlogaskr        TEXT � b   T W � � � o   T U���� 0 t   � m   U V � �  Keep these?    � �� � �
�� 
btns � J   X ] � �  � � � m   X Y � � 	 Yes    �  � � � m   Y Z � �  No    �  ��� � m   Z [ � � 
 Show   ��   � �� � �
�� 
dflt � m   ` c � � 	 Yes    � �� ���
�� 
disp � m   f i��
�� stic   ��  ��   � o      ���� 0 r   �  � � � Z   x � � ����� � =  x  � � � o   x {���� 0 r   � m   { ~ � � 
 Show    � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � l  � � � � � I  � ��� ���
�� .miscmvisnull���    obj  � J   � � � �  � � � o   � ����� 0 watch_files   �  ��� � o   � ����� 0 watch_folders  ��  ��   � ' ! one hit, so they're all selected   ��   � m   � � � ��null     ߀��  {
Finder.apple Professional 4.app  ������s�͐    @   @   ��   MACS   alis    r  Danger Mouse               ��KXH+    {
Finder.app                                                       F<����        ����  	                CoreServices    �ڭ�      ��'b      {  W  V  3Danger Mouse:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    D a n g e r   M o u s e  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  ��� � Z   � � � ����� � =  � � � � � o   � ����� 0 r   � m   � � � �  No    � k   � � � �  � � � r   � � � � � J   � �����   � o      ���� 0 watch_files   �  ��� � r   � � � � � J   � �����   � o      ���� 0 watch_folders  ��  ��  ��  ��  ��   � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 t   � �� � �
�� 
btns � J   � � � �  ��� � m   � � � �  Ok   ��   � �� ���
�� 
disp � m   � ���
�� stic   ��  ��   P  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 	item_list  ��   � k     g � �  � � � l     ������  ��   �  ��� � O     g � � � k    f � �  � � � l   ������  ��   �  � � � X    d ��� � � k    _ � �  � � � l   ������  ��   �  � � � l   �� ���   � n h need to be careful of the list operations on watch_files, watch_folders - make sure only to add aliases    �  � � � l   �� ���   � g a   e.g. 'copy this_item to end of watch_files' corrupts the list on the second iteration, whereas    �  � � � l   �� ���   � D >  'copy (this_item as alias) to end of watch_files' works fine    �  � � � l   �� ���   � ] W think you can find documentation on this? hah! (the Wikipedia AppleScript page was the    �  � � � l   � ��   � ^ X  only reference I found that actually stated that 'on open' returns a list of aliases!)    �  �  � l   �~�}�~  �}     Z    ]�| =    n    	 1    �{
�{ 
kind	 o    �z�z 0 	this_item   m    

  OmniGraffle document    Z   5�y�x H    $ E   # o    !�w�w 0 watch_files   o   ! "�v�v 0 	this_item   s   ' 1 l  ' *�u c   ' * o   ' (�t�t 0 	this_item   m   ( )�s
�s 
alis�u   n        ;   / 0 o   * /�r�r 0 watch_files  �y  �x    =  8 = n   8 ; 1   9 ;�q
�q 
kind o   8 9�p�p 0 	this_item   m   ; <  folder    �o Z  @ Y �n�m H   @ H!! E  @ G"#" o   @ E�l�l 0 watch_folders  # o   E F�k�k 0 	this_item    s   K U$%$ l  K N&�j& c   K N'(' o   K L�i�i 0 	this_item  ( m   L M�h
�h 
alis�j  % n      )*)  ;   S T* o   N S�g�g 0 watch_folders  �n  �m  �o  �|   +�f+ l  ^ ^�e�d�e  �d  �f  �� 0 	this_item   � o    �c�c 0 	item_list   � ,�b, l  e e�a�`�a  �`  �b   � m      ���   � -.- l     �_�^�_  �^  . /0/ i    "121 I     �]�\�[
�] .miscidlenmbr    ��� null�\  �[  2 k    33 454 l     �Z�Y�Z  �Y  5 676 l     �X8�X  8 S M if omnigraffle's not already running, close it after exporting the new files   7 9:9 O     ;<; r    =>= E    ?@? l   	A�WA n    	BCB 1    	�V
�V 
pnamC 2   �U
�U 
prcs�W  @ m   	 
DD  OmniGraffle Professional   > o      �T�T 0 	isrunning 	isRunning< m     EE�null     ߀��  {System Events.app@  x����U �    n���x���s�͐    @   @   ��   sevs   alis    �  Danger Mouse               ��KXH+    {System Events.app                                                pY���z        ����  	                CoreServices    �ڭ�      ��9�      {  W  V  :Danger Mouse:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    D a n g e r   M o u s e  -System/Library/CoreServices/System Events.app   / ��  : FGF l   �S�R�S  �R  G HIH O    pJKJ k    oLL MNM l   �QO�Q  O %  gather list of files to update   N PQP r    RSR o    �P�P 0 watch_files  S o      �O�O 0 	file_list  Q TUT X    mV�NWV k   / hXX YZY l  / /�M[�M  [ Z T display dialog "processing " & (this_folder as string) & "|" & class of this_folder   Z \]\ l  / /�L^�L  ^ G A 'files of' ... returns 'class docf' (file?) objects, not aliases   ] _`_ r   / =aba l  / ;c�Kc 6  / ;ded n   / 2fgf 2  0 2�J
�J 
fileg o   / 0�I�I 0 this_folder  e =  3 :hih 1   4 6�H
�H 
kindi m   7 9jj  OmniGraffle document   �K  b o      �G�G 0 folder_files  ` k�Fk X   > hl�Eml k   N cnn opo r   N Sqrq l  N Qs�Ds c   N Qtut o   N O�C�C 0 	this_file  u m   O P�B
�B 
alis�D  r o      �A�A 0 	this_file  p vwv l  T T�@x�@  x A ;display dialog "f: " & this_file & "|" & class of this_file   w y�?y Z  T cz{�>�=z H   T X|| E  T W}~} o   T U�<�< 0 	file_list  ~ o   U V�;�; 0 	this_file  { s   [ _� o   [ \�:�: 0 	this_file  � n      ���  ;   ] ^� o   \ ]�9�9 0 	file_list  �>  �=  �?  �E 0 	this_file  m o   A B�8�8 0 folder_files  �F  �N 0 this_folder  W o    #�7�7 0 watch_folders  U ��6� l  n n�5�4�5  �4  �6  K m     �I ��� l  q q�3�2�3  �2  � ��� l  q q�1��1  � 8 2 ok, now have list of candidate OG files (aliases)   � ��� r   q t��� m   q r�0
�0 boovfals� o      �/�/ 0 processed_items  � ��� X   u ���.�� r   � ���� n  � ���� I   � ��-��,�- 0 process_item  � ��� o   � ��+�+ 0 	this_file  � ��*� o   � ��)�) 0 export_format  �*  �,  �  f   � �� o      �(�( 0 processed_items  �. 0 	this_file  � o   x y�'�' 0 	file_list  � ��� l  � ��&�%�&  �%  � ��� l  � ��$�#�$  �#  � ��� Z   � ����"�!� F   � ���� H   � ��� o   � �� �  0 	isrunning 	isRunning� o   � ��� 0 processed_items  � l  � ���� O   � ���� k   � ��� ��� l  � ����  � v p close the app (if there are no open files, which there shouldn't be, as OG wasn't running before we started it)   � ��� l  � ����  � > 8display dialog "ndocs: " & (count (document's modified))   � ��� Z   � ������ =  � ���� l  � ���� I  � ����
� .corecnte****       ****� l  � ���� n  � ���� 1   � ��
� 
imod� m   � ��
� 
docu�  �  �  � m   � ���  � I  � ����
� .aevtquitnull���    obj �  �  �  �  �  � m   � ����null     ߀��   OmniGraffle Professional 4.app   ������s�͐    @   @   ��   OGfl   alis    �  Danger Mouse               ��KXH+     OmniGraffle Professional 4.app                                  54�8:�        ����  	                Applications    �ڭ�      �8�P         8Danger Mouse:Applications:OmniGraffle Professional 4.app  >  O m n i G r a f f l e   P r o f e s s i o n a l   4 . a p p    D a n g e r   M o u s e  +Applications/OmniGraffle Professional 4.app   / ��  � + % will have started up OG, so close it   �"  �!  � ��� l  � ����  �  � ��� l  � ����  � P J if files are being changed drop back to a fast idle time, otherwise decay   � ��� Z   ������ o   � ��� 0 processed_items  � r   � ���� o   � ��
�
 0 idle_time_min  � o      �	�	 0 	idle_time  �  � k   ��� ��� r   � ���� [   � ���� o   � ��� 0 	idle_time  � o   � ��� 0 idle_time_inc  � o      �� 0 	idle_time  � ��� Z   ������ ?   � ���� o   � ��� 0 	idle_time  � o   � ��� 0 idle_time_max  � r   ���� o   � �� �  0 idle_time_max  � o      ���� 0 	idle_time  �  �  �  � ��� l ������  ��  � ��� L  �� o  ���� 0 	idle_time  � ���� l ������  ��  ��  0 ��� l     ������  ��  � ��� i   # &��� I      ������� 0 process_item  � ��� o      ���� 0 source_file  � ���� o      ���� 0 export_format  ��  ��  � k     v�� ��� l     ������  ��  � ��� r     ��� m     ��
�� boovfals� o      ���� 0 processed_items  � ��� l   ������  ��  � ��� l   �����  � [ U file extension must be added to the destination filename, and must match the export    � ��� l   �����  � D >  type (i.e. 'save doc as "png" in file "figure.graffle.png"')   � ��� l   �����  � V P Note when saving a multi-page document, the destination filename will have the    � ��� l   �����  � ` Z   export type extension removed, but *will not* have the .graffle extension removed. The    � ��� l   �����  � U O   result will  be created as the directory to hold the exported canvas files.    � ��� l   �����  � m g   e.g. if destination = figure.graffle.png => OG will try to create figure.graffle/, but will fail as    � � � l   ����   - '   this is the name of the source file!      l   ����   j d   OG strips the .graffle extension for the directory name automatically via the GUI, but not via AS     l   ����   n h simple solution: double up the extension (figure.graffle.png.png => figure.graffle.png/...) when saving    	 l   ��
��  
    (see export_item())   	  l   ������  ��    l   ����   h b ok, now to really complicate matters: some OG files are folders (packages) i.e. file.graffle may      l   ����   - '   actually be ":path:to:file.graffle:"     l   ����   j d - this stuffs up the export naming, so need to chomp any trailing path separators for package files     l   ����   e _ note that there's no point trying to do chomp the alias, as AS will gleefully put back the ":"     l   ������  ��    Z    5�� =    !  n    "#" 1   	 ��
�� 
ispk# l   	$��$ I   	��%��
�� .sysonfo4asfe        file% o    ���� 0 source_file  ��  ��  ! m    ��
�� boovtrue k    )&& '(' l   ��)��  ) "  package, chomp trailing ':'   ( *+* r    !,-, c    ./. l   0��0 n    121 7  ��34
�� 
cha 3 m    ���� 4 m    ������2 l   5��5 c    676 o    ���� 0 source_file  7 m    ��
�� 
TEXT��  ��  / m    ��
�� 
TEXT- o      ���� 0 new_name  + 8��8 r   " )9:9 b   " ';<; b   " %=>= o   " #���� 0 new_name  > m   # $??  .   < o   % &���� 0 export_format  : o      ���� 0 new_name  ��  ��   k   , 5@@ ABA l  , ,��C��  C   plain file   B D��D r   , 5EFE b   , 3GHG b   , 1IJI l  , /K��K c   , /LML o   , -���� 0 source_file  M m   - .��
�� 
TEXT��  J m   / 0NN  .   H o   1 2���� 0 export_format  F o      ���� 0 new_name  ��   OPO l  6 6������  ��  P QRQ l  6 6��S��  S 8 2 test if the target (new_name) needs to be updated   R TUT O   6 \VWV k   : [XX YZY l  : :��[��  [ ' ! if doesn't exist, need to update   Z \]\ r   : E^_^ H   : C`` l  : Ba��a I  : B��b��
�� .coredoexbool        obj b 4   : >��c
�� 
cobjc o   < =���� 0 new_name  ��  ��  _ o      ���� 0 need_update  ] ded l  F F������  ��  e f��f Z   F [gh����g H   F Hii o   F G���� 0 need_update  h l  K Wjkj k   K Wll mnm l  K K��o��  o O Idisplay dialog "target mod date: " & (modification date of item new_name)   n p��p r   K Wqrq ?   K Usts n   K Nuvu 1   L N��
�� 
asmov o   K L���� 0 source_file  t n   N Twxw 1   R T��
�� 
asmox 4   N R��y
�� 
cobjy o   P Q���� 0 new_name  r o      ���� 0 need_update  ��  k   exists, but is it stale?   ��  ��  ��  W m   6 7 �U z{z l  ] ]������  ��  { |}| Z   ] q~����~ o   ] ^���� 0 need_update   k   a m�� ��� n  a i��� I   b i������� 0 export_item  � ��� o   b c���� 0 source_file  � ��� o   c d���� 0 new_name  � ���� o   d e���� 0 export_format  ��  ��  �  f   a b� ���� r   j m��� m   j k��
�� boovtrue� o      ���� 0 processed_items  ��  ��  ��  } ��� l  r r������  ��  � ��� L   r t�� o   r s���� 0 processed_items  � ���� l  u u������  ��  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � ( " this sub-routine does the export    � ���� i   ' *��� I      ������� 0 export_item  � ��� o      ���� 0 source_file  � ��� o      ���� 0 new_name  � ���� o      ���� 0 export_format  ��  ��  � k     ��� ��� l     ������  ��  � ��� t     ���� O    ���� k    ��� ��� r    ��� n    ��� 1   	 ��
�� 
OGea� 1    	��
�� 
OGEX� o      �� 0 oldareatype oldAreaType� ��� l   �~�}�~  �}  � ��� l   �|��|  � - ' open the file if it isn't already open   � ��� l   �{��{  � Q K 1. convert the source_file alias to a POSIX path ("/path/to/file.graffle")   � ��� l   �z��z  � 9 3    - OG's 'document path' property is a POSIX path   � ��� l   �y��y  � 8 2 2. see if a file with that path is currently open   � ��� l   �x��x  �   3. if not, open it   � ��� l   �w��w  � 0 * 4. get a reference to the document object   � ��� r    ��� l   ��v� n    ��� 1    �u
�u 
psxp� l   ��t� o    �s�s 0 source_file  �t  �v  � l     ��r� o      �q�q 0 source_item  �r  � ��� l   �p�o�p  �o  � ��� l   �n��n  � [ U OG 4.1.2 returns 'path of...' WITHOUT the trailing slash for package files, need to    � ��� l   �m��m  � > 8 chomp before we compare ('documents whose path is ...')   � ��� Z    >���l�k� F    (��� l   ��j� =   ��� n    ��� 1    �i
�i 
ispk� l   ��h� I   �g��f
�g .sysonfo4asfe        file� o    �e�e 0 source_file  �f  �h  � m    �d
�d boovtrue�j  � l    &��c� =    &��� n     $��� 4   ! $�b�
�b 
cha � m   " #�a�a��� o     !�`�` 0 source_item  � m   $ %��  /   �c  � k   + :�� ��� l  + +�_��_  � "  package, chomp trailing '/'   � ��^� r   + :��� c   + 8��� l  + 6��]� n   + 6��� 7 , 6�\��
�\ 
cha � m   0 2�[�[ � m   3 5�Z�Z��� o   + ,�Y�Y 0 source_item  �]  � m   6 7�X
�X 
TEXT� o      �W�W 0 source_item  �^  �l  �k  � ��� l  ? ?�V�U�V  �U  � � � r   ? S =  ? Q l  ? O�T I  ? O�S�R
�S .corecnte****       **** l  ? K�Q 6  ? K	 2  ? B�P
�P 
docu	 =  C J

 1   D F�O
�O 
ppth o   G I�N�N 0 source_item  �Q  �R  �T   m   O P�M�M   o      �L�L 0 
needtoopen 
needToOpen   Z   T a�K�J o   T U�I�I 0 
needtoopen 
needToOpen I  X ]�H�G
�H .aevtodocnull  �    alis o   X Y�F�F 0 source_file  �G  �K  �J    l  b b�E�D�E  �D    r   b u n   b s 4  n s�C
�C 
cobj m   q r�B�B  l  b n�A 6  b n 2  b e�@
�@ 
docu =  f m 1   g i�?
�? 
ppth o   j l�>�> 0 source_item  �A   o      �=�= 0 thedocument theDocument   l  v v�<�;�<  �;    !"! l  v v�:#�:  #   single or multipage?   " $%$ Z   v �&'�9(& =   v �)*) l  v +�8+ I  v �7,�6
�7 .corecnte****       ****, n   v {-.- 2  w {�5
�5 
OGWS. o   v w�4�4 0 thedocument theDocument�6  �8  * m    ��3�3 ' r   � �/0/ m   � ��2
�2 OGeaOGe10 n      121 1   � ��1
�1 
OGea2 1   � ��0
�0 
OGEX�9  ( k   � �33 454 r   � �676 m   � ��/
�/ OGeaOGe47 n      898 1   � ��.
�. 
OGea9 1   � ��-
�- 
OGEX5 :;: l  � ��,<�,  < &   double up target directory name   ; =�+= r   � �>?> b   � �@A@ b   � �BCB o   � ��*�* 0 new_name  C m   � �DD  .   A o   � ��)�) 0 export_format  ? o      �(�( 0 new_name  �+  % EFE l  � ��'�&�'  �&  F GHG I  � ��%IJ
�% .coresavenull���    obj I o   � ��$�$ 0 thedocument theDocumentJ �#KL
�# 
fltpK o   � ��"�" 0 export_format  L �!M� 
�! 
kfilM 4   � ��N
� 
fileN o   � ��� 0 new_name  �   H OPO l  � ����  �  P QRQ l  � ��S�  S 6 0 if the file wasn't already open, close it again   R TUT Z   � �VW��V o   � ��� 0 
needtoopen 
needToOpenW I  � ��X�
� .coreclosnull���    obj X o   � ��� 0 thedocument theDocument�  �  �  U YZY l  � ����  �  Z [�[ r   � �\]\ o   � ��� 0 oldareatype oldAreaType] n      ^_^ 1   � ��
� 
OGea_ 1   � ��
� 
OGEX�  � m    �� m     ���� `�` l  � ����  �  �  ��       �
a 0�	���bcdefgh�
  a ������ ������������� 0 export_format  � 0 	idle_time  � 0 idle_time_min  � 0 idle_time_max  � 0 idle_time_inc  �  0 watch_files  �� 0 watch_folders  
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis
�� .miscidlenmbr    ��� null�� 0 process_item  �� 0 export_item  �	 
� 
�,� b ������  ��  c ������  ��  d �� R����ij��
�� .aevtoappnull  �   � ****��  ��  i  j  h�� j l n�� }�� � ��� ��� � � ��� ������������� � ����� � ���
�� 
ret �� 0 t  
�� .corecnte****       ****
�� 
bool
�� 
btns
�� 
dflt
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 r  
�� .miscactvnull��� ��� obj 
�� .miscmvisnull���    obj �� �� ���%�%b   %�%�%�%�%�%E�O��%b  j %�%b  j %�%E�Ob  j j
 b  j j�& t��%����mva a a a a  a ,E` O_ a   "a  *j Ob  b  lvj UY hO_ a   jvEc  OjvEc  Y hY ��a kva a a  e �� �����kl��
�� .aevtodocnull  �    alis�� 0 	item_list  ��  k ������ 0 	item_list  �� 0 	this_item  l  ���������
��
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
kind
�� 
alis�� h� d _�[��l kh ��,�  b  � ��&b  6GY hY '��,�  b  � ��&b  6GY hY hOP[OY��OPUf ��2����mn��
�� .miscidlenmbr    ��� null��  ��  m �������������� 0 	isrunning 	isRunning�� 0 	file_list  �� 0 this_folder  �� 0 folder_files  �� 0 	this_file  �� 0 processed_items  n E����D ���������o��j�������������
�� 
prcs
�� 
pnam
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
fileo  
�� 
kind
�� 
alis�� 0 process_item  
�� 
bool
�� 
docu
�� 
imod
�� .aevtquitnull���    obj ��� *�-�,�E�UO� ^b  E�O Qb  [��l kh ��-�[�,\Z�81E�O )�[��l kh ��&E�O�� 	��6GY h[OY��[OY��OPUOfE�O !�[��l kh )�b   l+ E�[OY��O�	 ��& #� a a ,j j  
*j Y hUY hO� b  Ec  Y 1b  b  Ec  Ob  b   b  Ec  Y hOb  OPg �������pq���� 0 process_item  �� ��r�� r  ������ 0 source_file  �� 0 export_format  ��  p ������������ 0 source_file  �� 0 export_format  �� 0 processed_items  �� 0 new_name  �� 0 need_update  q ����������?N ���������
�� .sysonfo4asfe        file
�� 
ispk
�� 
TEXT
�� 
cha ����
�� 
cobj
�� .coredoexbool        obj 
�� 
asmo�� 0 export_item  �� wfE�O�j  �,e  ��&[�\[Zk\Z�2�&E�O��%�%E�Y ��&�%�%E�O� #*�/j 	E�O� ��,*�/�,E�Y hUO� )���m+ OeE�Y hO�OPh �������st���� 0 export_item  �� ��u�� u  �������� 0 source_file  �� 0 new_name  �� 0 export_format  ��  s ���������������� 0 source_file  �� 0 new_name  �� 0 export_format  �� 0 oldareatype oldAreaType�� 0 source_item  �� 0 
needtoopen 
needToOpen�� 0 thedocument theDocumentt ������������������������o��������������D���������������
�� 
OGEX
�� 
OGea
�� 
psxp
�� .sysonfo4asfe        file
�� 
ispk
�� 
cha 
�� 
bool����
�� 
TEXT
�� 
docu
�� 
ppth
�� .corecnte****       ****
�� .aevtodocnull  �    alis
�� 
cobj
�� 
OGWS
�� OGeaOGe1
�� OGeaOGe4
�� 
fltp
�� 
kfil
�� 
file�� 
�� .coresavenull���    obj 
�� .coreclosnull���    obj �� ��n� �*�,�,E�O��,E�O�j �,e 	 
��i/� �& �[�\[Zk\Z�2�&E�Y hO*�-�[�,\Z�81j j E�O� 
�j Y hO*�-�[�,\Z�81a k/E�O�a -j k  a *�,�,FY a *�,�,FO�a %�%E�O�a �a *a �/a  O� 
�j Y hO�*�,�,FUoOP ascr  ��ޭ