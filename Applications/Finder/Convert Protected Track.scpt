FasdUAS 1.101.10   ��   ��    k             l     �� ��    8 2 script to convert a protected AAC to an AIFF file       	  l     �� 
��   
 . ( requires wiretap from Ambrosia software    	     l     ������  ��        j     �� �� "0 wiretapfilesloc wireTapFilesLoc  m       balis    ^  Kermit                     ���ZH+   mWireTap files                                                   P�O�        ����  	                Desktop     ��>�      ��_     m b  |  (Kermit:Users:bryan:Desktop:WireTap files    W i r e T a p   f i l e s    K e r m i t  !Users/bryan/Desktop/WireTap files   /    ��        l     ������  ��        l     �� ��    K E assume the format is iTunes_recordingXXX.aiff, where XXX is a number         j    �� �� &0 wiretapfileformat wireTapFileFormat  m        iTunes_recording         l     ������  ��        l     ��  Q         !  I   �� "��
�� .sysodlogaskr        TEXT " b     # $ # b    
 % & % m     ' ' / )WireTap file names must be of the format     & o    	���� &0 wiretapfileformat wireTapFileFormat $ m   
  ( ( r lXXX.aiff where XXX is a number.  If the are not please select cancel, change WireTap, and rerun this script.   ��     R      ������
�� .ascrerr ****      � ****��  ��   ! L     ) ) m    ��������     * + * l     ������  ��   +  , - , l     �� .��   . 1 +first set the location of the WireTap files    -  / 0 / l   0 1�� 1 r    0 2 3 2 I   *���� 4
�� .sysostflalis    ��� null��   4 �� 5 6
�� 
prmp 5 m     7 7 / )Select the location of your WireTap files    6 �� 8 9
�� 
dflc 8 l   $ :�� : I   $�� ;��
�� .earsffdralis        afdr ; m     ��
�� afdmdesk��  ��   9 �� <��
�� 
mlsl < m   % &��
�� boovfals��   3 o      ���� "0 wiretapfilesloc wireTapFilesLoc��   0  = > = l     ������  ��   >  ? @ ? l     �� A��   A &   start up "WireTap" if necessary    @  B C B l  1 ; D�� D O  1 ; E F E I  5 :������
�� .miscactvnull��� ��� null��  ��   F m   1 2 G G�null     ߧ�� D�WireTap.app�@� �0�L��� 80���p    ��   )       �(�K� ���� �wTap   alis    N  Kermit                     ���ZH+   D�WireTap.app                                                     E�/�B        ����  	                WireTap     ��>�      �0+�     D�  ^  'Kermit:Applications:WireTap:WireTap.app     W i r e T a p . a p p    K e r m i t   Applications/WireTap/WireTap.app  / ��  ��   C  H I H l     ������  ��   I  J K J l  <� L�� L O   <� M N M k   B� O O  P Q P Q   B k R S T R r   E S U V U n   E O W X W 4   J O�� Y
�� 
cobj Y m   M N����  X 1   E J��
�� 
sele V o      ���� 0 t   S R      �� Z [
�� .ascrerr ****      � **** Z o      ���� 0 errmsg errMsg [ �� \��
�� 
errn \ o      ���� 0 errnum errNum��   T k   [ k ] ]  ^ _ ^ I  [ h�� `��
�� .sysodlogaskr        TEXT ` b   [ d a b a b   [ ` c d c m   [ ^ e e  Nothing selected (    d o   ^ _���� 0 errnum errNum b m   ` c f f  ).   ��   _  g�� g L   i k h h m   i j��������   Q  i j i l  l l������  ��   j  k l k Z   l � m n���� m >   l w o p o n   l s q r q 1   o s��
�� 
pKnd r o   l o���� 0 t   p m   s v s s  Protected AAC audio file    n k   z � t t  u v u I  z ��� w��
�� .sysodlogaskr        TEXT w b   z � x y x b   z � z { z m   z } | |  track "    { n   } � } ~ } 1   � ���
�� 
pnam ~ o   } ����� 0 t   y m   � �   L F" is not a Protected AAC audio file.  Please select a different track.   ��   v  ��� � L   � � � � m   � ���������  ��  ��   l  � � � l  � �������  ��   �  � � � l  � ��� ���   � * $ we've got a valid track to convert.    �  � � � l  � �������  ��   �  � � � l  � ��� ���   � "  now get the time to record.    �  � � � l  � ��� ���   � > 8 may need to add 1 seconds just in case, but for not no.    �  � � � r   � � � � � l  � � ��� � \   � � � � � l  � � ��� � n   � � � � � 1   � ���
�� 
pStp � o   � ����� 0 t  ��   � l  � � ��� � n   � � � � � 1   � ���
�� 
pStr � o   � ����� 0 t  ��  ��   � o      ���� 0 timetorecord timeToRecord �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   confirm conversion    �  � � � Q   � � � � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  Convert track "    � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 t   � m   � � � � 
 "? (    � o   � ����� 0 timetorecord timeToRecord � m   � � � �  	 seconds)   ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L   � � � � m   � ������� �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   stop iTunes playing    �  � � � I  � �������
�� .hookStopnull        null��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   start recording    �  � � � O  � � � � � I  � �������
�� .wTapReconull���    obj ��  ��   � m   � � G �  � � � l  � �������  ��   �  � � � l  � ��� ���   � $  start playing track in iTunes    �  � � � I  � ��� ���
�� .hookPlaynull    ��� obj  � o   � ����� 0 t  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � %  delay until it is done playing    �  � � � I  � ��� ���
�� .sysodelanull��� ��� long � o   � ����� 0 timetorecord timeToRecord��   �  � � � l  � ��� ���   �  delay 3 -- for debugging    �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   stop recording    �  � � � O  � � � � I  � ����~
�� .wTapStopnull���    obj �  �~   � m   � � G �  � � � l �}�|�}  �|   �  � � � l �{ ��{   �   stop iTunes    �  � � � I �z�y�x
�z .hookStopnull        null�y  �x   �  � � � l �w�v�w  �v   �  � � � l �u ��u   � � � now change the file name of the recording to match the track name and iTunes database id.  (This might not be necessary as after converting iTunes will automatically fix the file name if you use iTunes in the same way as me.)    �  � � � r  # � � � b   � � � b   � � � b   � � � n   � � � 1  �t
�t 
pnam � o  �s�s 0 t   � m   � �       � l  ��r � n   � � � 1  �q
�q 
pDID � o  �p�p 0 t  �r   � m   � �  .aiff    � o      �o�o 0 newfilename newFileName �  � � � r  $0   n $, I  %,�n�m�n 0 setfilename SetFileName �l o  %(�k�k 0 newfilename newFileName�l  �m    f  $% o      �j�j 0 thefile theFile �  l 11�i�h�i  �h   	 l 11�g
�g  
 + % pick a playlist to add the tracks to   	  r  1: n 16 I  26�f�e�d�f 0 getplaylists GetPlayLists�e  �d    f  12 o      �c�c 0 l    l ;;�b�a�b  �a    r  ;S n  ;O 4  JO�`
�` 
cobj m  MN�_�_  l ;J�^ I ;J�]
�] .gtqpchltTEXT  @   @ TEXT o  ;>�\�\ 0 l   �[
�[ 
prmp m  ?B > 8Choose an iTunes play list to add the converted song to.    �Z �Y
�Z 
mlsl  m  CD�X
�X boovfals�Y  �^   o      �W�W 0 thelist theList !"! l TT�V�U�V  �U  " #$# l TT�T%�T  % 3 - add the file to the selected iTunes playlist   $ &'& r  Tj()( I Tf�S*+
�S .hookAdd cTrk      @ alis* o  TW�R�R 0 thefile theFile+ �Q,�P
�Q 
insh, 4  Zb�O-
�O 
cUsP- o  ^a�N�N 0 thelist theList�P  ) o      �M�M 0 thetrack theTrack' ./. l kk�L�K�L  �K  / 010 l kk�J2�J  2 H B convert the file to AAC (or whatever is set in your iTunes prefs)   1 343 r  kv565 I kr�I7�H
�I .hookConvcTrk      @ obj 7 o  kn�G�G 0 thetrack theTrack�H  6 o      �F�F &0 theconvertedtrack theConvertedTrack4 898 l ww�E�D�E  �D  9 :;: l ww�C<�C  < / ) add the converted track to the play list   ; =>= I w��B?@
�B .coreclon****      � ****? n  wABA 4  z�AC
�A 
cobjC m  }~�@�@ B o  wz�?�? &0 theconvertedtrack theConvertedTrack@ �>D�=
�> 
inshD 4  ���<E
�< 
cUsPE o  ���;�; 0 thelist theList�=  > FGF l ���:�9�:  �9  G HIH l ���8�7�8  �7  I JKJ l ���6L�6  L : 4 set the files tag information to match the original   K MNM r  ��OPO n  ��QRQ 4  ���5S
�5 
cobjS m  ���4�4 R o  ���3�3 &0 theconvertedtrack theConvertedTrackP o      �2�2 0 nt  N TUT r  ��VWV l ��X�1X e  ��YY n  ��Z[Z 1  ���0
�0 
pnam[ o  ���/�/ 0 t  �1  W n      \]\ 1  ���.
�. 
pnam] o  ���-�- 0 nt  U ^_^ r  ��`a` l ��b�,b e  ��cc n  ��ded 1  ���+
�+ 
pAlbe o  ���*�* 0 t  �,  a n      fgf 1  ���)
�) 
pAlbg o  ���(�( 0 nt  _ hih r  ��jkj l ��l�'l e  ��mm n  ��non 1  ���&
�& 
pArto o  ���%�% 0 t  �'  k n      pqp 1  ���$
�$ 
pArtq o  ���#�# 0 nt  i rsr r  ��tut l ��v�"v e  ��ww n  ��xyx 1  ���!
�! 
pCmty o  ��� �  0 t  �"  u n      z{z 1  ���
� 
pCmt{ o  ���� 0 nt  s |}| r  ��~~ l ����� e  ���� n  ����� 1  ���
� 
pAnt� o  ���� 0 t  �   n      ��� 1  ���
� 
pAnt� o  ���� 0 nt  } ��� r  ���� l ����� e  ���� n  ����� 1  ���
� 
pCmp� o  ���� 0 t  �  � n      ��� 1  � �
� 
pCmp� o  ���� 0 nt  � ��� r  ��� l 
��� e  
�� n  
��� 1  	�
� 
pDsN� o  �� 0 t  �  � n      ��� 1  �
� 
pDsN� o  
�� 0 nt  � ��� l ���  � 5 / must set the disc number before the disc count   � ��� r  #��� l ��� e  �� n  ��� 1  �
� 
pDsC� o  �� 0 t  �  � n      ��� 1  "�

�
 
pDsC� o  �	�	 0 nt  � ��� r  $4��� l $,��� e  $,�� n  $,��� 1  '+�
� 
pGen� o  $'�� 0 t  �  � n      ��� 1  /3�
� 
pGen� o  ,/�� 0 nt  � ��� r  5E��� l 5=��� e  5=�� n  5=��� 1  8<�
� 
pGrp� o  58�� 0 t  �  � n      ��� 1  @D� 
�  
pGrp� o  =@���� 0 nt  � ��� r  FV��� l FN���� e  FN�� n  FN��� 1  IM��
�� 
pPlC� o  FI���� 0 t  ��  � n      ��� 1  QU��
�� 
pPlC� o  NQ���� 0 nt  � ��� r  Wg��� l W_���� e  W_�� n  W_��� 1  Z^��
�� 
pPlD� o  WZ���� 0 t  ��  � n      ��� 1  bf��
�� 
pPlD� o  _b���� 0 nt  � ��� r  hx��� l hp���� e  hp�� n  hp��� 1  ko��
�� 
pRte� o  hk���� 0 t  ��  � n      ��� 1  sw��
�� 
pRte� o  ps���� 0 nt  � ��� l yy�����  � 7 1 must set the track number before the track count   � ��� r  y���� l y����� e  y��� n  y���� 1  |���
�� 
pTrN� o  y|���� 0 t  ��  � n      ��� 1  ����
�� 
pTrN� o  ������ 0 nt  � ��� r  ����� l ������ e  ���� n  ����� 1  ����
�� 
pTrC� o  ������ 0 t  ��  � n      ��� 1  ����
�� 
pTrC� o  ������ 0 nt  � ��� r  ����� l ������ e  ���� n  ����� 1  ����
�� 
pAdj� o  ������ 0 t  ��  � l     ���� n      ��� 1  ����
�� 
pAdj� o  ������ 0 nt  ��  � ��� r  ����� l ������ e  ��   n  �� 1  ����
�� 
pYr  o  ������ 0 t  ��  � n       1  ����
�� 
pYr  o  ������ 0 nt  �  l ��������  ��    l ����	��  	 3 - remove the aiff file from the iTunes library    

 l ������   1 + first must move the aiff file to the trash     l ������     TO DO figure this out     l ������   7 1 then delete it from the iTunes library play list     l ������     TODO fix this     l ������   O Idelete theTrack <-- need to turn this into a library play list reference!     l ��������  ��    I ������
�� .sysodlogaskr        TEXT m  �� � �Finished conversion.  Remember to delete the .aiff file added to your iTunes library.  This will be automated in a future version.   ��   �� l ��������  ��  ��   N m   < ?  �null     ߀��  ^
iTunes.app  P� �0    ���0N{0� �0                 GT�(0|���p  hook   alis    :  Kermit                     ���ZH+    ^
iTunes.app                                                      ٜ��*q        ����  	                Applications    ��>�      ����      ^  Kermit:Applications:iTunes.app   
 i T u n e s . a p p    K e r m i t  Applications/iTunes.app   / ��  ��   K !"! l     ������  ��  " #$# l     ��%��  % L F sets the file name of the biggest numbered file to the passed in name   $ &'& i    	()( I      ��*���� 0 setfilename SetFileName* +��+ o      ���� 0 newfilename newFileName��  ��  ) O     �,-, k    �.. /0/ l   ��1��  1 E ? we'll assume the highest numbered recording is the one we want   0 232 l   454 r    676 m    ����  7 o      ���� 0 
biggestnum 
biggestNum5   default value   3 898 l   ������  ��  9 :;: l   ��<��  < 4 . calcuate the number offsets outside the loop.   ; =>= r    ?@? I   ��A��
�� .corecnte****       ****A n   BCB 2   ��
�� 
cha C o    ���� &0 wiretapfileformat wireTapFileFormat��  @ o      ���� 0 numstart numStart> DED l   ������  ��  E FGF r    HIH n    JKJ 2   ��
�� 
fileK o    ���� "0 wiretapfilesloc wireTapFilesLocI o      ���� 0 filelist fileListG LML I    %��N��
�� .ascrcmnt****      � ****N o     !���� 0 filelist fileList��  M OPO X   & ~Q��RQ k   6 ySS TUT r   6 ;VWV n   6 9XYX 1   7 9��
�� 
pnamY o   6 7���� 0 f  W o      ���� 0 filename fileNameU Z[Z l  < <��\��  \ F @ go through each file and if the name contains wireTapFileFormat   [ ]^] l  < <������  ��  ^ _`_ Z   < wab����a C   < Ccdc o   < =���� 0 filename fileNamed o   = B���� &0 wiretapfileformat wireTapFileFormatb k   F see fgf I  F K��h��
�� .ascrcmnt****      � ****h o   F G���� 0 filename fileName��  g iji l  L L��k��  k    note it's number.   j lml r   L _non l  L ]p��p c   L ]qrq n   L [sts 7 M [��uv
�� 
cha u l  Q Uw��w [   Q Uxyx o   R S���� 0 numstart numStarty m   S T���� ��  v l  V Zz��z [   V Z{|{ o   W X���� 0 numstart numStart| m   X Y���� ��  t o   L M���� 0 filename fileNamer m   [ \��
�� 
TEXT��  o o      ���� 0 filenum fileNumm }~} l  ` `������  ��  ~ � l  ` `�����  � = 7 if it is bigger than the last one then save the number   � ��� Z   ` q������� ?   ` g��� l  ` c���� c   ` c��� o   ` a���� 0 filenum fileNum� m   a b��
�� 
nmbr��  � l  c f���� c   c f��� o   c d���� 0 
biggestnum 
biggestNum� m   d e��
�� 
nmbr��  � k   j m�� ��� l  j j�����  � 0 * now grab the file with the biggest number   � ���� r   j m��� o   j k���� 0 filenum fileNum� o      ���� 0 
biggestnum 
biggestNum��  ��  ��  � ���� l  r r������  ��  ��  ��  ��  ` ���� l  x x������  ��  ��  �� 0 f  R o   ) *���� 0 filelist fileListP ��� I   �����
�� .ascrcmnt****      � ****� o    ��~�~ 0 
biggestnum 
biggestNum�  � ��� l  � ��}�|�}  �|  � ��� l  � ��{��{  �    confirm the file is there   � ��� r   � ���� b   � ���� b   � ���� o   � ��z�z &0 wiretapfileformat wireTapFileFormat� o   � ��y�y 0 
biggestnum 
biggestNum� m   � ���  .aiff   � o      �x�x "0 biggestfilename biggestFileName� ��� I  � ��w��v
�w .ascrcmnt****      � ****� o   � ��u�u "0 biggestfilename biggestFileName�v  � ��� l  � ��t�s�t  �s  � ��� Q   � ����� k   � ��� ��� r   � ���� o   � ��r�r 0 newfilename newFileName� n      ��� 1   � ��q
�q 
pnam� n   � ���� 4   � ��p�
�p 
file� o   � ��o�o "0 biggestfilename biggestFileName� 4   � ��n�
�n 
cfol� o   � ��m�m "0 wiretapfilesloc wireTapFilesLoc� ��l� l  � ��k�j�k  �j  �l  � R      �i�h�g
�i .ascrerr ****      � ****�h  �g  � k   � ��� ��� l  � ��f��f  �   on an error return false   � ��� I  � ��e��d
�e .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ���  Can not set file name to    � o   � ��c�c 0 newfilename newFileName� m   � ���  .   �d  � ��b� L   � ��� m   � ��a
�a boovfals�b  � ��� l  � ��`�_�`  �_  � ��� L   � ��� c   � ���� l  � ���^� n   � ���� 4   � ��]�
�] 
file� o   � ��\�\ 0 newfilename newFileName� 4   � ��[�
�[ 
cfol� o   � ��Z�Z "0 wiretapfilesloc wireTapFilesLoc�^  � m   � ��Y
�Y 
alis� ��X� l  � ��W�V�W  �V  �X  - m     ���null     c����  

Finder.app��`(B$�X 
 ��㰿�� ��� �Mvx����� �0�Lᨐ 80     
MACS   alis    `  Kermit                     ���ZH+    

Finder.app                                                       2����        ����  	                CoreServices    ��>�      ���      
  
  
  -Kermit:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    K e r m i t  &System/Library/CoreServices/Finder.app  / ��  ' ��� l     �U�T�U  �T  � ��� l     �S�R�S  �R  � ��� l     �Q�P�Q  �P  � ��� l     �O��O  � 7 1 function to get all the non-smart user playlists   � ��N� i   
 ��� I      �M�L�K�M 0 getplaylists GetPlayLists�L  �K  � k     ;�� ��� r     ��� J     �J�J  � o      �I�I 0 thelists theLists� ��� O    8��� k   	 7�� ��� l  	 	�H�G�H  �G  � ��� l  	 	�F��F  � 0 * create a list of non-smart user playlists   � ��� X   	 5��E�� k    0�� ��� Z    .���D�C� =    � � n     1    �B
�B 
pSmt o    �A�A 0 p    m    �@
�@ boovfals� r   # * b   # ( o   # $�?�? 0 thelists theLists n   $ ' 1   % '�>
�> 
pnam o   $ %�=�= 0 p   o      �<�< 0 thelists theLists�D  �C  � 	�;	 l  / /�:�9�:  �9  �;  �E 0 p  � l   
�8
 2    �7
�7 
cUsP�8  � �6 l  6 6�5�4�5  �4  �6  � m     � �3 L   9 ; o   9 :�2�2 0 thelists theLists�3  �N       �1 �1   �0�/�.�-�,�0 "0 wiretapfilesloc wireTapFilesLoc�/ &0 wiretapfileformat wireTapFileFormat�. 0 setfilename SetFileName�- 0 getplaylists GetPlayLists
�, .aevtoappnull  �   � ****balis    ^  Kermit                     ���ZH+   mWireTap files                                                   P�O�        ����  	                Desktop     ��>�      ��_     m b  |  (Kermit:Users:bryan:Desktop:WireTap files    W i r e T a p   f i l e s    K e r m i t  !Users/bryan/Desktop/WireTap files   /    ��   �+)�*�)�(�+ 0 setfilename SetFileName�* �'�'   �&�& 0 newfilename newFileName�)   �%�$�#�"�!� ���% 0 newfilename newFileName�$ 0 
biggestnum 
biggestNum�# 0 numstart numStart�" 0 filelist fileList�! 0 f  �  0 filename fileName� 0 filenum fileNum� "0 biggestfilename biggestFileName ������������������
� 
cha 
� .corecnte****       ****
� 
file
� .ascrcmnt****      � ****
� 
kocl
� 
cobj
� 
pnam
� 
TEXT
� 
nmbr
� 
cfol�  �  
� .sysodlogaskr        TEXT
� 
alis�( �� �jE�Ob  �-j E�Ob   �-E�O�j O W�[��l kh ��,E�O�b   2�j O�[�\[Z�k\Z�m2�&E�O��&��& �E�Y hOPY hOP[OY��O�j Ob  �%�%E�O�j O �*�b   /�/�,FOPW X  �%�%j OfO*�b   /�/a &OPU ������ 0 getplaylists GetPlayLists�  �   ��
� 0 thelists theLists�
 0 p    �	�����
�	 
cUsP
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pSmt
� 
pnam� <jvE�O� 0 +*�-[��l kh ��,f  ���,%E�Y hOP[OY��OPUO� ���� 
� .aevtoappnull  �   � **** k    �    /  B  J����  �  �   ������ 0 errmsg errMsg�� 0 errnum errNum O ' (���������� 7������������ G�� �������� e f�� s |�� �������� � � ������������� ��� �����������������������������������������������������������������
�� .sysodlogaskr        TEXT��  ��  ����
�� 
prmp
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr
�� 
mlsl�� 
�� .sysostflalis    ��� null
�� .miscactvnull��� ��� null
�� 
sele
�� 
cobj�� 0 t  �� 0 errmsg errMsg ������
�� 
errn�� 0 errnum errNum��  
�� 
pKnd
�� 
pnam����
�� 
pStp
�� 
pStr�� 0 timetorecord timeToRecord����
�� .hookStopnull        null
�� .wTapReconull���    obj 
�� .hookPlaynull    ��� obj 
�� .sysodelanull��� ��� long
�� .wTapStopnull���    obj 
�� 
pDID�� 0 newfilename newFileName�� 0 setfilename SetFileName�� 0 thefile theFile�� 0 getplaylists GetPlayLists�� 0 l  �� 
�� .gtqpchltTEXT  @   @ TEXT�� 0 thelist theList
�� 
insh
�� 
cUsP
�� .hookAdd cTrk      @ alis�� 0 thetrack theTrack
�� .hookConvcTrk      @ obj �� &0 theconvertedtrack theConvertedTrack
�� .coreclon****      � ****�� 0 nt  
�� 
pAlb
�� 
pArt
�� 
pCmt
�� 
pAnt
�� 
pCmp
�� 
pDsN
�� 
pDsC
�� 
pGen
�� 
pGrp
�� 
pPlC
�� 
pPlD
�� 
pRte
�� 
pTrN
�� 
pTrC
�� 
pAdj
�� 
pYr � � �b  %�%j W 	X  �O*����j 
�f� Ec   O� *j UOa � *a ,a k/E` W X  a �%a %j OiO_ a ,a  a _ a ,%a %j Oa Y hO_ a ,_ a ,E`  O  a !_ a ,%a "%_  %a #%j W X  a $O*j %O� *j &UO_ j 'O_  j (O� *j )UO*j %O_ a ,a *%_ a +,%a ,%E` -O)_ -k+ .E` /O)j+ 0E` 1O_ 1�a 2�fa 3 4a k/E` 5O_ /a 6*a 7_ 5/l 8E` 9O_ 9j :E` ;O_ ;a k/a 6*a 7_ 5/l <O_ ;a k/E` =O_ a ,E_ =a ,FO_ a >,E_ =a >,FO_ a ?,E_ =a ?,FO_ a @,E_ =a @,FO_ a A,E_ =a A,FO_ a B,E_ =a B,FO_ a C,E_ =a C,FO_ a D,E_ =a D,FO_ a E,E_ =a E,FO_ a F,E_ =a F,FO_ a G,E_ =a G,FO_ a H,E_ =a H,FO_ a I,E_ =a I,FO_ a J,E_ =a J,FO_ a K,E_ =a K,FO_ a L,E_ =a L,FO_ a M,E_ =a M,FOa Nj OPUascr  ��ޭ