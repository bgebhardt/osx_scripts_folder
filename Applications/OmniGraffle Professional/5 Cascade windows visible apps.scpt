FasdUAS 1.101.10   ��   ��    k             l      �� ��    � �
Script that cascades the windows of all the visible apps on the main monitor.

TODO: Make sure the apps windows bounds fit on the main display

TODO: prompt with list box of visible apps to effect.  User selects them.
       	  l    h 
�� 
 O     h    k    g       l   ������  ��        r    	    2   ��
�� 
pcap  o      ���� 0 theapps theApps      l  
 
������  ��        l  
 
�� ��      for each app         X   
 e ��   k    `       l   ������  ��       !   l   �� "��   " / ) if the app is visible reset it's windows    !  #�� # Z    ` $ %���� $ =    & ' & n     ( ) ( 1    ��
�� 
pvis ) o    ���� 0 theapp theApp ' m    ��
�� boovtrue % k   " \ * *  + , + I  " *�� -��
�� .ascrcmnt****      � **** - l  " & .�� . e   " & / / n   " & 0 1 0 1   # %��
�� 
pnam 1 o   " #���� 0 theapp theApp��  ��   ,  2 3 2 l  + +������  ��   3  4 5 4 r   + . 6 7 6 m   + ,����   7 o      ���� 0 windowindex windowIndex 5  8�� 8 X   / \ 9�� : 9 k   A W ; ;  < = < l  A A�� >��   > 9 3	first move window to upper corner of main display.    =  ? @ ? l  A A�� A��   A P J  make the position of cascade actually cascade by 25 pixels in x and in y    @  B C B l  A Q D E D r   A Q F G F J   A M H H  I J I [   A F K L K l  A D M�� M ]   A D N O N o   A B���� 0 windowindex windowIndex O m   B C���� ��   L m   D E����  J  P�� P [   F K Q R Q l  F I S�� S ]   F I T U T o   F G���� 0 windowindex windowIndex U m   G H���� ��   R m   I J���� ��   G n       V W V 1   N P��
�� 
posn W o   M N���� 0 i   E   {0, 22}    C  X Y X l  R R������  ��   Y  Z [ Z l  R R�� \��   \   increment the index    [  ]�� ] r   R W ^ _ ^ [   R U ` a ` o   R S���� 0 windowindex windowIndex a m   S T����  _ o      ���� 0 windowindex windowIndex��  �� 0 i   : n   2 5 b c b 2  3 5��
�� 
cwin c o   2 3���� 0 theapp theApp��  ��  ��  ��  �� 0 theapp theApp  o    ���� 0 theapps theApps   d�� d l  f f������  ��  ��    m      e e�null     ߀��  �System Events.appIȚ�����  ��} �: 8���淪�<Ț��|���� ���l�sevs   alis    |  Kermit                     �� H+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  4Kermit:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    K e r m i t  -System/Library/CoreServices/System Events.app   / ��  ��   	  f�� f l     ������  ��  ��       �� g h��   g ��
�� .aevtoappnull  �   � **** h �� i���� j k��
�� .aevtoappnull  �   � **** i k     h l l  ����  ��  ��   j ������ 0 theapp theApp�� 0 i   k  e����������������������������
�� 
pcap�� 0 theapps theApps
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pvis
�� 
pnam
�� .ascrcmnt****      � ****�� 0 windowindex windowIndex
�� 
cwin�� �� �� 
�� 
posn�� i� e*�-E�O Z�[��l kh  ��,e  ?��,Ej OjE�O ,��-[��l kh �� ��� �lv��,FO�kE�[OY��Y h[OY��OPUascr  ��ޭ