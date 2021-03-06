FasdUAS 1.101.10   ��   ��    k             l      �� ��   �}
OmniGrowl Plugin Template
By Wooden Brain Concepts
http://www.woodenbrain.com

Usage:
Duplicate this script (as many times as you want) and modify it as you like.

Place the duplicated script(s) in the location where you found it in:
~/Library/Scripts/Growl/OmniGrowl/Plugins/

Any script whose name begins with "S-" will be run every 30 seconds (or once every idle call)
Any script whose name begins with "M-" will be run every 2.5 minutes (or once every 5 idle calls)
Any script whose name begins with a two digit number � 0 and less than 59 will be run at that minute every hour by OmniGrowl

Any script in that location that does not match the above three criterea will be ignored (including this one)

OmniGrowl will check for new scripts only every 2.5 minutes (one every 5 idle calls)

For documentation on Growl scripting see:
http://growl.info/documentation/applescript-support.php

       	  l     ������  ��   	  
  
 l     �� ��    : 4 the icon of the application to use when registering         j     �� �� 0 templateapp templateApp  m         	OmniGrowl         l     �� ��    > 8 the application name to list in Growl Preference Panes:         l     �� ��    D > note this may be overwritten by Growl each time if not unique         l     �� ��    U O do not use "OmniGrowl" here or you may lose settings for the rest of OmniGrowl         j    �� �� 0 appname appName  m        OmniGrowl Plugin         l     ��  ��     N H the name of the notification for this plugin, used by Growl internally:      ! " ! j    �� #�� $0 notificationname notificationName # m     $ $ # OmniGrowl Plugin Notification    "  % & % l     �� '��   ' 5 / the title of the notification for this plugin:    &  ( ) ( j   	 �� *�� 0 
notiftitle 
notifTitle * m   	 
 + +  OmniGrowl Plugin Message    )  , - , l     �� .��   . 4 . the list of all notifications for this plugin    -  / 0 / l     �� 1��   1  y note, this may be overwritten by Growl if the appName is the same but different scripts set different notification lists    0  2 3 2 j    �� 4�� 
0 notifs   4 J     5 5  6�� 6 o    ���� $0 notificationname notificationName��   3  7 8 7 l     �� 9��   9 m g the list of all default notifications for this plugin (here the same as the list of all notifications)    8  : ; : j    �� <�� 0 	defnotifs   < o    ���� 
0 notifs   ;  = > = l     �� ?��   ?   use sticky?    >  @ A @ j    �� B�� 0 	usesticky   B m    ��
�� boovfals A  C D C l     �� E��   E   display a notification?    D  F G F j    �� H�� 0 	displayit   H m    ��
�� boovtrue G  I J I l     ������  ��   J  K L K l     M�� M r      N O N m     ����   O o      ���� 0 growlrunning  ��   L  P Q P l     ������  ��   Q  R S R l     �� T��   T ' ! check to see if Growl is running    S  U V U l     ������  ��   V  W X W l   * Y�� Y Q    * Z [�� Z t    ! \ ] \ O  	   ^ _ ^ r     ` a ` I   �� b��
�� .corecnte****       **** b l    c�� c 6    d e d 2    ��
�� 
prcs e =    f g f 1    ��
�� 
pnam g m     h h  GrowlHelperApp   ��  ��   a o      ���� 0 growlrunning   _ m   	 
 i i�null     ߀��  
System Events.app�d �h�`����   |P0   )       ��(�cI���� }sevs   alis    v  paus                       �m�H+    
System Events.app                                                Z�����        ����  	                CoreServices    �m�n      ��<      
  
  
  2paus:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p  
  p a u s  -System/Library/CoreServices/System Events.app   / ��   ] m    ����  [ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   X  j k j l     ������  ��   k  l m l l  + � n�� n Z   + � o p���� o @   + . q r q o   + ,���� 0 growlrunning   r m   , -����  p k   1 � s s  t u t l  1 1������  ��   u  v w v l  1 1�� x��   x 8 2 register this plugin as an application with Growl    w  y z y O   1 S { | { I  5 R���� }
�� .registernull��� ��� null��   } �� ~ 
�� 
appl ~ o   7 <���� 0 appname appName  �� � �
�� 
anot � o   = B���� 
0 notifs   � �� � �
�� 
dnot � o   C H���� 0 	defnotifs   � �� ���
�� 
iapp � o   I N���� 0 templateapp templateApp��   | m   1 2 � �Bnull     ߀�� ��^GrowlHelperApp.appd �h�`����   |P0   )       ��(�cI���� �GRRR   alis    �  paus                       �m�H+   ��^GrowlHelperApp.app                                              ����7�        ����  	                	Resources     �m�n      ��~	     ��^ ��] ��\ !� �� ��  |  ^paus:Users:lryter:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p  
  p a u s  YUsers/lryter/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app   /    ��   z  � � � l  T T������  ��   �  � � � l  T T�� ���   �   perform a test    �  � � � Z   T � � ��� � � =   T W � � � m   T U����  � m   U V����  � k   Z q � �  � � � r   Z a � � � m   Z [��
�� boovfals � o      ���� 0 	usesticky   �  � � � r   b i � � � m   b c��
�� boovtrue � o      ���� 0 	displayit   �  ��� � r   j q � � � m   j m � �  One equals one.    � o      ���� 0 thedescription  ��  ��   � k   t � � �  � � � r   t { � � � m   t u��
�� boovfals � o      ���� 0 	displayit   �  � � � r   | � � � � m   | }��
�� boovfals � o      ���� 0 	usesticky   �  ��� � r   � � � � � m   � � � �  One does not equal one.    � o      ���� 0 thedescription  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   display a notification    �  � � � l  � �������  ��   �  ��� � Z   � � � ����� � o   � ����� 0 	displayit   � O   � � � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � o   � ����� $0 notificationname notificationName � �� � �
�� 
appl � o   � ����� 0 appname appName � �� � �
�� 
titl � o   � ����� 0 
notiftitle 
notifTitle � �� � �
�� 
desc � o   � ����� 0 thedescription   � �� ���
�� 
stck � o   � ����� 0 	usesticky  ��   � m   � � ���  ��  ��  ��  ��  ��   m  � � � l     ������  ��   �  ��� � l     ������  ��  ��       �� �   $ + � ����� ���   � 	�������������������� 0 templateapp templateApp�� 0 appname appName�� $0 notificationname notificationName�� 0 
notiftitle 
notifTitle�� 
0 notifs  �� 0 	defnotifs  �� 0 	usesticky  �� 0 	displayit  
�� .aevtoappnull  �   � **** � � ��  �   $
�� boovfals
�� boovtrue � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k     � � �  K � �  W � �  l�z�z  �}  �|   �   � �y�x i�w ��v h�u�t�s ��r�q�p�o�n�m ��l ��k�j�i�h�g�f�y 0 growlrunning  �x 
�w 
prcs �  
�v 
pnam
�u .corecnte****       ****�t  �s  
�r 
appl
�q 
anot
�p 
dnot
�o 
iapp�n 
�m .registernull��� ��� null�l 0 thedescription  
�k 
name
�j 
titl
�i 
desc
�h 
stck�g 

�f .notifygrnull��� ��� null�{ �jE�O �n� *�-�[�,\Z�81j E�UoW X  	hO�k �� *�b  �b  �b  �b   � UOkk  fEc  OeEc  Oa E` Y fEc  OfEc  Oa E` Ob   5� -*a b  �b  a b  a _ a b  a  UY hY hascr  ��ޭ