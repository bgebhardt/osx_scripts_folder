FasdUAS 1.101.10   ��   ��    k             l     ������  ��        l     �� 	��   	 ' ! newline char: ASCII character 10      
  
 l     �� ��    %  slash char: ASCII character 47         l     �� ��    ) # backslash char: ASCII character 92         l     ������  ��        l      �� ��    � �-- test code
set a to "O:\\Products\\WBS\\WBS 5.2\\Release
Notes\\GoldMaster_WBS.5.2.3.doc"
log a
log ConvertBackslashToSlash(a)         l     ������  ��        l     ��  r         I     
�� ���� 20 convertbackslashtoslash ConvertBackslashToSlash   ��  I   ������
�� .JonsgClp****  @ ��� null��  ��  ��  ��    o      ���� 0 	returnval 	returnVal��        l     ������  ��       !   l    "�� " I   �� #��
�� .ascrcmnt****      � **** # o    ���� 0 	returnval 	returnVal��  ��   !  $ % $ l     ������  ��   %  & ' & l     �� (��   ( ' ! Strip off drive letter if needed    '  ) * ) l      �� +��   + � �if item 2 of returnVal is ":" then
	set num to length of returnVal
	log num
	set returnVal to (characters 3 through num of returnVal)
end if    *  , - , l     ������  ��   -  . / . l    0�� 0 I   �� 1��
�� .ascrcmnt****      � **** 1 c     2 3 2 o    ���� 0 	returnval 	returnVal 3 m    ��
�� 
TEXT��  ��   /  4 5 4 l   " 6�� 6 I   "�� 7��
�� .JonspClpnull���     **** 7 c     8 9 8 o    ���� 0 	returnval 	returnVal 9 m    ��
�� 
TEXT��  ��   5  : ; : l     ������  ��   ;  < = < l     �� >��   > * $ converts all backslashes to slashes    =  ? @ ? i      A B A I      �� C���� 20 convertbackslashtoslash ConvertBackslashToSlash C  D�� D o      ���� 0 inpath inPath��  ��   B k     ; E E  F G F r      H I H l     J�� J n      K L K 2    ��
�� 
cha  L o     ���� 0 inpath inPath��   I o      ���� 0 thepath thePath G  M N M r    
 O P O J    ����   P o      ���� 0 outpath outPath N  Q R Q l   ������  ��   R  S T S X    6 U�� V U k    1 W W  X Y X l   �� Z��   Z  	log i    Y  [�� [ Z    1 \ ]�� ^ \ =   ! _ ` _ n     a b a 4    �� c
�� 
cobj c m    ����  b o    ���� 0 i   ` m      d d  \    ] r   $ ) e f e b   $ ' g h g o   $ %���� 0 outpath outPath h m   % & i i  /    f o      ���� 0 outpath outPath��   ^ r   , 1 j k j b   , / l m l o   , -���� 0 outpath outPath m o   - .���� 0 i   k o      ���� 0 outpath outPath��  �� 0 i   V o    ���� 0 thepath thePath T  n o n l  7 7������  ��   o  p q p l  7 7�� r��   r  log outPath as string    q  s�� s L   7 ; t t l  7 : u�� u c   7 : v w v o   7 8���� 0 outpath outPath w m   8 9��
�� 
TEXT��  ��   @  x�� x l     ������  ��  ��       �� y z {��   y ������ 20 convertbackslashtoslash ConvertBackslashToSlash
�� .aevtoappnull  �   � **** z �� B���� | }���� 20 convertbackslashtoslash ConvertBackslashToSlash�� �� ~��  ~  ���� 0 inpath inPath��   | ���������� 0 inpath inPath�� 0 thepath thePath�� 0 outpath outPath�� 0 i   } �������� d i��
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� <��-E�OjvE�O *�[��l kh ��k/�  
��%E�Y ��%E�[OY��O��& { �� ���� � ���
�� .aevtoappnull  �   � ****  k     " � �   � �    � �  . � �  4����  ��  ��   �   � ������������
�� .JonsgClp****  @ ��� null�� 20 convertbackslashtoslash ConvertBackslashToSlash�� 0 	returnval 	returnVal
�� .ascrcmnt****      � ****
�� 
TEXT
�� .JonspClpnull���     ****�� #**j  k+ E�O�j O��&j O��&j  ascr  ��ޭ