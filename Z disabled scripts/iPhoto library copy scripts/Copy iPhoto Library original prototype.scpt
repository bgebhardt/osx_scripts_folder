FasdUAS 1.101.10   ��   ��    k             l     �� ��    T N A script to copy the iPhoto library and change ownership to the current user.       	  l     ������  ��   	  
  
 l     �� ��      globals         l     ��  r         m         folder     o      ���� 0 
choosetype 
chooseType��        l     ������  ��        l   	 ��  I   	�� ��
�� .sysodlogaskr        TEXT  m       � �You are about to copy the iPhoto library.  This may take some time.  Hit ok to continue.  If it fails you will find the old iPhoto library in the trash.   ��  ��        l     ������  ��        l     ������  ��        l     ��  ��       choose the source folder      ! " ! l  
  #�� # r   
  $ % $ l  
  &�� & I  
 ���� '
�� .sysostflalis    ��� null��   ' �� (��
�� 
prmp ( m     ) ) ' !Choose the source iPhoto folder :   ��  ��   % o      ���� 0 
src_folder  ��   "  * + * l     ������  ��   +  , - , l     �� .��   .   choose the dest folder    -  / 0 / l    1�� 1 r     2 3 2 l    4�� 4 I   ���� 5
�� .sysostflalis    ��� null��   5 �� 6��
�� 
prmp 6 m     7 7 3 -Choose the iPhoto folder to apply changes to:   ��  ��   3 o      ���� 0 dest_folder  ��   0  8 9 8 l     �� :��   : ( " get the original dest folder path    9  ; < ; l   # =�� = r    # > ? > n    ! @ A @ 1    !��
�� 
psxp A o    ���� 0 dest_folder   ? o      ���� 0 	dest_path  ��   <  B C B l     ������  ��   C  D E D l     �� F��   F   back up dest_folder    E  G H G l  $ > I�� I O   $ > J K J k   ( = L L  M N M r   ( 1 O P O l  ( - Q�� Q b   ( - R S R n   ( + T U T 1   ) +��
�� 
pnam U o   ( )���� 0 dest_folder   S m   + , V V 
  old   ��   P n       W X W 1   . 0��
�� 
pnam X o   - .���� 0 dest_folder   N  Y�� Y I  2 =�� Z [
�� .coremoveobj        obj  Z o   2 3���� 0 dest_folder   [ �� \��
�� 
insh \ 1   4 9��
�� 
trsh��  ��   K m   $ % ] ]�null     ߀��  �
Finder.app-Ȑ�����  (���)Q �    ���(����'͐    �ɉ�(����E   MACS   alis    `  Kermit                     �� H+    �
Finder.app                                                       B~����        ����  	                CoreServices    �1�      ��6n      �  �  �  -Kermit:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    K e r m i t  &System/Library/CoreServices/Finder.app  / ��  ��   H  ^ _ ^ l     ������  ��   _  ` a ` l     �� b��   b   set up the copy cmd    a  c d c l     �� e��   e   for test only    d  f g f l     �� h��   h H Bset copy_script to "ditto /Users/lindsey/Sites/index.html ~/temp/"    g  i j i l  ? X k�� k r   ? X l m l b   ? T n o n b   ? N p q p b   ? J r s r m   ? B t t  ditto     s n   B I u v u l 	 E I w�� w 1   E I��
�� 
strq��   v n   B E x y x 1   C E��
�� 
psxp y o   B C���� 0 
src_folder   q m   J M z z       o n   N S { | { l 	 O S }�� } 1   O S��
�� 
strq��   | o   N O���� 0 	dest_path   m o      ���� 0 copy_script  ��   j  ~  ~ l     ������  ��     � � � l     �� ���   �   copy the iPhoto library    �  � � � l  Y d ��� � I  Y d�� � �
�� .sysoexecTEXT���     TEXT � l  Y \ ��� � o   Y \���� 0 copy_script  ��   � �� ���
�� 
badm � m   _ `��
�� boovtrue��  ��   �  � � � l     ������  ��   �  � � � l  e l ��� � I  e l�� ���
�� .sysodlogaskr        TEXT � o   e h���� 0 copy_script  ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 1 + now let's change the directories ownership    �  � � � l  m t ��� � r   m t � � � m   m p � �       � o      ���� 0 current_user  ��   �  � � � l  u � ��� � O   u � � � � k   { � � �  � � � l  { {������  ��   �  � � � l  { {�� ���   � : 4 get the current user -- we'll set the ownership to     �  � � � l  { {������  ��   �  � � � r   { � � � � 1   { ���
�� 
curu � o      ���� 0 current_user   �  � � � l  � �������  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  	chown -R     � l 	 � � ��� � l  � � ��� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 current_user  ��  ��   � m   � � � �  :    � l 	 � � ��� � l  � � ��� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 current_user  ��  ��   � m   � � � �       � o      ���� 0 shell_script_chown   �  � � � l  � �������  ��   �  � � � l   � ��� ���   �^X
	-- get the item to change.
	if chooseType is "folder" then
		set folder_selection to (choose folder with prompt "Choose folder to change ownership to user " & (full name of current_user) & ":")
	else
		set folder_selection to (choose file with prompt "Choose folder to change ownership to user " & (full name of current_user) & ":")
	end if
	    �  � � � l  � ��� ���   � ( " Another example of choosing items    �  � � � l  � ��� ���   � ; 5 Choose files(s) to change permissions to chosen user    �  ��� � l  � ��� ���   � � �set item_selection to (choose file with prompt "Choose file(s) to change permissions to " & quoted form of current_user & " with:" default location default_location with multiple selections allowed)		   ��   � m   u x � ��null     ߀��  �System Events.app�   ����)Q �    ~��������'͐    @   @   �E   sevs   alis    |  Kermit                     �� H+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  4Kermit:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    K e r m i t  -System/Library/CoreServices/System Events.app   / ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 2 , get name of folder to pass to shell command    �  � � � l     �� ���   � ; 5set selected_folder to POSIX path of folder_selection    �  � � � l     ������  ��   �  � � � l  � � ��� � Q   � � � � � � k   � � � �  � � � l  � ��� ���   � s mdo shell script (shell_script_chown & quoted form of selected_folder as string) with administrator privileges    �  � � � I  � ��� � �
�� .sysoexecTEXT���     TEXT � l  � � ��� � c   � � � � � b   � � � � � o   � ����� 0 shell_script_chown   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 	dest_path   � m   � ��
� 
TEXT��   � �~ ��}
�~ 
badm � m   � ��|
�| boovtrue�}   �  ��{ � l  � ��z ��z   � � �		display dialog ("item " & i & " of " & (count of item_selection) & return & this_shell_script & selected_folder as string) giving up after 1   �{   � R      �y � �
�y .ascrerr ****      � **** � o      �x�x 0 error_message   � �w ��v
�w 
errn � o      �u�u 0 error_number  �v   � k   � � � �  � � � l  � ��t ��t   � D > If error occurs beep user and bring up why there was an error    �  � � � I  � ��s�r�q
�s .sysobeepnull��� ��� long�r  �q   �  � � � I  � ��p �o
�p .sysodlogaskr        TEXT  l  � ��n c   � � b   � � b   � � b   � �	 m   � �

  Error number:    	 o   � ��m�m 0 error_number   o   � ��l
�l 
ret  o   � ��k�k 0 error_message   m   � ��j
�j 
TEXT�n  �o   � �i L   � ��h�h  �i  ��   �  l     �g�f�g  �f   �e l  �	�d O   �	 k   �  l  � ��c�c   7 1display dialog "Ownership changed on folder " & �     l  � ��b�b   Z T(name of folder_selection as text) & " to user " & (full name of current_user) & "."     I  ��a�`
�a .sysodlogaskr        TEXT b   � b   � � b   � � !  b   � �"#" m   � �$$ " Ownership changed on folder    # l 	 � �%�_% l  � �&�^& c   � �'(' o   � ��]�] 0 	dest_path  ( m   � ��\
�\ 
ctxt�^  �_  ! m   � �))  	 to user     l  � �*�[* n   � �+,+ 1   � ��Z
�Z 
fnam, o   � ��Y�Y 0 current_user  �[   m   �--  .   �`   .�X. l �W�V�W  �V  �X   m   � � ��d  �e       �U/0�U  / �T
�T .aevtoappnull  �   � ****0 �S1�R�Q23�P
�S .aevtoappnull  �   � ****1 k    	44  55  66  !77  /88  ;99  G::  i;;  �<<  �==  �>>  �??  �@@ �O�O  �R  �Q  2 �N�M�N 0 error_message  �M 0 error_number  3 + �L �K�J )�I�H 7�G�F�E ]�D V�C�B�A t�@ z�?�>�= ��< ��; � � ��:�9�8A�7
�6$�5)�4-�L 0 
choosetype 
chooseType
�K .sysodlogaskr        TEXT
�J 
prmp
�I .sysostflalis    ��� null�H 0 
src_folder  �G 0 dest_folder  
�F 
psxp�E 0 	dest_path  
�D 
pnam
�C 
insh
�B 
trsh
�A .coremoveobj        obj 
�@ 
strq�? 0 copy_script  
�> 
badm
�= .sysoexecTEXT���     TEXT�< 0 current_user  
�; 
curu�: 0 shell_script_chown  
�9 
TEXT�8 0 error_message  A �3�2�1
�3 
errn�2 0 error_number  �1  
�7 .sysobeepnull��� ��� long
�6 
ret 
�5 
ctxt
�4 
fnam�P
�E�O�j O*��l E�O*��l E�O��,E�O� ��,�%��,FO��*a ,l UOa ��,a ,%a %�a ,%E` O_ a el O_ j Oa E` Oa  )*a ,E` Oa _ �,%a %_ �,%a %E` OPUO _ �a ,%a  &a el OPW #X ! "*j #Oa $�%_ %%�%a  &j OhOa  !a &�a '&%a (%_ a ),%a *%j OPUascr  ��ޭ