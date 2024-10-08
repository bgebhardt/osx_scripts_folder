FasdUAS 1.101.10   ��   ��    k             l      �� ��    v p
Resets window positions

 Windows to fix

iTunes
Mail
Safari
Adium contact list
Preview (optional)
Addressbook
       	  l     �� 
��   
    each window has two modes    	     l     �� ��    > 81.  fit on main display - resize window to fit if needed         l     �� ��    M G2.  fit on largest display  i.e. laptop display at work and 20" at home         l     ������  ��        l     �� ��    m g TODO: need to solve case where window on screen, but needs to be moved to { 0, 22 } (corner - menubar)         l     ������  ��        l      �� ��    � �
For each application process
	for each window
		if it's in a special list
			move/fit to largest display
		if it's off the edge of the monitor move the window to be on the monitor space
         l     ������  ��        p         ��  �� (0 gmaindisplaybounds gMainDisplayBounds   �� !�� ,0 gseconddisplaybounds gSecondDisplayBounds ! �� "�� "0 gbseconddisplay gbSecondDisplay " �� #��  0 gappstocascade gAppsToCascade # ������ 0 carrangetype cArrangeType��     $ % $ l     ������  ��   %  & ' & l     (�� ( r      ) * ) m     ��
�� boovfals * o      ���� "0 gbseconddisplay gbSecondDisplay��   '  + , + l    -�� - r     . / . J    
 0 0  1 2 1 m    ����   2  3 4 3 m    ����   4  5 6 5 m    ����   6  7�� 7 m    ����  ��   / o      ���� (0 gmaindisplaybounds gMainDisplayBounds��   ,  8 9 8 l    :�� : r     ; < ; J     = =  > ? > m    ����   ?  @ A @ m    ����   A  B C B m    ����   C  D�� D m    ����  ��   < o      ���� ,0 gseconddisplaybounds gSecondDisplayBounds��   9  E F E l     ������  ��   F  G H G l     �� I��   I + % list of apps to have windows cascade    H  J K J l    L�� L r     M N M J     O O  P Q P m     R R  Safari    Q  S�� S m     T T 
 Mail   ��   N o      ����  0 gappstocascade gAppsToCascade��   K  U V U l     ������  ��   V  W X W l      �� Y��   Y	 Arange type is the type of window arranging we want
 "fitting" is defined in several ways
1.  Fit - Just move the window over to be visible
2.  Cascade windows from upper left corner
3.  Move window to upper left corner
4.  Move window to upper right corner
    X  Z [ Z l     ������  ��   [  \ ] \ p       ^ ^ �� _�� $0 ccascadeposition cCascadePosition _ ������ $0 cdefaultposition cDefaultPosition��   ]  ` a ` l     �� b��   b , &set cArrangeType to {"Fit", "Cascade"}    a  c d c l     e�� e r      f g f m     h h  Cascade    g o      ���� $0 ccascadeposition cCascadePosition��   d  i j i l  ! $ k�� k r   ! $ l m l m   ! " n n 	 Fit    m o      ���� $0 cdefaultposition cDefaultPosition��   j  o p o l     ������  ��   p  q r q l     �� s��   s 6 0 works ok, but very fragile on multiple monitors    r  t u t l     �� v��   v C = if 1st number is negative assume you have multiple monitors.    u  w x w l     �� y��   y   {-1440, 0, 1680, 1050}    x  z { z l     �� |��   | S M from http://daringfireball.net/2006/12/display_size_applescript_the_lazy_way    {  } ~ } l  % � ��  O   % � � � � k   ) � � �  � � � r   ) 2 � � � n   ) 0 � � � 1   . 0��
�� 
pbnd � n   ) . � � � m   , .��
�� 
cwin � 1   ) ,��
�� 
desk � o      ���� 0 _b   �  � � � r   3 = � � � n   3 9 � � � 4   4 9�� �
�� 
cobj � m   7 8����  � o   3 4���� 0 _b   � o      ���� 
0 _width   �  � � � r   > H � � � n   > D � � � 4   ? D�� �
�� 
cobj � m   B C����  � o   > ?���� 0 _b   � o      ���� 0 _height   �  � � � I  I P�� ���
�� .ascrcmnt****      � **** � o   I L���� 
0 _width  ��   �  � � � I  Q X�� ���
�� .ascrcmnt****      � **** � o   Q T���� 0 _height  ��   �  � � � l  Y Y������  ��   �  � � � l  Y Y�� ���   � ; 5 note: we're subtracting approximate size of the dock    �  � � � l  Y Y�� ���   � + % TODO: calculate the size of the dock    �  � � � r   Y i � � � J   Y g � �  � � � m   Y Z����   �  � � � m   Z [����   �  � � � l  [ b ��� � \   [ b � � � o   [ ^���� 
0 _width   � m   ^ a���� (��   �  ��� � o   b e���� 0 _height  ��   � o      ���� (0 gmaindisplaybounds gMainDisplayBounds �  � � � l  j j������  ��   �  � � � I  j q�� ���
�� .ascrcmnt****      � **** � m   j m � �  gMainDisplayBounds   ��   �  � � � I  r w�� ���
�� .ascrcmnt****      � **** � o   r s���� (0 gmaindisplaybounds gMainDisplayBounds��   �  � � � l  x x������  ��   �  � � � Z   x � � ����� � A   x � � � � n   x ~ � � � 4   y ~�� �
�� 
cobj � m   | }����  � o   x y���� 0 _b   � m   ~ ����   � l  � � � � � k   � � � �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� "0 gbseconddisplay gbSecondDisplay �  � � � l  � ��� ���   � � � this estimates the second display bounds.  It likely has the incorrect height as the height is based on the main display height    �  ��� � r   � � � � � J   � � � �  � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 _b   �  � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 _b   �  � � � l 	 � � ��� � l  � � ��� � \   � � � � � m   � �����   � l  � � ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 _b  ��  ��  ��   �  ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � ���  � o   � ��~�~ 0 _b  ��   � o      �}�} ,0 gseconddisplaybounds gSecondDisplayBounds��   � + % we have a second monitor to the left   ��  ��   �  � � � I  � ��| ��{
�| .ascrcmnt****      � **** � m   � � � �  gSecondDisplayBounds   �{   �  ��z � I  � ��y ��x
�y .ascrcmnt****      � **** � o   � ��w�w ,0 gseconddisplaybounds gSecondDisplayBounds�x  �z   � m   % & � ��null     3����  �
Finder.app]  `�%IȚ�����n  ��`s$����淪�<Ț���x��� ���,�MACS   alis    `  Kermit                     �� H+    �
Finder.app                                                       B~����        ����  	                CoreServices    �1�      ��6n      �  �  �  -Kermit:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    K e r m i t  &System/Library/CoreServices/Finder.app  / ��  ��   ~  � � � l     �v�u�v  �u   �  � � � l     �t�s�t  �s   �  � � � l     �r�q�r  �q   �  � � � l     �p�o�p  �o   �  �  � l  ��n O   � k   �  r   � � 2  � ��m
�m 
pcap o      �l�l 0 theapps theApps 	
	 l  � ��k�j�k  �j  
  l  � ��i�i     for each app     X   ��h k   �
  l  � ��g�g   ' !	set theApp to item 21 of theApps     l  � ��f�e�f  �e    r   � � n  � � I   � ��d�c�d  0 getarrangetype getArrangeType �b o   � ��a�a 0 theapp theApp�b  �c    f   � � o      �`�` 0 arrangetype arrangeType  !  I  � ��_"�^
�_ .ascrcmnt****      � ****" b   � �#$# m   � �%%  ARRANGE TYPE:    $ o   � ��]�] 0 arrangetype arrangeType�^  ! &'& I  � ��\(�[
�\ .ascrcmnt****      � ****( l  � �)�Z) e   � �** n   � �+,+ 2  � ��Y
�Y 
cwin, o   � ��X�X 0 theapp theApp�Z  �[  ' -.- l  � ��W�V�W  �V  . /0/ r   �121 m   � �U�U  2 o      �T�T 0 windowindex windowIndex0 343 l �S5�S  5   for each window   4 6�R6 X  
7�Q87 k  99 :;: l �P<�P  <  log (get properties of i)   ; =>= r  $?@? n   ABA 1   �O
�O 
posnB o  �N�N 0 i  @ o      �M�M 0 theposition thePosition> CDC r  %.EFE n  %*GHG 1  &*�L
�L 
ptszH o  %&�K�K 0 i  F o      �J�J 0 thesize theSizeD IJI I /B�IK�H
�I .ascrcmnt****      � ****K b  />LML b  /:NON b  /6PQP m  /2RR 
 pos:   Q o  25�G�G 0 theposition thePositionO m  69SS  ; size:   M o  :=�F�F 0 thesize theSize�H  J TUT l CC�E�D�E  �D  U VWV l CC�CX�C  X : 4 if it is on the main display than fix it's position   W YZY Z  C�[\�B][ n CN^_^ I  DN�A`�@�A "0 isonmaindisplay isOnMainDisplay` aba o  DG�?�? 0 theposition thePositionb c�>c o  GJ�=�= 0 thesize theSize�>  �@  _  f  CD\ k  Q�dd efe l QQ�<g�<  g U O if arrange type is cascade, first move window to upper corner of main display.   f hih l QQ�;j�;  j U O TODO: make the position of cascade actually cascade by 25 pixels in x and in y   i klk Z  Q�mn�:�9m = QVopo o  QT�8�8 0 arrangetype arrangeTypep o  TU�7�7 $0 ccascadeposition cCascadePositionn k  Y�qq rsr l Ywtut r  Ywvwv J  Yqxx yzy [  Yd{|{ l Y`}�6} ]  Y`~~ o  Y\�5�5 0 windowindex windowIndex m  \_�4�4 �6  | m  `c�3�3 z ��2� [  do��� l dk��1� ]  dk��� o  dg�0�0 0 windowindex windowIndex� m  gj�/�/ �1  � m  kn�.�. �2  w n      ��� 1  rv�-
�- 
posn� o  qr�,�, 0 i  u   {0, 22}   s ��+� r  x���� n  x}��� 1  y}�*
�* 
posn� o  xy�)�) 0 i  � o      �(�( 0 theposition thePosition�+  �:  �9  l ��� l ���'�&�'  �&  � ��� l ���%��%  � 7 1 then make sure the window is on the main display   � ��� l ���$�#�$  �#  � ��� n ����� I  ���"��!�" &0 positionondisplay positionOnDisplay� ��� o  ��� �  0 theposition thePosition� ��� o  ���� 0 thesize theSize� ��� o  ���� (0 gmaindisplaybounds gMainDisplayBounds�  �!  �  f  ��� ��� I �����
� .ascrcmnt****      � ****� b  ����� b  ����� b  ����� b  ����� m  ���� 
 pos:   � o  ���� 0 theposition thePosition� m  ����  ; size:   � o  ���� 0 thesize theSize� m  ����   on main display   �  � ��� r  ����� o  ���� 0 theposition thePosition� n      ��� 1  ���
� 
posn� o  ���� 0 i  � ��� r  ����� o  ���� 0 thesize theSize� n      ��� 1  ���
� 
ptsz� o  ���� 0 i  � ��� l �����  �  �  �B  ] l ����� k  ���� ��� n ����� I  ������ &0 positionondisplay positionOnDisplay� ��� o  ���� 0 theposition thePosition� ��� o  ���� 0 thesize theSize� ��� o  ���
�
 ,0 gseconddisplaybounds gSecondDisplayBounds�  �  �  f  ��� ��� I ���	��
�	 .ascrcmnt****      � ****� b  ����� b  ����� b  ����� b  ����� m  ���� 
 pos:   � o  ���� 0 theposition thePosition� m  ����  ; size:   � o  ���� 0 thesize theSize� m  ����   on 2nd display   �  � ��� r  ����� o  ���� 0 theposition thePosition� n      ��� 1  ���
� 
posn� o  ���� 0 i  � ��� r  ����� o  ���� 0 thesize theSize� n      ��� 1  ��� 
�  
ptsz� o  ������ 0 i  �  � , & else position it on secondary display   Z ��� l �������  � < 6 else: for now ignore all windows on secondary display   � ��� l �������  � } w TODO decide what to do with windows on secondary display.  Should be able to just position it on the secondary display   � ��� l ��������  ��  � ��� l �������  �   increment the index   � ���� r  ���� [  ���� o  ������ 0 windowindex windowIndex� m  � ���� � o      ���� 0 windowindex windowIndex��  �Q 0 i  8 n  ��� 2 	��
�� 
cwin� o  	���� 0 theapp theApp�R  �h 0 theapp theApp o   � ����� 0 theapps theApps ���� l ������  ��  ��   m   � ����null     ߀��  �System Events.appIȚ�����1  ��`s$����淪�<Ț���x��� ���,�sevs   alis    |  Kermit                     �� H+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  4Kermit:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    K e r m i t  -System/Library/CoreServices/System Events.app   / ��  �n    ��� l     ������  ��  � ��� l     �����  � @ : subroutine to routine bounds within the passed in monitor   � ��� l     �����  � � � TODO: test for secondary displays.  Note that we need a case to handle when the position is out of the bounding box of the display bounds.  This version is fragile because it relies on corners.  Currently the test fails on 2nd monitor.   � ��� i     ��� I      ������� &0 positionondisplay positionOnDisplay�    o      ���� $0 inwindowposition inWindowPosition  o      ���� 0 inwindowsize inWindowSize �� o      ���� "0 indisplaybounds inDisplayBounds��  ��  � k     �  r     	 l    
��
 n      4    ��
�� 
cobj m    ����  o     ���� "0 indisplaybounds inDisplayBounds��  	 o      ���� 0 displaywidth displayWidth  r     l   �� n     4    ��
�� 
cobj m   	 
����  o    ���� "0 indisplaybounds inDisplayBounds��   o      ���� 0 displayheight displayHeight  l   ������  ��    r     \     l   �� n      4    ��!
�� 
cobj! m    ����   o    ���� "0 indisplaybounds inDisplayBounds��   l   "��" n    #$# 4    ��%
�� 
cobj% m    ���� $ o    ���� "0 indisplaybounds inDisplayBounds��   o      ���� &0 displayrightupper displayRightUpper &'& r    %()( \    #*+* l   ,��, n    -.- 4    ��/
�� 
cobj/ m    ���� . o    ���� "0 indisplaybounds inDisplayBounds��  + l   "0��0 n    "121 4    "��3
�� 
cobj3 m     !���� 2 o    ���� "0 indisplaybounds inDisplayBounds��  ) o      ���� &0 displayrightlower displayRightLower' 454 l  & &������  ��  5 676 l  & &��8��  8 X R if the window is wider than the screen, then make it's width match the screensize   7 9:9 Z   & 9;<����; ?   & ,=>= l  & *?��? n   & *@A@ 4   ' *��B
�� 
cobjB m   ( )���� A o   & '���� 0 inwindowsize inWindowSize��  > o   * +���� 0 displaywidth displayWidth< r   / 5CDC o   / 0���� 0 displaywidth displayWidthD n      EFE 4   1 4��G
�� 
cobjG m   2 3���� F o   0 1���� 0 inwindowsize inWindowSize��  ��  : HIH l  : :������  ��  I JKJ l  : :��L��  L Z T if the window is taller than the screen, then make it's height match the screensize   K MNM Z   : MOP����O ?   : @QRQ l  : >S��S n   : >TUT 4   ; >��V
�� 
cobjV m   < =���� U o   : ;���� 0 inwindowsize inWindowSize��  R o   > ?���� 0 displayheight displayHeightP r   C IWXW o   C D���� 0 displayheight displayHeightX n      YZY 4   E H��[
�� 
cobj[ m   F G���� Z o   D E���� 0 inwindowsize inWindowSize��  ��  N \]\ l  N N������  ��  ] ^_^ l  N N��`��  `   calculate the corners   _ aba r   N Ycdc [   N Wefe l  N Rg��g n   N Rhih 4   O R��j
�� 
cobjj m   P Q���� i o   N O���� $0 inwindowposition inWindowPosition��  f l  R Vk��k n   R Vlml 4   S V��n
�� 
cobjn m   T U���� m o   R S���� 0 inwindowsize inWindowSize��  d o      ���� $0 windowrightupper windowRightUpperb opo r   Z eqrq [   Z csts l  Z ^u��u n   Z ^vwv 4   [ ^��x
�� 
cobjx m   \ ]���� w o   Z [���� $0 inwindowposition inWindowPosition��  t l  ^ by��y n   ^ bz{z 4   _ b��|
�� 
cobj| m   ` a���� { o   ^ _���� 0 inwindowsize inWindowSize��  r o      ���� $0 windowrightlower windowRightLowerp }~} l  f f������  ��  ~ � l  f f�����  �  log inWindowSize   � ��� l  f f�����  �  log windowRightUpper   � ��� l  f f�����  �  log windowRightLower   � ��� l  f f������  ��  � ��� l  f f�����  � d ^ if the right upper corner is wider than the screen, then move the position of the window left   � ��� Z   f }������� ?   f i��� l  f g���� o   f g���� $0 windowrightupper windowRightUpper��  � o   g h���� &0 displayrightupper displayRightUpper� r   l y��� \   l t��� l  l p���� n   l p��� 4   m p���
�� 
cobj� m   n o���� � o   l m���� $0 inwindowposition inWindowPosition��  � l  p s���� \   p s��� o   p q���� $0 windowrightupper windowRightUpper� o   q r���� &0 displayrightupper displayRightUpper��  � n      ��� 4   u x���
�� 
cobj� m   v w���� � o   t u���� $0 inwindowposition inWindowPosition��  ��  � ��� l  ~ ~��~�  �~  � ��� l  ~ ~�}��}  � c ] if the right lower corner is higher than the screen, then move the position of the window up   � ��� Z   ~ ����|�{� ?   ~ ���� l  ~ ��z� o   ~ �y�y $0 windowrightlower windowRightLower�z  � o    ��x�x &0 displayrightlower displayRightLower� r   � ���� \   � ���� l  � ���w� n   � ���� 4   � ��v�
�v 
cobj� m   � ��u�u � o   � ��t�t $0 inwindowposition inWindowPosition�w  � l  � ���s� \   � ���� o   � ��r�r $0 windowrightlower windowRightLower� o   � ��q�q &0 displayrightlower displayRightLower�s  � n      ��� 4   � ��p�
�p 
cobj� m   � ��o�o � o   � ��n�n $0 inwindowposition inWindowPosition�|  �{  � ��m� l  � ��l�k�l  �k  �m  � ��� l     �j�i�j  �i  � ��� l      �h��h  �    test code for subroutine    � ��� l      �g��g  ���
 log "test 1 - main display"
set testPosition to {200, 200}
set testSize to {1800, 1200}
positionOnDisplay(testPosition, testSize, gMainDisplayBounds)
log "RESULT"
log gMainDisplayBounds
log testPosition
log testSize

log "test 2 - 2nd display"
set testPosition to {-140, 113}
set testSize to {215, 603}
positionOnDisplay(testPosition, testSize, gSecondDisplayBounds)
log "RESULT"
log gSecondDisplayBounds
log testPosition
log testSize
   � ��� l     �f�e�f  �e  � ��� l     �d��d  � ` Z if the position is < 0 than on secondary display.  Assumes second display is to the left.   � ��� i    ��� I      �c��b�c "0 isonmaindisplay isOnMainDisplay� ��� o      �a�a $0 inwindowposition inWindowPosition� ��`� o      �_�_ 0 inwindowsize inWindowSize�`  �b  � k     �� ��� Z     ���^�]� A     ��� l    ��\� n     ��� 4    �[�
�[ 
cobj� m    �Z�Z � o     �Y�Y $0 inwindowposition inWindowPosition�\  � m    �X�X  � L   	 �� m   	 
�W
�W boovfals�^  �]  � ��V� L    �� m    �U
�U boovtrue�V  � ��� l     �T�S�T  �S  � ��� l     �R��R  � M G get the window arrangement type based on the global application lists.   � ��Q� i    ��� I      �P��O�P  0 getarrangetype getArrangeType� ��N� o      �M�M 0 theapp theApp�N  �O  � k     �� ��� Z     ���L�K� E     ��� o     �J�J  0 gappstocascade gAppsToCascade� l   ��I� n    ��� 1    �H
�H 
pnam� o    �G�G 0 theapp theApp�I  � L    
�� o    	�F�F $0 ccascadeposition cCascadePosition�L  �K  � ��� l   �E�D�E  �D  � ��C� L    �� o    �B�B $0 cdefaultposition cDefaultPosition�C  �Q       "�A������@��  h n�?�> n�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�A  �  �.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������������������. &0 positionondisplay positionOnDisplay�- "0 isonmaindisplay isOnMainDisplay�,  0 getarrangetype getArrangeType
�+ .aevtoappnull  �   � ****�* "0 gbseconddisplay gbSecondDisplay�) (0 gmaindisplaybounds gMainDisplayBounds�( ,0 gseconddisplaybounds gSecondDisplayBounds�'  0 gappstocascade gAppsToCascade�& $0 ccascadeposition cCascadePosition�% $0 cdefaultposition cDefaultPosition�$ 0 _b  �# 
0 _width  �" 0 _height  �! 0 theapps theApps�  0 arrangetype arrangeType� 0 windowindex windowIndex� 0 theposition thePosition� 0 thesize theSize�  �  �  �  �  �  �  �  �  �  �  �  �  �  � ������ &0 positionondisplay positionOnDisplay� �
�
   �	���	 $0 inwindowposition inWindowPosition� 0 inwindowsize inWindowSize� "0 indisplaybounds inDisplayBounds�   	������� ����� $0 inwindowposition inWindowPosition� 0 inwindowsize inWindowSize� "0 indisplaybounds inDisplayBounds� 0 displaywidth displayWidth� 0 displayheight displayHeight� &0 displayrightupper displayRightUpper�  &0 displayrightlower displayRightLower�� $0 windowrightupper windowRightUpper�� $0 windowrightlower windowRightLower ����
�� 
cobj�� � ���m/E�O���/E�O��m/��k/E�O���/��l/E�O��k/� ���k/FY hO��l/� ���l/FY hO��k/��k/E�O��l/��l/E�O�� ��k/����k/FY hO�� ��l/����l/FY hOP� �������	���� "0 isonmaindisplay isOnMainDisplay�� ��
�� 
  ������ $0 inwindowposition inWindowPosition�� 0 inwindowsize inWindowSize��   ������ $0 inwindowposition inWindowPosition�� 0 inwindowsize inWindowSize	 ��
�� 
cobj�� ��k/j fY hOe� �����������  0 getarrangetype getArrangeType�� ����   ���� 0 theapp theApp��   ���� 0 theapp theApp ����������  0 gappstocascade gAppsToCascade
�� 
pnam�� $0 ccascadeposition cCascadePosition�� $0 cdefaultposition cDefaultPosition�� ���, �Y hO�� ��������
�� .aevtoappnull  �   � **** k      &  +  8  J  c  i  }  �����  ��  ��   ������ 0 theapp theApp�� 0 i   1�������� R T�� h�� n�� ������������������� � ��������������%����������RS������������������ "0 gbseconddisplay gbSecondDisplay�� �� (0 gmaindisplaybounds gMainDisplayBounds�� ,0 gseconddisplaybounds gSecondDisplayBounds��  0 gappstocascade gAppsToCascade�� $0 ccascadeposition cCascadePosition�� $0 cdefaultposition cDefaultPosition
�� 
desk
�� 
cwin
�� 
pbnd�� 0 _b  
�� 
cobj�� 
0 _width  �� 0 _height  
�� .ascrcmnt****      � ****�� (
�� 
pcap�� 0 theapps theApps
�� 
kocl
�� .corecnte****       ****��  0 getarrangetype getArrangeType�� 0 arrangetype arrangeType�� 0 windowindex windowIndex
�� 
posn�� 0 theposition thePosition
�� 
ptsz�� 0 thesize theSize�� "0 isonmaindisplay isOnMainDisplay�� �� �� �� &0 positionondisplay positionOnDisplay��fE�Ojjjj�vE�Ojjjj�vE�O��lvE�O�E�O�E�O� �*�,�,�,E�O�a m/E` O�a �/E` O_ j O_ j Ojj_ a _ �vE�Oa j O�j O�a k/j 'eE�O�a k/�a l/j�a k/�a �/�vE�Y hOa j O�j UOa T*a -E` OE_ [a a l kh  )�k+ E` Oa _ %j O��-Ej OjE` O��-[a a l kh �a  ,E` !O�a ",E` #Oa $_ !%a %%_ #%j O)_ !_ #l+ & t_ �  -_ a ' a (_ a ' a )lv�a  ,FO�a  ,E` !Y hO)_ !_ #�m+ *Oa +_ !%a ,%_ #%a -%j O_ !�a  ,FO_ #�a ",FOPY :)_ !_ #�m+ *Oa ._ !%a /%_ #%a 0%j O_ !�a  ,FO_ #�a ",FO_ kE` [OY�[OY��OPU
�@ boovtrue� ����   ����������  ��  ��h��� ����   �����������`��  �����  ����    R T ����   �����������`��  ������?��> ���� 2 2  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNO PP ���Q
�� 
pcapQ �RR  l o g i n w i n d o w SS ���T
�� 
pcapT �UU  D o c k  VV ���W
�� 
pcapW �XX  F i n d e r! YY ���Z
�� 
pcapZ �[[  G r o w l H e l p e r A p p" \\ ���]
�� 
pcap] �^^  P T H P a s t e b o a r d# __ ���`
�� 
pcap` �aa $ i C a l A l a r m S c h e d u l e r$ bb ���c
�� 
pcapc �dd  i T u n e s H e l p e r% ee ���f
�� 
pcapf �gg & M i c r o s o f t   A U   D a e m o n& hh ���i
�� 
pcapi �jj  U n i v e r s a l A c c e s s' kk ���l
�� 
pcapl �mm  S M A R T R e p o r t e r( nn ���o
�� 
pcapo �pp  S y s t e m   E v e n t s) qq ���r
�� 
pcapr �ss  P l a x o   A s s i s t a n t* tt ���u
�� 
pcapu �vv  F l i p S t a t u s B a r+ ww ���x
�� 
pcapx �yy $ S l i m B a t t e r y M o n i t o r, zz ���{
�� 
pcap{ �|| & S i z z l i n g K e y s 4 i T u n e s- }} ���~
�� 
pcap~ �   f i n d e r p o p - d a e m o n. �� ����
�� 
pcap� ���  L a u n c h B a r/ �� ����
�� 
pcap� ��� . A s p y r   G a m e   A g e n t   H e l p e r0 �� ����
�� 
pcap� ���  H P E v e n t H a n d l e r1 �� ����
�� 
pcap� ��� * M o u s e W o r k s   B a c k g r o u n d2 �� ����
�� 
pcap� ���  m i r a R C D3 �� ����
�� 
pcap� ���  m i r a U S B D r i v e r4 �� ����
�� 
pcap� ���  i T u n e s5 �� ����
�� 
pcap� ��� 2 O m n i O u t l i n e r   P r o f e s s i o n a l6 �� ����
�� 
pcap� ��� 
 A d i u m7 �� ����
�� 
pcap� ���  i C a l8 �� ����
�� 
pcap� ���  M a i l9 �� ����
�� 
pcap� ��� & M i c r o s o f t   E n t o u r a g e: �� ����
�� 
pcap� ���  N e w s F i r e; �� ����
�� 
pcap� ���  S a f a r i< �� ����
�� 
pcap� ��� 2 M i c r o s o f t   D a t a b a s e   D a e m o n= �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n t> �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n t? �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n t@ �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tA �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tB �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tC �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tD �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tE �� ����
�� 
pcap� ���  D a s h b o a r d C l i e n tF �� ����
�� 
pcap� ���  M a g i C a lG �� ����
�� 
pcap� ���  S y s t e m U I S e r v e rH �� ����
�� 
pcap� ���  A l e r t s   D a e m o nI �� ����
�� 
pcap� ���  A d d r e s s   B o o kJ �� ����
�� 
pcap� ���   A c t i v i t y   M o n i t o rK �� ����
�� 
pcap� ���  S c r i p t   E d i t o rL �� ����
�� 
pcap� ���  M i c r o s o f t   W o r dM �� ���
� 
pcap� ���  T e x t E d i tN �� ��~�
�~ 
pcap� ���  P r e v i e wO �� ��}�
�} 
pcap� ���   S C P l u g i n U I D a e m o n�=   �|��| �  �{�z�{��z C �y��y �  �x�w�x/�we�<  �;  �:  �9  �8  �7  �6  �5  �4  �3  �2  �1  �0  �/   ascr  ��ޭ