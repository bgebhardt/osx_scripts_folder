FasdUAS 1.101.10   ��   ��    k             l     �� ��    !  UI Scripting Demonstration       	  l     ������  ��   	  
  
 l     �� ��    ] W Modify Keyboard System Preferences to swap the Option (Alt) and Command (Windows) keys         l     �� ��    _ Y so their placement on the keyboard matches that of the standard Macintosh keyboard. This         l     �� ��    V P will also allow us to change the preferences back so the keys go back to normal         l     �� ��    , & when the PC keyboard is disconnected.         l     ������  ��        i         I      �� ���� 0 setkeyboard setKeyboard   ��  o      ���� 0 keyboardtype keyboardType��  ��    O        k         ! " ! e     # # 1    ��
�� 
pALL "  $�� $ O   	 % & % k    ' '  ( ) ( l   �� *��   * 9 3 click "Modifier Keys..." at bottom of Keyboard tab    )  + , + I   �� -��
�� .prcsclicuiel    ��� uiel - n     . / . 4    �� 0
�� 
butT 0 m     1 1  Modifier Keys�    / n     2 3 2 4    �� 4
�� 
tabg 4 m    ����  3 4    �� 5
�� 
cwin 5 m     6 6  Keyboard & Mouse   ��   ,  7 8 7 l   ������  ��   8  9 : 9 Z    � ; < =�� ; =   " > ? > o     ���� 0 keyboardtype keyboardType ? m     ! @ @  	Macintosh    < k   % � A A  B C B l  % %�� D��   D , & click "Restore Defaults" on the sheet    C  E F E l  % %�� G��   G M Gclick button "Restore Defaults" of sheet 1 of window "Keyboard & Mouse"    F  H I H l  % %������  ��   I  J K J l  % %�� L��   L e _ click the pop up button menu "Option", this menu does not exist until it is clicked in the GUI    K  M N M I  % 3�� O��
�� .prcsclicuiel    ��� uiel O n   % / P Q P 4   , /�� R
�� 
popB R m   - .����  Q n   % , S T S 4   ) ,�� U
�� 
sheE U m   * +����  T 4   % )�� V
�� 
cwin V m   ' ( W W  Keyboard & Mouse   ��   N  X Y X l  4 4�� Z��   Z ( " click "Option" of the pop up menu    Y  [ \ [ I  4 J�� ]��
�� .prcsclicuiel    ��� uiel ] n   4 F ^ _ ^ 4   A F�� `
�� 
menI ` m   D E����  _ n   4 A a b a 4   > A�� c
�� 
menE c m   ? @����  b n   4 > d e d 4   ; >�� f
�� 
popB f m   < =����  e n   4 ; g h g 4   8 ;�� i
�� 
sheE i m   9 :����  h 4   4 8�� j
�� 
cwin j m   6 7 k k  Keyboard & Mouse   ��   \  l m l l  K K������  ��   m  n o n l  K K�� p��   p   delay briefly    o  q r q I  K P�� s��
�� .sysodelanull��� ��� nmbr s m   K L���� ��   r  t u t l  Q Q������  ��   u  v w v l  Q Q�� x��   x f ` click the pop up button menu "Command", this menu does not exist until it is clicked in the GUI    w  y z y I  Q c�� {��
�� .prcsclicuiel    ��� uiel { n   Q _ | } | 4   Z _�� ~
�� 
popB ~ m   [ ^����  } n   Q Z  �  4   W Z�� �
�� 
sheE � m   X Y����  � 4   Q W�� �
�� 
cwin � m   S V � �  Keyboard & Mouse   ��   z  � � � l  d d�� ���   � ) # click "Command" of the pop up menu    �  � � � I  d ��� ���
�� .prcsclicuiel    ��� uiel � n   d | � � � 4   u |�� �
�� 
menI � m   x {����  � n   d u � � � 4   r u�� �
�� 
menE � m   s t����  � n   d r � � � 4   m r�� �
�� 
popB � m   n q����  � n   d m � � � 4   j m�� �
�� 
sheE � m   k l����  � 4   d j�� �
�� 
cwin � m   f i � �  Keyboard & Mouse   ��   �  ��� � l  � �������  ��  ��   =  � � � =  � � � � � o   � ����� 0 keyboardtype keyboardType � m   � � � �  PC    �  ��� � k   � � � �  � � � l  � ��� ���   � e _ click the pop up button menu "Option", this menu does not exist until it is clicked in the GUI    �  � � � I  � ��� ���
�� .prcsclicuiel    ��� uiel � n   � � � � � 4   � ��� �
�� 
popB � m   � �����  � n   � � � � � 4   � ��� �
�� 
sheE � m   � �����  � 4   � ��� �
�� 
cwin � m   � � � �  Keyboard & Mouse   ��   �  � � � l  � ��� ���   � ) # click "Command" of the pop up menu    �  � � � I  � ��� ���
�� .prcsclicuiel    ��� uiel � n   � � � � � 4   � ��� �
�� 
menI � m   � �����  � n   � � � � � 4   � ��� �
�� 
menE � m   � �����  � n   � � � � � 4   � ��� �
�� 
popB � m   � �����  � n   � � � � � 4   � ��� �
�� 
sheE � m   � �����  � 4   � ��� �
�� 
cwin � m   � � � �  Keyboard & Mouse   ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   �   delay briefly    �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � f ` click the pop up button menu "Command", this menu does not exist until it is clicked in the GUI    �  � � � I  � ��� ���
�� .prcsclicuiel    ��� uiel � n   � � � � � 4   � ��� �
�� 
popB � m   � �����  � n   � � � � � 4   � ��� �
�� 
sheE � m   � �����  � 4   � ��� �
�� 
cwin � m   � � � �  Keyboard & Mouse   ��   �  � � � l  � ��� ���   � ( " click "Option" of the pop up menu    �  ��� � I  � ��� ���
�� .prcsclicuiel    ��� uiel � n   � � � � � 4   � ��� �
�� 
menI � m   � �����  � n   � � � � � 4   � ��� �
�� 
menE � m   � �����  � n   � � � � � 4   � �� �
� 
popB � m   � ��~�~  � n   � � � � � 4   � ��} �
�} 
sheE � m   � ��|�|  � 4   � ��{ �
�{ 
cwin � m   � � � �  Keyboard & Mouse   ��  ��  ��  ��   :  � � � l  � ��z�y�z  �y   �  � � � l  � ��x ��x   � &   click "OK" to dismiss the sheet    �  ��w � I  ��v ��u
�v .prcsclicuiel    ��� uiel � n   � � � � � 4   � ��t �
�t 
butT � m   � � � �  OK    � n   � � � � � 4   � ��s �
�s 
sheE � m   � ��r�r  � 4   � ��q �
�q 
cwin � m   � � � �  Keyboard & Mouse   �u  �w   & 4   	 �p �
�p 
prcs � m     � �  System Preferences   ��    m      � ��null     ߀��  �System Events.app��^����a��p7 ����M���  �p7    Ó��        sevs   alis    |  Kermit                     �� H+    �System Events.app                                                h���        ����  	                CoreServices    �1�      ��e      �  �  �  4Kermit:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    K e r m i t  -System/Library/CoreServices/System Events.app   / ��       l     �o�n�o  �n    l     �m�m   9 3 main script; preset desiredKeyboard to "Macintosh"     l    �l r     	 m     

  	Macintosh   	 o      �k�k "0 desiredkeyboard desiredKeyboard�l    l     �j�i�j  �i    l     �h�h   5 / get users input; we're waiting until selection     l   *�g Q    * k      I   �f
�f .sysodlogaskr        TEXT m      Which keyboard type?    �e
�e 
btns J   	    m   	 
!!  	Macintosh     "#" m   
 $$  PC   # %�d% m    &&  Cancel   �d   �c'�b
�c 
dflt' m    ((  	Macintosh   �b   )�a) l   �`*�`  * B < If the user cancels, the next statement won't be executed.    �a   R      �_+,
�_ .ascrerr ****      � ****+ o      �^�^ 0 errtext errText, �]-�\
�] 
errn- o      �[�[ 0 errnum errNum�\   Z    *./�Z0. l   !1�Y1 =   !232 o    �X�X 0 errnum errNum3 m     �W�W���Y  / l  $ &454 k   $ &66 787 l  $ $�V9�V  9   exit script   8 :�U: L   $ &�T�T  �U  5   User cancelled.    �Z  0 l  ) )�S;�S  ; ' ! If any other error, do nothing.    �g   <=< l     �R�Q�R  �Q  = >?> l     �P@�P  @   exit   ? ABA l  + .C�OC r   + .DED 1   + ,�N
�N 
rsltE o      �M�M 0 	theresult 	theResult�O  B FGF l  / AH�LH Z   / AIJ�K�JI =   / 8KLK n   / 4MNM 1   0 4�I
�I 
bhitN o   / 0�H�H 0 	theresult 	theResultL m   4 7OO  Cancel   J L   ; =�G�G  �K  �J  �L  G PQP l     �F�E�F  �E  Q RSR l     �DT�D  T 6 0 set desiredKeyboard to "PC" if they picked "PC"   S UVU l  B WW�CW Z   B WXY�B�AX =   B KZ[Z n   B G\]\ 1   C G�@
�@ 
bhit] o   B C�?�? 0 	theresult 	theResult[ m   G J^^  PC   Y r   N S_`_ m   N Qaa  PC   ` o      �>�> "0 desiredkeyboard desiredKeyboard�B  �A  �C  V bcb l     �=�<�=  �<  c ded l     �;f�;  f "  activate System Preferences   e ghg l  X si�:i O   X sjkj k   ^ rll mnm I  ^ c�9�8�7
�9 .miscactvnull��� ��� null�8  �7  n o�6o r   d rpqp 4   d l�5r
�5 
xppbr m   h kss # com.apple.preference.keyboard   q 1   l q�4
�4 
xpcp�6  k m   X [tt�null     ߀��   System Preferences.app��a���6 ����M���  ��6    Ó��        sprf   alis    j  Kermit                     �� H+     System Preferences.app                                           h]��i        ����  	                Applications    �1�      ���         *Kermit:Applications:System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    K e r m i t  #Applications/System Preferences.app   / ��  �:  h uvu l     �3�2�3  �2  v wxw l     �1y�1  y 1 + call subroutine with desired keyboard type   x z{z l  t z|�0| I   t z�/}�.�/ 0 setkeyboard setKeyboard} ~�-~ o   u v�,�, "0 desiredkeyboard desiredKeyboard�-  �.  �0  { � l     �+�*�+  �*  � ��� l     �)��)  � #  quit from system preferences   � ��(� l  { ���'� O   { ���� I  � ��&�%�$
�& .aevtquitnull���    obj �%  �$  � m   { ~t�'  �(       �#���a��#  � �"�!� ��" 0 setkeyboard setKeyboard
�! .aevtoappnull  �   � ****�  "0 desiredkeyboard desiredKeyboard� 0 	theresult 	theResult� � ������ 0 setkeyboard setKeyboard� ��� �  �� 0 keyboardtype keyboardType�  � �� 0 keyboardtype keyboardType�  ��� �� 6�� 1� @ W�� k��� �� � � � � � � � �
� 
pALL
� 
prcs
� 
cwin
� 
tabg
� 
butT
� .prcsclicuiel    ��� uiel
� 
sheE
� 
popB
� 
menE
� 
menI
� .sysodelanull��� ��� nmbr� ��*�,EO*��/ �*��/�k/��/j 	O��  b*��/�k/�m/j 	O*��/�k/�m/�k/a m/j 	Okj O*�a /�k/�a /j 	O*�a /�k/�a /�k/a a /j 	OPY m�a   d*�a /�k/�m/j 	O*�a /�k/�m/�k/a a /j 	Okj O*�a /�k/�a /j 	O*�a /�k/�a /�k/a m/j 	Y hO*�a /�k/�a /j 	UU� ���
�	���
� .aevtoappnull  �   � ****� k     ��� �� �� A�� F�� U�� g�� z�� ���  �
  �	  � ��� 0 errtext errText� 0 errnum errNum� 
��!$&�(�� �����������O^at����s������� "0 desiredkeyboard desiredKeyboard
� 
btns
� 
dflt� 
�  .sysodlogaskr        TEXT�� 0 errtext errText� ������
�� 
errn�� 0 errnum errNum��  ����
�� 
rslt�� 0 	theresult 	theResult
�� 
bhit
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp�� 0 setkeyboard setKeyboard
�� .aevtquitnull���    obj � ��E�O �����mv��� 
OPW X  ��  hY hO�E�O�a ,a   hY hO�a ,a   
a E�Y hOa  *j O*a a /*a ,FUO*�k+ Oa  *j U� �����
�� 
bhit� ���  P C��   ascr  ��ޭ