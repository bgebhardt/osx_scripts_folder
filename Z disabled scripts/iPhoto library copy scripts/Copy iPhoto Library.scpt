FasdUAS 1.101.10   ��   ��    k             l     �� ��    T N A script to copy the iPhoto library and change ownership to the current user.       	  l     ������  ��   	  
  
 l     �� ��      globals         l     ��  r         m         folder     o      ���� 0 
choosetype 
chooseType��        l     ������  ��        l   	 ��  I   	�� ��
�� .sysodlogaskr        TEXT  m       � �You are about to copy the iPhoto library.  This may take some time.  Hit ok to continue.  If it fails you will find the old iPhoto library in the trash.   ��  ��        l     ������  ��        l     �� ��      choose the source folder          l     �� !��   ! W Qset src_folder to (choose folder with prompt "Choose the source iPhoto folder :")       " # " l     �� $��   $ D >set src_path to (POSIX path of src_folder) & "iPhoto Library/"    #  % & % l     ������  ��   &  ' ( ' l  
  )�� ) r   
  * + * m   
  , , = 7/Volumes/Big Bird/Backup/bryan/Pictures/iPhoto Library/    + o      ���� 0 src_path  ��   (  - . - l     ������  ��   .  / 0 / l     �� 1��   1   choose the dest folder    0  2 3 2 l    4�� 4 r     5 6 5 l    7�� 7 I   ���� 8
�� .sysostflalis    ��� null��   8 �� 9��
�� 
prmp 9 m     : : 3 -Choose the iPhoto folder to apply changes to:   ��  ��   6 o      ���� 0 dest_folder  ��   3  ; < ; l     �� =��   = ( " get the original dest folder path    <  > ? > l    @�� @ r     A B A b     C D C l    E�� E n     F G F 1    ��
�� 
psxp G o    ���� 0 dest_folder  ��   D m     H H  iPhoto Library/    B o      ���� 0 	dest_path  ��   ?  I J I l     ������  ��   J  K L K l     �� M��   M   back up dest_folder     L  N O N l     �� P��   P _ Ythe try block will ignore any file not found errors -- probably a very dangerous approach    O  Q R Q l    } S�� S Q     } T U V T k   # P W W  X Y X r   # + Z [ Z c   # ) \ ] \ l  # ' ^�� ^ 4   # '�� _
�� 
psxf _ o   % &���� 0 	dest_path  ��   ] m   ' (��
�� 
alis [ o      ���� 0 backup_folder   Y  `�� ` O   , P a b a k   2 O c c  d e d r   2 A f g f l  2 ; h�� h b   2 ; i j i n   2 7 k l k 1   3 7��
�� 
pnam l o   2 3���� 0 backup_folder   j m   7 : m m 
  old   ��   g n       n o n 1   < @��
�� 
pnam o o   ; <���� 0 backup_folder   e  p�� p I  B O�� q r
�� .coremoveobj        obj  q o   B C���� 0 backup_folder   r �� s��
�� 
insh s 1   F K��
�� 
trsh��  ��   b m   , / t t�null     ߀��  �
Finder.app�ΠD ""�\M �`�`����   Ѱ   )       ��(�[y������MACS   alis    `  Fozzie                     �(�H+    �
Finder.app                                                       7߽�N�        ����  	                CoreServices    �)@�      ���W      �  �  �  -Fozzie:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    F o z z i e  &System/Library/CoreServices/Finder.app  / ��  ��   U R      �� u v
�� .ascrerr ****      � **** u o      ���� 0 error_message   v �� w��
�� 
errn w o      ���� 0 error_number  ��   V k   X } x x  y z y l  X X�� {��   { D > If error occurs beep user and bring up why there was an error    z  | } | l  X X�� ~��   ~ > 8 filter out the error that occurs if file does not exist    }  ��  Z   X } � ����� � >  X ] � � � o   X Y���� 0 error_number   � m   Y \�����\ � k   ` y � �  � � � I  ` e������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  f y�� ���
�� .sysodlogaskr        TEXT � l  f u ��� � c   f u � � � b   f q � � � b   f o � � � b   f k � � � m   f i � �  Error number:     � o   i j���� 0 error_number   � o   k n��
�� 
ret  � o   o p���� 0 error_message   � m   q t��
�� 
TEXT��  ��  ��  ��  ��  ��  ��   R  � � � l     ������  ��   �  � � � l     �� ���   �   set up the copy cmd    �  � � � l     �� ���   �   for test only    �  � � � l     �� ���   � H Bset copy_script to "ditto /Users/lindsey/Sites/index.html ~/temp/"    �  � � � l  ~ � ��� � r   ~ � � � � b   ~ � � � � b   ~ � � � � b   ~ � � � � m   ~ � � �  ditto     � n   � � � � � l 	 � � ��� � 1   � ���
�� 
strq��   � o   � ����� 0 src_path   � m   � � � �       � n   � � � � � l 	 � � ��� � 1   � ���
�� 
strq��   � o   � ����� 0 	dest_path   � o      ���� 0 copy_script  ��   �  � � � l     ������  ��   �  � � � l  � � ��� � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 0 copy_script  ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   �   copy the iPhoto library    �  � � � l  � � ��� � I  � ��� � �
�� .sysoexecTEXT���     TEXT � l  � � ��� � o   � ����� 0 copy_script  ��   � �� ���
�� 
badm � m   � ���
�� boovtrue��  ��   �  � � � l     ������  ��   �  � � � l  � � ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � �  iPhoto library copy done.    � �� ���
�� 
givu � m   � ����� ��  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 1 + now let's change the directories ownership    �  � � � l  � � ��� � r   � � � � � m   � � � �       � o      ���� 0 current_user  ��   �  � � � l  � � ��� � O   � � � � � k   � � � �  � � � l  � �������  ��   �  � � � l  � ��� ���   � : 4 get the current user -- we'll set the ownership to     �  � � � l  � ������  �   �  � � � r   � � � � � 1   � ��~
�~ 
curu � o      �}�} 0 current_user   �  � � � l  � ��|�{�|  �{   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  	chown -R     � l 	 � � ��z � l  � � ��y � n   � � � � � 1   � ��x
�x 
pnam � o   � ��w�w 0 current_user  �y  �z   � m   � � � �  :    � l 	 � � ��v � l  � � ��u � n   � � � � � 1   � ��t
�t 
pnam � o   � ��s�s 0 current_user  �u  �v   � m   � �         � o      �r�r 0 shell_script_chown   �  l  � ��q�p�q  �p    l   � ��o�o  ^X
	-- get the item to change.
	if chooseType is "folder" then
		set folder_selection to (choose folder with prompt "Choose folder to change ownership to user " & (full name of current_user) & ":")
	else
		set folder_selection to (choose file with prompt "Choose folder to change ownership to user " & (full name of current_user) & ":")
	end if
	     l  � ��n�n   ( " Another example of choosing items    	
	 l  � ��m�m   ; 5 Choose files(s) to change permissions to chosen user   
 �l l  � ��k�k   � �set item_selection to (choose file with prompt "Choose file(s) to change permissions to " & quoted form of current_user & " with:" default location default_location with multiple selections allowed)		   �l   � m   � ��null     ߀��  �System Events.app�\M �`�`����   Ѱ   )       ��(�[y������sevs   alis    |  Fozzie                     �(�H+    �System Events.app                                                a��It        ����  	                CoreServices    �)@�      ����      �  �  �  4Fozzie:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    F o z z i e  -System/Library/CoreServices/System Events.app   / ��  ��   �  l     �j�i�j  �i    l     �h�h   2 , get name of folder to pass to shell command     l     �g�g   ; 5set selected_folder to POSIX path of folder_selection     l     �f�e�f  �e    l  �/�d Q   �/ k   �  !  l  � ��c"�c  " s mdo shell script (shell_script_chown & quoted form of selected_folder as string) with administrator privileges   ! #$# I  �	�b%&
�b .sysoexecTEXT���     TEXT% l  �'�a' c   �()( b   � �*+* o   � ��`�` 0 shell_script_chown  + n   � �,-, 1   � ��_
�_ 
strq- o   � ��^�^ 0 	dest_path  ) m   � �]
�] 
TEXT�a  & �\.�[
�\ 
badm. m  �Z
�Z boovtrue�[  $ /�Y/ l 

�X0�X  0 � �		display dialog ("item " & i & " of " & (count of item_selection) & return & this_shell_script & selected_folder as string) giving up after 1   �Y   R      �W12
�W .ascrerr ****      � ****1 o      �V�V 0 error_message  2 �U3�T
�U 
errn3 o      �S�S 0 error_number  �T   k  /44 565 l �R7�R  7 D > If error occurs beep user and bring up why there was an error   6 898 I �Q�P�O
�Q .sysobeepnull��� ��� long�P  �O  9 :;: I ,�N<�M
�N .sysodlogaskr        TEXT< l (=�L= c  (>?> b  $@A@ b  "BCB b  DED m  FF  Error number:    E o  �K�K 0 error_number  C o  !�J
�J 
ret A o  "#�I�I 0 error_message  ? m  $'�H
�H 
TEXT�L  �M  ; G�GG L  -/�F�F  �G  �d   HIH l     �E�D�E  �D  I JKJ l 0VL�CL O  0VMNM k  6UOO PQP l 66�BR�B  R 7 1display dialog "Ownership changed on folder " & �   Q STS l 66�AU�A  U Z T(name of folder_selection as text) & " to user " & (full name of current_user) & "."   T VWV I 6S�@X�?
�@ .sysodlogaskr        TEXTX b  6OYZY b  6K[\[ b  6C]^] b  6?_`_ m  69aa " Ownership changed on folder    ` l 	9>b�>b l 9>c�=c c  9>ded o  9:�<�< 0 	dest_path  e m  :=�;
�; 
ctxt�=  �>  ^ m  ?Bff  	 to user    \ l CJg�:g n  CJhih 1  FJ�9
�9 
fnami o  CF�8�8 0 current_user  �:  Z m  KNjj  .   �?  W k�7k l TT�6�5�6  �5  �7  N m  03�C  K l�4l l     �3�2�3  �2  �4       �1mn�1  m �0
�0 .aevtoappnull  �   � ****n �/o�.�-pq�,
�/ .aevtoappnull  �   � ****o k    Vrr  ss  tt  'uu  2vv  >ww  Qxx  �yy  �zz  �{{  �||  �}}  �~~  J�+�+  �.  �-  p �*�)�* 0 error_message  �) 0 error_number  q 3 �( �' ,�&�% :�$�#�" H�!� �� t� m������� ��� �� ���� �� ��� � � �Fa�f�j�( 0 
choosetype 
chooseType
�' .sysodlogaskr        TEXT�& 0 src_path  
�% 
prmp
�$ .sysostflalis    ��� null�# 0 dest_folder  
�" 
psxp�! 0 	dest_path  
�  
psxf
� 
alis� 0 backup_folder  
� 
pnam
� 
insh
� 
trsh
� .coremoveobj        obj � 0 error_message  � �
�	�
�
 
errn�	 0 error_number  �  ��\
� .sysobeepnull��� ��� long
� 
ret 
� 
TEXT
� 
strq� 0 copy_script  
� 
badm
� .sysoexecTEXT���     TEXT
� 
givu� 0 current_user  
� 
curu� 0 shell_script_chown  
� 
ctxt
� 
fnam�,W�E�O�j O�E�O*��l E�O��,�%E�O 2*��/�&E�Oa  �a ,a %�a ,FO�a *a ,l UW ,X  �a  *j Oa �%_ %�%a &j Y hOa �a ,%a %�a ,%E`  O_  j O_  a !el "Oa #a $kl Oa %E` &Oa ' -*a (,E` &Oa )_ &a ,%a *%_ &a ,%a +%E` ,OPUO _ ,�a ,%a &a !el "OPW #X  *j Oa -�%_ %�%a &j OhOa ' !a .�a /&%a 0%_ &a 1,%a 2%j OPU ascr  ��ޭ