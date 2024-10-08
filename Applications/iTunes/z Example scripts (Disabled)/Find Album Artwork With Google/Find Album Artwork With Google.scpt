FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
This is version 2 of Find Album Artwork With Google

Version History

Version 2:
- fixed an error with search strings glomming together
- will search for artist if there is no album name
- allows multiple tracks to be selected, but will only run a search on one of the track titles or artist (usually the last)

Version 1:
- inital release

Find Album Artwork With Google is an AppleScript for iTunes 4 that runs a Google image search on the selected track's album name with the hope of finding the according album artwork.

This script was made by Brett O'Connor, but most of the code was shamelessly borrowed from Apple's CDDB Search by Album script (especially the stuff that makes a string all query-string-y).

Brett's email address is: oconnorb@dogheadbone.com

This script can be found somewhere at http://www.negatendo.net/

Feel free to e-mail Brett with any comments or suggestions, but if you really want to make a change then you might want to consider just doing it yourself.

By using this script you agree that if it messes up your computer, it is not the fault of the author.

(Hint: To install this into iTunes, create a folder called "Scripts" (if it's not already there) in your user > Library > iTunes folder and copy it there.)

May 30, 2003
       	  l     ������  ��   	  
  
 j     �� �� 0 required_version    m        	 4.0         j    �� �� 0 
search_url 
search_URL  m       O Ihttp://images.google.com/images?ie=ISO-8859-1&hl=en&btnG=Google+Search&q=         l     ������  ��        l    � ��  O     �    k    �       I   	������
�� .miscactvnull��� ��� null��  ��     ��  Q   
 �     k    �      ! " ! r     # $ # c     % & % l    '�� ' 1    ��
�� 
vers��   & m    ��
�� 
TEXT $ o      ���� 0 this_version   "  ( ) ( Z    e * +���� * A    , - , o    ���� 0 this_version   - l    .�� . o    ���� 0 required_version  ��   + k    a / /  0 1 0 I   $������
�� .sysobeepnull��� ��� long��  ��   1  2 3 2 I  % A�� 4 5
�� .sysodlogaskr        TEXT 4 b   % 4 6 7 6 b   % 2 8 9 8 b   % 0 : ; : b   % . < = < b   % , > ? > m   % & @ @ + %This script requires iTunes version:     ? o   & +���� 0 required_version   = l 	 , - A�� A o   , -��
�� 
ret ��   ; o   . /��
�� 
ret  9 l 	 0 1 B�� B m   0 1 C C ! Current version of iTunes:    ��   7 o   2 3���� 0 this_version   5 �� D E
�� 
btns D J   5 9 F F  G H G m   5 6 I I  Update    H  J�� J m   6 7 K K  Cancel   ��   E �� L M
�� 
dflt L m   : ;����  M �� N��
�� 
disp N m   < =���� ��   3  O�� O Z   B a P Q���� P =  B M R S R l  B I T�� T n   B I U V U 1   E I��
�� 
bhit V l  B E W�� W 1   B E��
�� 
rslt��  ��   S m   I L X X  Update    Q k   P ] Y Y  Z [ Z n  P X \ ] \ I   Q X�� ^���� 0 access_website   ^  _�� _ m   Q T ` ` + %http://www.apple.com/itunes/download/   ��  ��   ]  f   P Q [  a�� a L   Y ] b b m   Y \ c c  incorrect version   ��  ��  ��  ��  ��  ��   )  d e d r   f t f g f l  f p h�� h n   f p i j i 1   l p��
�� 
sele j 4   f l�� k
�� 
cBrW k m   j k���� ��   g o      ���� 0 these_tracks   e  l m l Z  u � n o���� n =  u { p q p o   u x���� 0 these_tracks   q J   x z����   o R   ~ ��� r��
�� .ascrerr ****      � **** r m   � � s s 1 +No tracks are selected in the front window.   ��  ��  ��   m  t u t l  � ��� v��   v L F they can select multiple tracks, but only the first will be looked up    u  w x w r   � � y z y n   � � { | { 4   � ��� }
�� 
cobj } m   � �����  | o   � ����� 0 these_tracks   z o      ���� 0 
this_track   x  ~  ~ r   � � � � � c   � � � � � l  � � ��� � l  � � ��� � n   � � � � � 1   � ���
�� 
pAlb � o   � ����� 0 
this_track  ��  ��   � m   � ���
�� 
TEXT � o      ���� 0 this_searchstring     � � � l  � ��� ���   � ) # search for artist if no album name    �  ��� � Z   � � � ����� � =  � � � � � o   � ����� 0 this_searchstring   � m   � � � �       � r   � � � � � c   � � � � � l  � � ��� � l  � � ��� � n   � � � � � 1   � ���
�� 
pArt � o   � ����� 0 
this_track  ��  ��   � m   � ���
�� 
TEXT � o      ���� 0 this_searchstring  ��  ��  ��    R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 error_message   � �� ���
�� 
errn � o      ���� 0 error_number  ��    Z   � � � ��� � � >  � � � � � l  � � ��� � o   � ����� 0 error_number  ��   � m   � ������� � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 error_message   � �� � �
�� 
btns � J   � � � �  ��� � m   � � � �  Cancel   ��   � �� ���
�� 
dflt � m   � ����� ��  ��  ��   � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��    m      � ��null     ߀��  �
iTunes.app��h��62�   0��� �� �@   )        ��`�0,�����  hook   alis    2  gir                        ����H+    �
iTunes.app                                                      ͺρ6        ����                  Applications    ��N�      ��Ֆ      �  gir:Applications:iTunes.app    
 i T u n e s . a p p    g i r  Applications/iTunes.app   / ��  ��     � � � l  � � ��� � o   � ����� 0 this_searchstring  ��   �  � � � l     ������  ��   �  � � � l  � ��� � r   � � � � n  � � � � I   ��� ����� 0 encode_text   �  � � � o   � ����� 0 this_searchstring   �  � � � m   � ���
�� boovtrue �  ��� � m   � ���
�� boovtrue��  ��   �  f   � � � l      ��� � o      ���� 0 encoded_string  ��  ��   �  � � � l  ��� � r   � � � l  ��� � b   � � � o  ���� 0 
search_url 
search_URL � o  ���� 0 encoded_string  ��   � l      ��� � o      ���� 0 	final_url  ��  ��   �  � � � l  ��� � I  � ��~� 0 access_website   �  ��} � o  �|�| 0 	final_url  �}  �~  ��   �  � � � l     �{�z�{  �z   �  � � � i    	 � � � I      �y ��x�y 0 encode_text   �  � � � o      �w�w 0 	this_text   �  � � � o      �v�v 0 encode_url_a encode_URL_A �  ��u � o      �t�t 0 encode_url_b encode_URL_B�u  �x   � k     f � �  � � � r      � � � l 	    ��s � m      � � * $abcdefghijklmnopqrstuvwxyz0123456789   �s   � l      ��r � o      �q�q 0 standard_characters  �r   �  � � � r     � � � m     � �  $+!'/?;&@=#%><{}[]"~`^\|*    � l      ��p � o      �o�o 0 url_a_chars URL_A_chars�p   �  � � � r     � � � m    	 � � 
 .-_:    � l      ��n � o      �m�m 0 url_b_chars URL_B_chars�n   �  � � � r     � � � l    ��l � o    �k�k 0 standard_characters  �l   � l      ��j � o      �i�i 0 acceptable_characters  �j   �  � � � Z    � ��h�g � =    � � � o    �f�f 0 encode_url_a encode_URL_A � m    �e
�e boovfals � l 	   ��d � r     �  � b     l 	  �c l   �b o    �a�a 0 acceptable_characters  �b  �c   l   �` o    �_�_ 0 url_a_chars URL_A_chars�`    l     �^ o      �]�] 0 acceptable_characters  �^  �d  �h  �g   �  Z    /	
�\�[	 =    # o     !�Z�Z 0 encode_url_b encode_URL_B m   ! "�Y
�Y boovfals
 l 	 & +�X r   & + b   & ) l 	 & '�W l  & '�V o   & '�U�U 0 acceptable_characters  �V  �W   l  ' (�T o   ' (�S�S 0 url_b_chars URL_B_chars�T   l     �R o      �Q�Q 0 acceptable_characters  �R  �X  �\  �[    r   0 3 m   0 1       l     �P o      �O�O 0 encoded_text  �P    X   4 c�N Z   D ^ !�M"  E  D G#$# l  D E%�L% o   D E�K�K 0 acceptable_characters  �L  $ o   E F�J�J 0 	this_char  ! r   J O&'& l 	 J M(�I( l  J M)�H) b   J M*+* l  J K,�G, o   J K�F�F 0 encoded_text  �G  + o   K L�E�E 0 	this_char  �H  �I  ' l     -�D- o      �C�C 0 encoded_text  �D  �M  " r   R ^./. c   R \010 l 	 R Z2�B2 l  R Z3�A3 b   R Z454 l  R S6�@6 o   R S�?�? 0 encoded_text  �@  5 I   S Y�>7�=�> 0 encode_char  7 8�<8 o   T U�;�; 0 	this_char  �<  �=  �A  �B  1 m   Z [�:
�: 
TEXT/ l     9�99 o      �8�8 0 encoded_text  �9  �N 0 	this_char   o   7 8�7�7 0 	this_text   :�6: L   d f;; l  d e<�5< o   d e�4�4 0 encoded_text  �5  �6   � =>= l     �3�2�3  �2  > ?@? i   
 ABA I      �1C�0�1 0 encode_char  C D�/D o      �.�. 0 	this_char  �/  �0  B k     KEE FGF r     HIH l    J�-J l    K�,K I    �+L�*
�+ .sysoctonshor       TEXTL o     �)�) 0 	this_char  �*  �,  �-  I l     M�(M o      �'�' 0 	ascii_num 	ASCII_num�(  G NON r     PQP l 	  R�&R J    SS TUT m    	VV  0   U WXW m   	 
YY  1   X Z[Z m   
 \\  2   [ ]^] m    __  3   ^ `a` m    bb  4   a cdc m    ee  5   d fgf m    hh  6   g iji m    kk  7   j lml m    nn  8   m opo l 	  q�%q m    rr  9   �%  p sts m    uu  A   t vwv m    xx  B   w yzy m    {{  C   z |}| m    ~~  D   } � m    ��  E   � ��$� m    ��  F   �$  �&  Q l     ��#� o      �"�" 0 hex_list  �#  O ��� r   ! /��� n   ! -��� 4   " -�!�
�! 
cobj� l  % ,�� � [   % ,��� l  % *��� _   % *��� o   % &�� 0 	ascii_num 	ASCII_num� m   & )�� �  � m   * +�� �   � l  ! "��� o   ! "�� 0 hex_list  �  � o      �� 0 x  � ��� r   0 >��� n   0 <��� 4   1 <��
� 
cobj� l  4 ;��� [   4 ;��� l  4 9��� `   4 9��� o   4 5�� 0 	ascii_num 	ASCII_num� m   5 8�� �  � m   9 :�� �  � l  0 1��� o   0 1�� 0 hex_list  �  � o      �� 0 y  � ��� L   ? K�� c   ? J��� l  ? F��� b   ? F��� b   ? D��� m   ? B��  %   � o   B C�� 0 x  � o   D E�� 0 y  �  � m   F I�
� 
TEXT�  @ ��� l     �
�	�
  �	  � ��� i    ��� I      ���� 0 access_website  � ��� o      �� 0 this_url this_URL�  �  � P     ���� O    ��� I  	 ���
� .GURLGURLnull    ��� TEXT� o   	 
� �  0 this_url this_URL�  � m    ���null     ߀��  �
Finder.app��0   
�62����@���P� 8 �@(   )        ��`�0,����  MACS   alis    V  gir                        ����H+    �
Finder.app                                                       1Y�jX�        ����                  CoreServices    ��N�      �j��      �  
�  
�  *gir:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    g i r  &System/Library/CoreServices/Finder.app  / ��  �  � ����
�� consrmte��  �       ���  ������  � �������������� 0 required_version  �� 0 
search_url 
search_URL�� 0 encode_text  �� 0 encode_char  �� 0 access_website  
�� .aevtoappnull  �   � ****� �� ����������� 0 encode_text  �� ����� �  �������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B��  � 	�������������������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B�� 0 standard_characters  �� 0 url_a_chars URL_A_chars�� 0 url_b_chars URL_B_chars�� 0 acceptable_characters  �� 0 encoded_text  �� 0 	this_char  � 	 � � �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 encode_char  
�� 
TEXT�� g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�� ��B���������� 0 encode_char  �� ����� �  ���� 0 	this_char  ��  � ������������ 0 	this_char  �� 0 	ascii_num 	ASCII_num�� 0 hex_list  �� 0 x  �� 0 y  � ��VY\_behknrux{~���������
�� .sysoctonshor       TEXT�� 
�� 
cobj
�� 
TEXT�� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &� ������������� 0 access_website  �� ����� �  ���� 0 this_url this_URL��  � ���� 0 this_url this_URL� ����
�� .GURLGURLnull    ��� TEXT�� g� � �j UV� �����������
�� .aevtoappnull  �   � ****� k    ��  ��  ���  ���  ���  �����  ��  ��  � ������ 0 error_message  �� 0 error_number  � ) ����������� @�� C�� I K������������ X `�� c������ s�������� �������� �����������
�� .miscactvnull��� ��� null
�� 
vers
�� 
TEXT�� 0 this_version  
�� .sysobeepnull��� ��� long
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 access_website  
�� 
cBrW
�� 
sele�� 0 these_tracks  
�� 
cobj�� 0 
this_track  
�� 
pAlb�� 0 this_searchstring  
�� 
pArt�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ������ 
�� 
errn�� 0 encode_text  �� 0 encoded_string  �� 0 	final_url  ��� �*j O �*�,�&E�O�b    G*j O�b   %�%�%�%�%���lv�l�l� O_ a ,a   )a k+ Oa Y hY hO*a k/a ,E` O_ jv  )ja Y hO_ a k/E` O_ a ,�&E` O_ a   _ a ,�&E` Y hW 1X   !�a " *j O��a #kv�ka $ Y )a %a "lhUO_ O)_ eem+ &E` 'Ob  _ '%E` (O*_ (k+ ascr  ��ޭ