FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
"Append Date to Comments" for iTunes
written by Doug Adams
dougadams@mac.com

v1.0 july 14, 2006
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

       	  l     ������  ��   	  
  
 l     ������  ��        l     �� ��    � z change this if you like. this will appear between your original comments text--if any--and the date you eventually select         j     �� �� 	0 delim    m        	  -          l     ������  ��        l     �� ��      do not change this         p       ������ 0 
dd_message  ��        l     ������  ��        l     ��  O        !   k    ~ " "  # $ # l   ������  ��   $  % & % Z    x ' (�� ) ' >   
 * + * 1    ��
�� 
sele + J    	����   ( k    c , ,  - . - r     / 0 / 1    ��
�� 
sele 0 o      ���� 0 sel   .  1 2 1 r     3 4 3 m     5 5 ; 5appended to the Comments field of the selected tracks    4 o      ���� 0 
dd_message   2  6 7 6 r     8 9 8 n    : ; : I    �� <���� 0 	make_date   <  =�� = m     > >      ��  ��   ;  f     9 o      ���� 0 my_date   7  ?�� ? X     c @�� A @ Q   0 ^ B C�� B k   3 U D D  E F E r   3 9 G H G l  3 7 I�� I e   3 7 J J n   3 7 K L K 1   4 6��
�� 
pCmt L o   3 4���� 0 
this_track  ��   H o      ���� 0 orig_comment   F  M�� M Z   : U N O�� P N >  : = Q R Q o   : ;���� 0 orig_comment   R m   ; < S S       O r   @ M T U T l  @ I V�� V b   @ I W X W b   @ G Y Z Y o   @ A���� 0 orig_comment   Z o   A F���� 	0 delim   X o   G H���� 0 my_date  ��   U n       [ \ [ 1   J L��
�� 
pCmt \ o   I J���� 0 
this_track  ��   P r   P U ] ^ ] o   P Q���� 0 my_date   ^ n       _ ` _ 1   R T��
�� 
pCmt ` o   Q R���� 0 
this_track  ��   C R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 
this_track   A o   # $���� 0 sel  ��  ��   ) k   f x a a  b c b r   f k d e d m   f i f f  copied to the clipboard    e o      ���� 0 
dd_message   c  g�� g I  l x�� h��
�� .JonspClpnull���     **** h n  l t i j i I   m t�� k���� 0 	make_date   k  l�� l m   m p m m      ��  ��   j  f   l m��  ��   &  n�� n I  y ~������
�� .sysobeepnull��� ��� long��  ��  ��   ! m      o o�null     � ��  )
iTunes.appBT�����EV�   � /�E\�    �Y}@        ��$��Y}@��Հ��hook   alis    L  Mac HD Tiger               �p��H+    )
iTunes.app                                                      9�i,�        ����  	                Applications    �p�:      �is>      )  $Mac HD Tiger:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D   T i g e r  Applications/iTunes.app   / ��  ��     p q p l     ������  ��   q  r s r i    t u t I      �� v���� 0 	make_date   v  w�� w o      ���� 0 msg  ��  ��   u k     x x x  y z y r      { | { I     �������� 0 get_now  ��  ��   | o      ���� 0 default_date   z  } ~ } r      �  n     � � � 1    ��
�� 
ttxt � l    ��� � I   �� � �
�� .sysodlogaskr        TEXT � l    ��� � b     � � � b     � � � b     � � � o    	���� 0 msg   � m   	 
 � � ! Enter a date which will be     � o    ���� 0 
dd_message   � m     � �  :   ��   � �� � �
�� 
dtxt � o    ���� 0 default_date   � �� ���
�� 
appr � m     � �  Enter a Date   ��  ��   � o      ���� 0 my_date_string   ~  � � � Q    9 � � � � r    ' � � � c    % � � � l   # ��� � 4    #�� �
�� 
ldt  � o   ! "���� 0 my_date_string  ��   � m   # $��
�� 
TEXT � o      ���� 0 new_date   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 m  ��   � n  / 9 � � � I   0 9�� ����� 0 	make_date   �  ��� � b   0 5 � � � b   0 3 � � � m   0 1 � � # Bad date format! Try again...    � o   1 2��
�� 
ret  � o   3 4��
�� 
ret ��  ��   �  f   / 0 �  � � � l  : :������  ��   �  � � � r   : Z � � � l  : X ��� � I  : X�� � �
�� .sysodlogaskr        TEXT � m   : = � �  The date you entered:    � �� � �
�� 
dtxt � o   > ?���� 0 new_date   � �� � �
�� 
btns � J   B J � �  � � � m   B E � � 
 Redo    �  ��� � m   E H � �  OK   ��   � �� � �
�� 
dflt � m   M N����  � �� ���
�� 
appr � m   O R � �  Verify the Date   ��  ��   � o      ���� 0 	date_opts   �  ��� � Z   [ x � ��� � � =  [ d � � � n   [ ` � � � 1   \ `��
�� 
bhit � o   [ \���� 0 	date_opts   � m   ` c � �  ok    � L   g m � � c   g l � � � n   g j � � � 1   h j��
�� 
ttxt � o   g h���� 0 	date_opts   � m   j k��
�� 
TEXT��   � n  p x � � � I   q x�� ����� 0 	make_date   �  ��� � m   q t � �      ��  ��   �  f   p q��   s  � � � l     ������  ��   �  ��� � i   
 � � � I      �������� 0 get_now  ��  ��   � L      � � c      � � � l     ��� � e      � � I    �����
�� .misccurdldt    ��� null��  �  ��   � m    �~
�~ 
TEXT��       
�} �  � � � 5 � � ��}   � �|�{�z�y�x�w�v�u�| 	0 delim  �{ 0 	make_date  �z 0 get_now  
�y .aevtoappnull  �   � ****�x 0 
dd_message  �w 0 sel  �v 0 my_date  �u 0 orig_comment   � �t u�s�r � ��q�t 0 	make_date  �s �p ��p  �  �o�o 0 msg  �r   � �n�m�l�k�j�i�n 0 msg  �m 0 default_date  �l 0 my_date_string  �k 0 new_date  �j 0 m  �i 0 	date_opts   � �h ��g ��f�e ��d�c�b�a�`�_�^ ��]�\ ��[ � ��Z ��Y�X � ��h 0 get_now  �g 0 
dd_message  
�f 
dtxt
�e 
appr�d 
�c .sysodlogaskr        TEXT
�b 
ttxt
�a 
ldt 
�` 
TEXT�_ 0 m  �^  
�] 
ret �\ 0 	make_date  
�[ 
btns
�Z 
dflt�Y 
�X 
bhit�q y*j+  E�O��%�%�%���� �,E�O *�/�&E�W X  )��%�%k+ Oa �a a a lva l�a a  E�O�a ,a   ��,�&Y 
)a k+  � �W ��V�U � ��T�W 0 get_now  �V  �U   �   � �S�R
�S .misccurdldt    ��� null
�R 
TEXT�T 	*j  �& � �Q ��P�O � ��N
�Q .aevtoappnull  �   � **** � k      � �  �M�M  �P  �O   � �L�L 0 
this_track   �  o�K�J 5�I >�H�G�F�E�D�C�B S�A�@ f m�?�>
�K 
sele�J 0 sel  �I 0 
dd_message  �H 0 	make_date  �G 0 my_date  
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
pCmt�B 0 orig_comment  �A  �@  
�? .JonspClpnull���     ****
�> .sysobeepnull��� ��� long�N �� |*�,jv [*�,E�O�E�O)�k+ E�O B�[��l 
kh   '��,EE�O�� �b   %�%��,FY Ǡ�,FW X  h[OY��Y a E�O)a k+ j O*j U � �= ��=  �   � �  � �  ��<�;�: �  ��9�8�7 �  o�6�5�4
�6 
cSrc�5 +
�4 kfrmID  
�9 
cLiP�8�
�7 kfrmID  
�< 
cFlT�; �
�: kfrmID   � ; !Friday, July 14, 2006 12:25:24 PM                   � � � � H   -   F r i d a y ,   J u l y   1 4 ,   2 0 0 6   1 1 : 5 9 : 4 9   A M ascr  ��ޭ