FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
The following code is

� Andreas Amann, 2002-2005
http://homepage.mac.com/aamann/

You may incorporate this code into your program(s) without restriction.
This code has been provided "AS IS" and the responsibility for its operation is yours.
You are not permitted to redistribute this code under my name after having made changes.
If you're going to redistribute the code, please make it clear that the code was descended
from my code, but that you've made changes.
       	  l     ������  ��   	  
  
 l     �� ��    * $Open Message.scpt (Mail Scripts 2.7)         l     ������  ��        j     �� �� 0 scancel sCancel  m         Cancel         j    �� �� 0 	scontinue 	sContinue  m        Continue         j    �� �� 0 smessage sMessage  m       � �When run as a rule action, this script will open incoming messages in a new window.

If you continue now, it will open all unread messages in individual windows.         l     ������  ��        w           i   	  ! " ! I     �� # $
�� .emalcpmanull���   @ mssg # o      ���� 0 themsgs theMsgs $ �� %��
�� 
pmar % o      ���� 0 therule theRule��   " Q    ( & ' ( & k     ) )  * + * l    , - , O    . / . r     0 1 0 n    
 2 3 2 1    
��
�� 
pnam 3 o    ���� 0 therule theRule 1 o      ���� 0 therulename theRuleName / m        �null     ߀��  dMail.app����     �!��x̿�נ%=�$  ����    ���&*���@D emal  alis    2  AlBook                     ��#�H+    dMail.app                                                         K��a*@        ����  	                Applications    ���]      �a��      d  AlBook:Applications:Mail.app    M a i l . a p p    A l B o o k  Applications/Mail.app   / ��   - > 8 this fails if the script is run from the script menu...    +  4�� 4 n    5 6 5 I    �� 7���� .0 displayunreadmessages displayUnreadMessages 7  8�� 8 o    ���� 0 themsgs theMsgs��  ��   6  f    ��   ' R      ������
�� .ascrerr ****      � ****��  ��   ( k   ( 9 9  : ; : r    8 < = < I   6�� > ?
�� .sysodlogaskr        TEXT > o    !���� 0 smessage sMessage ? �� @ A
�� 
btns @ J   " . B B  C D C o   " '���� 0 scancel sCancel D  E�� E o   ' ,���� 0 	scontinue 	sContinue��   A �� F G
�� 
dflt F m   / 0����  G �� H��
�� 
disp H m   1 2��
�� stic   ��   = o      ���� 0 	theresult 	theResult ;  I J I Z  9 O K L���� K =   9 F M N M c   9 > O P O n   9 < Q R Q 1   : <��
�� 
bhit R o   9 :���� 0 	theresult 	theResult P m   < =��
�� 
utxt N c   > E S T S o   > C���� 0 scancel sCancel T m   C D��
�� 
utxt L L   I K����  ��  ��   J  U V U r   P T W X W J   P R����   X o      ���� (0 theunreadmailboxes theUnreadMailboxes V  Y Z Y u   U! [�� [ O   Y  \ ] \ k   ] ^ ^  _ ` _ X   ] � a�� b a k   o � c c  d e d r   o � f g f l  o � h�� h 6  o � i j i n   o t k l k 2  p t��
�� 
mbxp l o   o p���� 0 eachaccount eachAccount j ?   w � m n m 1   x |��
�� 
mbuc n m   } ����  ��   g o      ���� :0 theunreadmailboxesofaccount theUnreadMailboxesOfAccount e  o�� o Y   � � p�� q r�� p k   � � s s  t u t r   � � v w v n   � � x y x 4   � ��� z
�� 
cobj z o   � ����� 0 i   y o   � ����� :0 theunreadmailboxesofaccount theUnreadMailboxesOfAccount w o      ���� 0 thebox theBox u  {�� { P   � � |�� } | Z  � � ~ ���� ~ F   � � � � � >   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thebox theBox � m   � � � �  Drafts    � >   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thebox theBox � m   � � � � 
 Junk     r   � � � � � o   � ����� 0 thebox theBox � n       � � �  ;   � � � o   � ����� (0 theunreadmailboxes theUnreadMailboxes��  ��  ��   } ����
�� conscase��  ��  �� 0 i   q m   � �����  r I  � ��� ���
�� .corecnte****       **** � o   � ����� :0 theunreadmailboxesofaccount theUnreadMailboxesOfAccount��  ��  ��  �� 0 eachaccount eachAccount b 2  ` c��
�� 
mact `  � � � r   � � � � � b   � � � � � o   � ����� (0 theunreadmailboxes theUnreadMailboxes � l  � � ��� � 6  � � � � � 2  � ���
�� 
mbxp � ?   � � � � � 1   � ���
�� 
mbuc � m   � �����  ��   � o      ���� (0 theunreadmailboxes theUnreadMailboxes �  � � � r   � � � � � J   � �����   � o      ���� 0 themsgs theMsgs �  ��� � X   � ��� � � r   � � � � b   � � � � o   � ����� 0 themsgs theMsgs � l  � ��� � 6  � � � � n   � � � � � 2  � ���
�� 
mssg � o   � ����� 0 eachbox eachBox � F   � � � =  � � � 1  ��
�� 
isrd � m  
��
�� boovfals � =  � � � 1  ��
�� 
isdl � m  ��
�� boovfals��   � o      ���� 0 themsgs theMsgs�� 0 eachbox eachBox � o   � ����� (0 theunreadmailboxes theUnreadMailboxes��   ] m   Y Z  ��   Z  ��� � n "( � � � I  #(�� ����� .0 displayunreadmessages displayUnreadMessages �  ��� � o  #$���� 0 themsgs theMsgs��  ��   �  f  "#��     � � � l     ������  ��   �  � � � i     � � � I      �� ����� .0 displayunreadmessages displayUnreadMessages �  ��� � o      ���� 0 themsgs theMsgs��  ��   � u     4 ��� � O    3 � � � Y    2 ��� � ��� � t    - � � � Q    , � ��� � I   #�� ���
�� .aevtodocnull  �    alis � n     � � � 4    �� �
�� 
cobj � o    ���� 0 i   � o    ���� 0 themsgs theMsgs��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   � m    ���� �� 0 i   � m    ����  � I   �� ��
�� .corecnte****       **** � o    �~�~ 0 themsgs theMsgs�  ��   � m      ��   �  � � � l     �}�|�}  �|   �  � � � l     �{ ��{   � S M run handler in order for the script to run from the system-wide scripts menu    �  � � � i     � � � I     �z�y�x
�z .aevtoappnull  �   � ****�y  �x   � w      �   � I   �w � �
�w .emalcpmanull���   @ mssg � J    �v�v   � �u ��t
�u 
pmar � J    �s�s  �t   �  � � � l     �r�q�r  �q   �  ��p � l     �o ��o   �  Open Message.scpt   �p       �n �    � � ��n   � �m�l�k�j�i�h�m 0 scancel sCancel�l 0 	scontinue 	sContinue�k 0 smessage sMessage
�j .emalcpmanull���   @ mssg�i .0 displayunreadmessages displayUnreadMessages
�h .aevtoappnull  �   � **** � �g "�f�e � ��d
�g .emalcpmanull���   @ mssg�f 0 themsgs theMsgs�e �c�b�a
�c 
pmar�b 0 therule theRule�a   � 
�`�_�^�]�\�[�Z�Y�X�W�` 0 themsgs theMsgs�_ 0 therule theRule�^ 0 therulename theRuleName�] 0 	theresult 	theResult�\ (0 theunreadmailboxes theUnreadMailboxes�[ 0 eachaccount eachAccount�Z :0 theunreadmailboxesofaccount theUnreadMailboxesOfAccount�Y 0 i  �X 0 thebox theBox�W 0 eachbox eachBox �   �V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F ��E } � ��D�C�B�A
�V 
pnam�U .0 displayunreadmessages displayUnreadMessages�T  �S  
�R 
btns
�Q 
dflt
�P 
disp
�O stic   �N 
�M .sysodlogaskr        TEXT
�L 
bhit
�K 
utxt
�J 
mact
�I 
kocl
�H 
cobj
�G .corecnte****       ****
�F 
mbxp �  
�E 
mbuc
�D 
bool
�C 
mssg
�B 
isrd
�A 
isdl�d) � ��,E�UO)�k+ WX  b  �b   b  lv�k��� 
E�O��,�&b   �&  hY hOjvE�Ohp �� � m*�-[��l kh �a -a [a ,\Zj:1E�O Ak�j kh ��/E�Oga  #��,a 	 ��,a a & 	��6FY hV[OY��[OY��O�*a -a [a ,\Zj:1%E�OjvE�O 6�[��l kh 	��a -a [[a ,\Zf8\[a ,\Zf8A1%E�[OY��UqO)�k+  � �@ ��?�> � ��=�@ .0 displayunreadmessages displayUnreadMessages�? �< ��<  �  �;�; 0 themsgs theMsgs�>   � �:�9�: 0 themsgs theMsgs�9 0 i   �   �8�7�6�5�4
�8 .corecnte****       ****
�7 
cobj
�6 .aevtodocnull  �    alis�5  �4  �= 5hp 1� , )k�j kh kn ��/j W X  ho[OY��Uq � �3 ��2�1 � ��0
�3 .aevtoappnull  �   � ****�2  �1   �   �   �/�.
�/ 
pmar
�. .emalcpmanull���   @ mssg�0 �Zjv�jvl ascr  ��ޭ