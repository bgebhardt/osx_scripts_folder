FasdUAS 1.101.10   ��   ��    k             l     �� ��      mail status export       	  l     �� 
��   
 Y S This script writes out the msg read and flag status for a mailbox to the clipboard    	     l     ������  ��        l     �� ��      clear the clipboard         l     ��  I    �� ��
�� .JonspClpnull���     ****  m             ��  ��        l     ������  ��        l     �� ��    % set outFile to choose file name         l     �� ��    B <set fileRef to open for access outFile with write permission         l     ������  ��         l   � !�� ! O    � " # " k   
 � $ $  % & % p   
 
 ' ' �� (�� 0 fileref fileRef ( ������ 0 outfile outFile��   &  ) * ) r   
  + , + m   
  - -  	Gmail POP    , o      ���� 0 
theaccount 
theAccount *  . / . l   ������  ��   /  0 1 0 e     2 2 4    �� 3
�� 
mact 3 o    ���� 0 
theaccount 
theAccount 1  4 5 4 l   ������  ��   5  6 7 6 e     8 8 n     9 : 9 2   ��
�� 
mbxp : 4    �� ;
�� 
mact ; o    ���� 0 
theaccount 
theAccount 7  < = < r    % > ? > n    # @ A @ 4     #�� B
�� 
mbxp B m   ! " C C  INBOX    A 4     �� D
�� 
mact D o    ���� 0 
theaccount 
theAccount ? o      ���� 0 mbox   =  E F E l  & &������  ��   F  G H G I  & -�� I��
�� .corecnte****       **** I n  & ) J K J 2  ' )��
�� 
mssg K o   & '���� 0 mbox  ��   H  L M L l  . .������  ��   M  N O N l  . .������  ��   O  P Q P r   . 1 R S R m   . /����   S o      ���� 0 i   Q  T U T X   2 � V�� W V k   D � X X  Y Z Y Z   D � [ \���� [ A   D G ] ^ ] o   D E���� 0 i   ^ m   E F����� \ k   J � _ _  ` a ` l  J J�� b��   b $ log (get properties of theMsg)    a  c d c l  J J������  ��   d  e f e l  J J�� g��   g   log the following:    f  h i h l  J J�� j��   j = 7 id, date sent, flagged status, read status, message id    i  k l k r   J Q m n m n   J M o p o 1   K M��
�� 
ID   p o   J K���� 0 themsg theMsg n o      ���� 0 theid theID l  q r q r   R [ s t s n   R W u v u 1   S W��
�� 
isfl v o   R S���� 0 themsg theMsg t o      ���� 0 	isflagged 	isFlagged r  w x w r   \ e y z y n   \ a { | { 1   ] a��
�� 
isrd | o   \ ]���� 0 themsg theMsg z o      ���� 0 isread isRead x  } ~ } r   f o  �  n   f k � � � 1   g k��
�� 
drcv � o   f g���� 0 themsg theMsg � o      ���� 0 thedate theDate ~  � � � r   p y � � � n   p u � � � 1   q u��
�� 
subj � o   p q���� 0 themsg theMsg � o      ���� 0 
thesubject 
theSubject �  � � � l  z z������  ��   �  � � � l  z z�� ���   � !  create the string to write    �  � � � r   z � � � � b   z � � � � b   z � � � � b   z � � � � b   z � � � � b   z � � � � b   z � � � � b   z � � � � b   z � � � � o   z }���� 0 theid theID � m   } � � �  ;    � l 	 � � ��� � o   � ����� 0 isflag isFlag��   � m   � � � �  ;    � l 	 � � ��� � o   � ����� 0 isread isRead��   � m   � � � �  ;    � l 	 � � ��� � o   � ����� 0 thedate theDate��   � m   � � � �  ;    � o   � ����� 0 
thesubject 
theSubject � o      ���� 0 out   �  � � � l  � �������  ��   �  � � � r   � � � � � J   � � � �  � � � o   � ����� 0 theid theID �  � � � o   � ����� 0 isflag isFlag �  � � � o   � ����� 0 isread isRead �  � � � o   � ����� 0 thedate theDate �  ��� � o   � ����� 0 
thesubject 
theSubject��   � o      ���� 0 outlist outList �  � � � l  � �������  ��   �  � � � l  � �������  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ��� � o   � ����� 0 out  ��  ��   �  � � � l  � ��� ���   � < 6			log theID & isFlag & isRead & theDate & theSubject	    �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ��� � c   � � � � � o   � ����� 0 out   � m   � ���
�� 
TEXT��  ��   �  � � � l  � ��� ���   � # write out & return to fileRef    �  � � � n  � � � � � I   � ��� ����� 0 	writeline 	writeLine �  ��� � o   � ����� 0 out  ��  ��   �  f   � � �  ��� � l  � �������  ��  ��  ��  ��   Z  ��� � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i  ��  �� 0 themsg theMsg W l  5 8 ��� � n  5 8 � � � 2  6 8��
�� 
mssg � o   5 6���� 0 mbox  ��   U  � � � l  � �������  ��   �  ��� � l  � �������  ��  ��   # m     � ��null     ߀��   Mail.app �U  �B'�f�����  @�F�����tb��f��~ x�����b�,�emal   alis    D  Danger Mouse               ��KXH+     Mail.app                                                         �C�L��        ����  	                Applications    �ڭ�      �M*`         "Danger Mouse:Applications:Mail.app    M a i l . a p p    D a n g e r   M o u s e  Applications/Mail.app   / ��  ��      � � � l     ������  ��   �  � � � l     �� ���   �  close access fileRef    �  � � � l     ��~�  �~   �  � � � i      � � � I      �} ��|�} 0 	writeline 	writeLine �  ��{ � o      �z�z 	0 input  �{  �|   � I    �y ��x
�y .JonspClpnull���     **** � b     	 � � � b      � � � l     ��w � I    �v�u�t
�v .JonsgClp****    ��� null�u  �t  �w   � o    �s
�s 
ret  � l    ��r � o    �q�q 	0 input  �r  �x   �  � � � l     �p�o�p  �o   �  ��n � l      �m ��m   � � �
on writeLine(input)
	
	set fileRef to open for access outFile with write permission
	write out & return to fileRef
	close access fileRef
	
end writeLine
   �n       �l � � ��l   � �k�j�k 0 	writeline 	writeLine
�j .aevtoappnull  �   � **** � �i ��h�g � ��f�i 0 	writeline 	writeLine�h �e ��e  �  �d�d 	0 input  �g   � �c�c 	0 input   � �b�a�`
�b .JonsgClp****    ��� null
�a 
ret 
�` .JonspClpnull���     ****�f *j  �%�%j  � �_ ��^�] � �\
�_ .aevtoappnull  �   � **** � k     �    �[�[  �^  �]   � �Z�Z 0 themsg theMsg  $ �Y � -�X�W�V C�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E ��D � � ��C�B�A�@�?�>
�Y .JonspClpnull���     ****�X 0 
theaccount 
theAccount
�W 
mact
�V 
mbxp�U 0 mbox  
�T 
mssg
�S .corecnte****       ****�R 0 i  
�Q 
kocl
�P 
cobj�O�
�N 
ID  �M 0 theid theID
�L 
isfl�K 0 	isflagged 	isFlagged
�J 
isrd�I 0 isread isRead
�H 
drcv�G 0 thedate theDate
�F 
subj�E 0 
thesubject 
theSubject�D 0 isflag isFlag�C 0 out  �B �A 0 outlist outList
�@ .ascrcmnt****      � ****
�? 
TEXT�> 0 	writeline 	writeLine�\ ��j O� ��E�O*��/EO*��/�-EO*��/��/E�O��-j 
OjE�O ���-[��l 
kh  �� ���,E` O�a ,E` O�a ,E` O�a ,E` O�a ,E` O_ a %_ %a %_ %a %_ %a %_ %E` O_ _ _ _ _ a vE`  O_ j !O_ a "&j !O)_ k+ #OPY hO�kE�[OY�\OPUascr  ��ޭ