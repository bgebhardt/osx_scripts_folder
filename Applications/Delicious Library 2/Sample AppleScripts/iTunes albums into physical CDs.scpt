FasdUAS 1.101.10   ��   ��    k             l     ��  ��    "  Menu Path: "File", "Import"     � 	 	 8   M e n u   P a t h :   " F i l e " ,   " I m p o r t "   
  
 l     ��  ��    "  Menu Title: "iTunes Albums"     �   8   M e n u   T i t l e :   " i T u n e s   A l b u m s "      l     ��������  ��  ��        l     ��  ��    � � This script adds "Unprotected" iTunes albums to your main music collection, on the theory that any unprotected items were ripped from CD and therefore actually in your physical collection     �  x   T h i s   s c r i p t   a d d s   " U n p r o t e c t e d "   i T u n e s   a l b u m s   t o   y o u r   m a i n   m u s i c   c o l l e c t i o n ,   o n   t h e   t h e o r y   t h a t   a n y   u n p r o t e c t e d   i t e m s   w e r e   r i p p e d   f r o m   C D   a n d   t h e r e f o r e   a c t u a l l y   i n   y o u r   p h y s i c a l   c o l l e c t i o n      l     ��  ��    r l Big thanks to Doug's AppleScripts for iTunes (dougscripts.com) for helping me figure out some of this stuff     �   �   B i g   t h a n k s   t o   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s   ( d o u g s c r i p t s . c o m )   f o r   h e l p i n g   m e   f i g u r e   o u t   s o m e   o f   t h i s   s t u f f      l     ��������  ��  ��        p         ������ *0 temporarycoverfiles temporaryCoverFiles��       !   l     "���� " r      # $ # J     ����   $ o      ���� *0 temporarycoverfiles temporaryCoverFiles��  ��   !  % & % l     ��������  ��  ��   &  ' ( ' l   m )���� ) O    m * + * k    l , ,  - . - r     / 0 / l    1���� 1 6    2 3 2 2    ��
�� 
iLBM 3 H     4 4 D     5 6 5 1    ��
�� 
AURL 6 m     7 7 � 8 8  m 4 p��  ��   0 o      ���� 0 itunesalbums iTunesAlbums .  9�� 9 X    l :�� ; : k   , g < <  = > = r   , 6 ? @ ? n  , 4 A B A I   - 4�� C���� .0 coverartforalbumnamed coverArtForAlbumNamed C  D�� D n   - 0 E F E 1   . 0��
�� 
pnam F o   - .���� 0 itunesalbum iTunesAlbum��  ��   B  f   , - @ o      ���� *0 fileurlfortempcover fileURLForTempCover >  G H G r   7 Q I J I I  7 M���� K
�� .corecrel****      � null��   K �� L M
�� 
kocl L m   9 :��
�� 
MUS3 M �� N O
�� 
data N o   ; <���� 0 itunesalbum iTunesAlbum O �� P��
�� 
prdt P K   ? G Q Q �� R��
�� 
NOT3 R m   B E S S � T T ( i m p o r t e d   f r o m   i T u n e s��  ��   J o      ���� 0 newalbum newAlbum H  U�� U Z  R g V W���� V >  R W X Y X o   R S���� *0 fileurlfortempcover fileURLForTempCover Y m   S V��
�� 
msng W r   Z c Z [ Z o   Z [���� *0 fileurlfortempcover fileURLForTempCover [ n      \ ] \ 1   ^ b��
�� 
CV3r ] o   [ ^���� 0 newalbum newAlbum��  ��  ��  �� 0 itunesalbum iTunesAlbum ; o     ���� 0 itunesalbums iTunesAlbums��   + n    	 ^ _ ^ 4   	�� `
�� 
docu ` m    ����  _ m     a a                                                                                  DLb2   alis    �  
Roast Beef                 ��H+   x��Delicious Library 2.app                                         |@��[��        ����  	                Development     ��v�      �\+=     x�� G"� F�c D��  ERoast Beef:Users:dragon:Temporary:Development:Delicious Library 2.app   0  D e l i c i o u s   L i b r a r y   2 . a p p   
 R o a s t   B e e f  :Users/dragon/Temporary/Development/Delicious Library 2.app  /    ��  ��  ��   (  b c b l     ��������  ��  ��   c  d e d l  n | f���� f O   n | g h g I  t {�� i��
�� .coredeloobj        obj  i n  t w j k j 2   u w��
�� 
cobj k o   t u���� *0 temporarycoverfiles temporaryCoverFiles��   h m   n q l l�                                                                                  MACS   alis    l  
Roast Beef                 ��H+   D3�
Finder.app                                                      D�<��        ����  	                CoreServices    ��v�      ��      D3� D3k D3j  1Roast Beef:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 R o a s t   B e e f  &System/Library/CoreServices/Finder.app  / ��  ��  ��   e  m n m l     ��������  ��  ��   n  o�� o i      p q p I      �� r���� .0 coverartforalbumnamed coverArtForAlbumNamed r  s�� s o      ���� 0 	albumname 	albumName��  ��   q O     t u t k    v v  w x w Q    F y z { y r    0 | } | n    . ~  ~ 4  + .�� �
�� 
cArt � m   , -����   l   + ����� � 6  + � � � n     � � � 4   �� �
�� 
cFlT � m    ����  � l    ����� � 6    � � � 4   �� �
�� 
cPly � m   	 
����  � =    � � � 1    ��
�� 
pSpK � m    ��
�� eSpKkSpZ��  ��   � F    * � � � l   ! ����� � H    ! � � C      � � � n    � � � 1    ��
�� 
pKnd �  g     � m     � � � � �  P r o t e c t e d��  ��   � l  " ) ����� � =  " ) � � � n  # % � � � 1   # %��
�� 
pAlb �  g   # # � o   & (���� 0 	albumname 	albumName��  ��  ��  ��   } o      ���� 0 coverart coverArt z R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 
covererror 
coverError��   { k   8 F � �  � � � I  8 C�� ���
�� .ascrcmnt****      � **** � b   8 ? � � � b   8 = � � � b   8 ; � � � m   8 9 � � � � � 8 E r r o r   l o a d i n g   c o v e r   a r t   f o r   � o   9 :���� 0 	albumname 	albumName � m   ; < � � � � �  :   � o   = >���� 0 
covererror 
coverError��   �  ��� � L   D F � � m   D E��
�� 
msng��   x  � � � r   G R � � � c   G P � � � n  G L � � � 1   H L��
�� 
pFmt � o   G H���� 0 coverart coverArt � m   L O��
�� 
TEXT � o      ���� 0 coverformat coverFormat �  � � � Z   S u � � � � � E   S X � � � o   S T���� 0 coverformat coverFormat � m   T W � � � � �  J P E G � r   [ ` � � � m   [ ^ � � � � �  . j p g � o      ���� 0 fileextension fileExtension �  � � � E   c h � � � o   c d���� 0 coverformat coverFormat � m   d g � � � � �  P N G �  ��� � r   k p � � � m   k n � � � � �  . p n g � o      ���� 0 fileextension fileExtension��   � L   s u � � m   s t��
�� 
msng �  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   � N H Delicious Library will only accept a URL to a local file, not raw data.    � � � � �   D e l i c i o u s   L i b r a r y   w i l l   o n l y   a c c e p t   a   U R L   t o   a   l o c a l   f i l e ,   n o t   r a w   d a t a . �  � � � l  v v�� � ���   � S M iTunes has 222 bytes of junk in front of the image data that we must remove.    � � � � �   i T u n e s   h a s   2 2 2   b y t e s   o f   j u n k   i n   f r o n t   o f   t h e   i m a g e   d a t a   t h a t   w e   m u s t   r e m o v e . �  � � � l  v v�� � ���   � T N There seems to be no way in AppleScript to access the bytes of data directly.    � � � � �   T h e r e   s e e m s   t o   b e   n o   w a y   i n   A p p l e S c r i p t   t o   a c c e s s   t h e   b y t e s   o f   d a t a   d i r e c t l y . �  � � � l  v v�� � ���   � L F Hence, we have to write it out, read it back, and write it out again.    � � � � �   H e n c e ,   w e   h a v e   t o   w r i t e   i t   o u t ,   r e a d   i t   b a c k ,   a n d   w r i t e   i t   o u t   a g a i n . �  � � � l  v v�� � ���   � M G Hopefully file system caching will make this not terribly inefficient.    � � � � �   H o p e f u l l y   f i l e   s y s t e m   c a c h i n g   w i l l   m a k e   t h i s   n o t   t e r r i b l y   i n e f f i c i e n t . �  � � � r   v � � � � c   v � � � � l  v � ����� � b   v � � � � b   v � � � � l  v } ����� � I  v }�� ���
�� .earsffdralis        afdr � m   v y��
�� afdrtemp��  ��  ��   � l  } � ���~ � I  } ��}�|�{
�} .sysorandnmbr    ��� nmbr�|  �{  �  �~   � o   � ��z�z 0 fileextension fileExtension��  ��   � m   � ��y
�y 
TEXT � o      �x�x 0 	coverpath 	coverPath �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ��w
�w 
pPCT � o   � ��v�v 0 coverart coverArt � m   � ��u
�u 
PICT � o      �t�t 0 	coverdata 	coverData �    r   � � l  � ��s�r I  � ��q
�q .rdwropenshor       file o   � ��p�p 0 	coverpath 	coverPath �o�n
�o 
perm m   � ��m�m �n  �s  �r   o      �l�l 0 	coverfile 	coverFile 	 I  � ��k

�k .rdwrwritnull���     ****
 o   � ��j�j 0 	coverdata 	coverData �i
�i 
wrat m   � ��h�h   �g
�g 
refn o   � ��f�f 0 	coverfile 	coverFile �e�d
�e 
as   m   � ��c
�c 
PICT�d  	  r   � � I  � ��b
�b .rdwrread****        **** o   � ��a�a 0 	coverfile 	coverFile �`
�` 
rdfm m   � ��_�_ � �^�]
�^ 
as   m   � ��\
�\ 
PICT�]   o      �[�[ 0 	coverdata 	coverData  I  � ��Z
�Z .rdwrwritnull���     **** o   � ��Y�Y 0 	coverdata 	coverData �X
�X 
wrat m   � ��W�W   �V !
�V 
refn  o   � ��U�U 0 	coverfile 	coverFile! �T"�S
�T 
as  " m   � ��R
�R 
PICT�S   #$# I  � ��Q%�P
�Q .rdwrclosnull���     ****% o   � ��O�O 0 	coverfile 	coverFile�P  $ &'& l  � ��N�M�L�N  �M  �L  ' ()( r   � �*+* o   � ��K�K 0 	coverpath 	coverPath+ n      ,-,  ;   � �- o   � ��J�J *0 temporarycoverfiles temporaryCoverFiles) .�I. O  �/0/ L   �11 n   �232 1   ��H
�H 
url 3 l  � �4�G�F4 c   � �565 o   � ��E�E 0 	coverpath 	coverPath6 m   � ��D
�D 
alis�G  �F  0 m   � �77�                                                                                  sevs   alis    �  
Roast Beef                 ��H+   D3�System Events.app                                               E�KG        ����  	                CoreServices    ��v�      ���     D3� D3k D3j  8Roast Beef:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p   
 R o a s t   B e e f  -System/Library/CoreServices/System Events.app   / ��  �I   u m     88�                                                                                  hook   alis    F  
Roast Beef                 ��H+   D3�
iTunes.app                                                      F�L��        ����  	                Applications    ��v�      �i1     D3�  "Roast Beef:Applications:iTunes.app   
 i T u n e s . a p p   
 R o a s t   B e e f  Applications/iTunes.app   / ��  ��       �C9:;�C  9 �B�A�B .0 coverartforalbumnamed coverArtForAlbumNamed
�A .aevtoappnull  �   � ****: �@ q�?�><=�=�@ .0 coverartforalbumnamed coverArtForAlbumNamed�? �<>�< >  �;�; 0 	albumname 	albumName�>  < �:�9�8�7�6�5�4�3�: 0 	albumname 	albumName�9 0 coverart coverArt�8 0 
covererror 
coverError�7 0 coverformat coverFormat�6 0 fileextension fileExtension�5 0 	coverpath 	coverPath�4 0 	coverdata 	coverData�3 0 	coverfile 	coverFile= +8�2?�1�0�/�. ��-�,�+�* � ��)�(�'�& � � � ��%�$�#�"�!� ������������7��
�2 
cPly?  
�1 
pSpK
�0 eSpKkSpZ
�/ 
cFlT
�. 
pKnd
�- 
pAlb
�, 
cArt�+ 0 
covererror 
coverError�*  
�) .ascrcmnt****      � ****
�( 
msng
�' 
pFmt
�& 
TEXT
�% afdrtemp
�$ .earsffdralis        afdr
�# .sysorandnmbr    ��� nmbr
�" 
pPCT
�! 
PICT
�  
perm
� .rdwropenshor       file
� 
wrat
� 
refn
� 
as  � 
� .rdwrwritnull���     ****
� 
rdfm� �� 
� .rdwrread****        ****
� .rdwrclosnull���     ****� *0 temporarycoverfiles temporaryCoverFiles
� 
alis
� 
url �=� .*�k/�[�,\Z�81�k/�[[�,\Z�>C\[�,\Z�8A1�k/E�W X 
 �%�%�%j O�O�a ,a &E�O�a  
a E�Y �a  
a E�Y �Oa j *j %�%a &E�O�a ,a &E�O�a kl E�O�a ja �a a a   !O�a "a #a a a $ %E�O�a ja �a a a   !O�j &O�_ '6FOa ( �a )&a *,EUU; �@��AB�
� .aevtoappnull  �   � ****@ k     |CC   DD  'EE  d��  �  �  A �� 0 itunesalbum iTunesAlbumB � a�
�	?� 7�������� ������ S���������� l��� *0 temporarycoverfiles temporaryCoverFiles
�
 
docu
�	 
iLBM
� 
AURL� 0 itunesalbums iTunesAlbums
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam� .0 coverartforalbumnamed coverArtForAlbumNamed� *0 fileurlfortempcover fileURLForTempCover
�  
MUS3
�� 
data
�� 
prdt
�� 
NOT3�� 
�� .corecrel****      � null�� 0 newalbum newAlbum
�� 
msng
�� 
CV3r
�� .coredeloobj        obj � }jvE�O��k/ b*�-�[�,\Z�?C1E�O O�[��l 
kh  )��,k+ E�O*���a a a la  E` O�a  �_ a ,FY h[OY��UOa  	��-j Uascr  ��ޭ