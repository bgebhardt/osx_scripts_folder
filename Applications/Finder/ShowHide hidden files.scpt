FasdUAS 1.101.10   ��   ��    k             l     �� ��    8 2 Script to show or hide hidden files in the Finder       	  l     
�� 
 r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        6 0defaults read com.apple.finder AppleShowAllFiles   ��    o      ���� 0 onoff onOff��   	     l   ' ��  Z    '  ��   G        =        o    	���� 0 onoff onOff  m   	 
    NO     =        o    ���� 0 onoff onOff  m       	 OFF     k           r       !   m     " " 
 show    ! o      ���� 0 newstate newState   #�� # r     $ % $ m     & & : 4defaults write com.apple.finder AppleShowAllFiles ON    % o      ���� 0 onoffcommand OnOffCommand��  ��    k     ' ' '  ( ) ( r     # * + * m     ! , , 
 hide    + o      ���� 0 newstate newState )  -�� - r   $ ' . / . m   $ % 0 0 ; 5defaults write com.apple.finder AppleShowAllFiles OFF    / o      ���� 0 onoffcommand OnOffCommand��  ��     1 2 1 l     ������  ��   2  3 4 3 l  ( > 5�� 5 I  ( >�� 6 7
�� .sysodlogaskr        TEXT 6 b   ( - 8 9 8 b   ( + : ; : m   ( ) < <  Are you sure you want to     ; o   ) *���� 0 newstate newState 9 m   + , = = 3 - hidden files? (This will restart the Finder)    7 �� > ?
�� 
btns > J   . 4 @ @  A B A m   . / C C  Cancel    B  D�� D m   / 2 E E  OK   ��   ? �� F��
�� 
dflt F m   7 8���� ��  ��   4  G H G l  ? S I�� I s   ? S J K J c   ? F L M L l  ? B N�� N 1   ? B��
�� 
rslt��   M m   B E��
�� 
list K J       O O  P�� P o      ���� 0 buttonpressed buttonPressed��  ��   H  Q R Q l  T � S�� S Z   T � T U���� T =  T [ V W V l  T W X�� X o   T W���� 0 buttonpressed buttonPressed��   W m   W Z Y Y  OK    U Q   ^ � Z [�� Z k   a � \ \  ] ^ ] O  a m _ ` _ I  g l������
�� .aevtquitnull��� ��� null��  ��   ` m   a d a a�null     ߀�� 4G
Finder.app��pD " � �      `���0���0�5|t����    �5f          MACS   alis    `  Kermit                     ���]H+   4G
Finder.app                                                      W��jJv        ����                  CoreServices    ��(�      �j��     4G 1N 1M  -Kermit:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    K e r m i t  &System/Library/CoreServices/Finder.app  / ��   ^  b c b I  n s�� d��
�� .sysoexecTEXT���     TEXT d o   n o���� 0 onoffcommand OnOffCommand��   c  e f e I  t y�� g��
�� .sysodelanull��� ��� long g m   t u���� ��   f  h�� h O  z � i j i I  � �������
�� .ascrnoop****      � ****��  ��   j m   z } a��   [ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��   R  k l k l     ������  ��   l  m�� m l     ������  ��  ��       
�� n o p " & q��������   n ����������������
�� .aevtoappnull  �   � ****�� 0 onoff onOff�� 0 newstate newState�� 0 onoffcommand OnOffCommand�� 0 buttonpressed buttonPressed��  ��  ��   o �� r���� s t��
�� .aevtoappnull  �   � **** r k     � u u   v v   w w  3 x x  G y y  Q����  ��  ��   s   t  ����  �� "�� &�� , 0 < =�� C E�������������� Y a����������
�� .sysoexecTEXT���     TEXT�� 0 onoff onOff
�� 
bool�� 0 newstate newState�� 0 onoffcommand OnOffCommand
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list
�� 
cobj�� 0 buttonpressed buttonPressed
�� .aevtquitnull��� ��� null
�� .sysodelanull��� ��� long
�� .ascrnoop****      � ****��  ��  �� ��j E�O�� 
 �� �& �E�O�E�Y 	�E�O�E�O��%�%��a lva la  O_ a &E[a k/EQ` ZO_ a   6 *a  *j UO�j Okj Oa  *j UW X  hY h p � z z  O F F q  OK   ��  ��  ��   ascr  ��ޭ