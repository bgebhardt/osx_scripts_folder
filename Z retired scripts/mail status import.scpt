FasdUAS 1.101.10   ��   ��    k             l     �� ��      mail status import       	  l     �� 
��   
 ^ X Mate to mail status export thatScript that reads in message info from the clipboard and    	     l     �� ��    2 , tries to apply it to the mailbox specified.         l     ������  ��        l     �� ��    1 + example with one line.  Use for debugging.         l      �� ��   ZT
set inLine to "98174;false;false;Friday, October 26, 2007 5:16:28 AM;SuperDuper! Copy Succeeded"
set outList to (my readline(inLine))
outList
my updateMessage(outList)

set inLine to "98003;false;false;Thursday, October 25, 2007 3:35:44 AM;SuperDuper! Copy Succeeded"
set outList to (my readline(inLine))
outList
my updateMessage(outList)
         l     ������  ��        l     ��  n        I    �������� "0 processmessages processMessages��  ��     f     ��        l     ������  ��         i      ! " ! I      �������� "0 processmessages processMessages��  ��   " k     N # #  $ % $ l     �� &��   & 7 1 example with multiple lines.  Use for debugging.    %  ' ( ' r      ) * ) m      + +��98174;false;false;Friday, October 26, 2007 5:16:28 AM;SuperDuper! Copy Succeeded
98173;false;false;Friday, October 26, 2007 3:35:25 AM;SuperDuper! Copy Succeeded
98172;false;false;Friday, October 26, 2007 1:00:00 AM;<FRIDAY>
98171;false;false;Thursday, October 25, 2007 11:55:42 PM;Tickets On Sale & Special Offers for the Week
98170;false;false;Thursday, October 25, 2007 7:58:20 PM;[fremontcouncilpta] Fwd: City of Fremont Safe Routes to School Application-Request letter of Support    * o      ���� 0 inlines inLines (  , - , l   ������  ��   -  . / . r     0 1 0 I   	������
�� .JonsgClp****    ��� null��  ��   1 o      ���� 0 inlines inLines /  2 3 2 l   ������  ��   3  4 5 4 r     6 7 6 l    8�� 8 I   �� 9��
�� .corecnte****       **** 9 n     : ; : 2   ��
�� 
cpar ; o    ���� 0 inlines inLines��  ��   7 o      ���� 0 numparagraphs numParagraphs 5  < = < r     > ? > m    ����  ? o      ���� 0 paragraphnum paragraphNum =  @�� @ U    N A B A k   ! I C C  D E D r   ! ' F G F n   ! % H I H 4   " %�� J
�� 
cpar J o   # $���� 0 paragraphnum paragraphNum I o   ! "���� 0 inlines inLines G o      ���� 0 theline theLine E  K L K l  ( (������  ��   L  M N M I  ( 1�� O��
�� .ascrcmnt****      � **** O b   ( - P Q P b   ( + R S R o   ( )���� 0 paragraphnum paragraphNum S m   ) * T T  :     Q o   + ,���� 0 theline theLine��   N  U V U I  2 7�� W��
�� .ascrcmnt****      � **** W o   2 3���� 0 theline theLine��   V  X Y X n  8 C Z [ Z I   9 C�� \���� 0 updatemessage updateMessage \  ]�� ] n  9 ? ^ _ ^ I   : ?�� `���� 0 readline   `  a�� a o   : ;���� 0 theline theLine��  ��   _  f   9 :��  ��   [  f   8 9 Y  b c b l  D D������  ��   c  d�� d r   D I e f e [   D G g h g o   D E���� 0 paragraphnum paragraphNum h m   E F����  f o      ���� 0 paragraphnum paragraphNum��   B o    ���� 0 numparagraphs numParagraphs��      i j i l     ������  ��   j  k l k l     ������  ��   l  m n m i     o p o I      �� q���� 0 updatemessage updateMessage q  r�� r o      ���� 0 inlist inList��  ��   p O    Z s t s k   Y u u  v w v l   ������  ��   w  x y x r     z { z m     | |  	Gmail POP    { o      ���� 0 
theaccount 
theAccount y  } ~ } e       4    �� �
�� 
mact � o   
 ���� 0 
theaccount 
theAccount ~  � � � l   ������  ��   �  � � � e     � � n     � � � 2   ��
�� 
mbxp � 4    �� �
�� 
mact � o    ���� 0 
theaccount 
theAccount �  � � � r     � � � n     � � � 4    �� �
�� 
mbxp � m     � �  INBOX    � 4    �� �
�� 
mact � o    ���� 0 
theaccount 
theAccount � o      ���� 0 mbox   �  � � � l     ������  ��   �  � � � l     �� ���   �  count of messages in mbox    �  � � � l     ������  ��   �  � � � l     �� ���   � 8 2 find all messages that match the date passed in		    �  � � � r     1 � � � 6   / � � � n     # � � � 2  ! #��
�� 
mssg � o     !���� 0 mbox   � =  $ . � � � 1   % '��
�� 
drcv � l  ( - ��� � n   ( - � � � 4   * -�� �
�� 
cobj � m   + ,����  � o   ( *���� 0 inlist inList��   � o      ���� 0 themsgs theMsgs �  � � � l  2 2������  ��   �  � � � l  2 2�� ���   � ( " if more than 1 result, then error    �  � � � l  2 2�� ���   �   TODO: check subject next    �  � � � r   2 9 � � � I  2 7�� ���
�� .corecnte****       **** � o   2 3���� 0 themsgs theMsgs��   � o      ���� 0 thecount theCount �  � � � Z   :W � � � � � ?   : = � � � o   : ;���� 0 thecount theCount � m   ; <����  � I  @ W�� ���
�� .sysodlogaskr        TEXT � b   @ S � � � b   @ Q � � � b   @ L � � � b   @ J � � � b   @ E � � � b   @ C � � � m   @ A � �  
There are     � o   A B���� 0 thecount theCount � m   C D � �   messages at date     � n   E I � � � 4   F I�� �
�� 
cobj � m   G H����  � o   E F���� 0 inlist inList � m   J K � �  .  Skipping message     � n   L P � � � 4   M P�� �
�� 
cobj � m   N O����  � o   L M���� 0 inlist inList � m   Q R � �  .   ��   �  � � � l  Z ] ��� � =   Z ] � � � o   Z [���� 0 thecount theCount � m   [ \����  ��   �  ��� � l  ` y � � � I  ` y�� ���
�� .sysodlogaskr        TEXT � b   ` u � � � b   ` q � � � b   ` l � � � b   ` h � � � m   ` c � �  No message at date     � n   c g � � � 4   d g�� �
�� 
cobj � m   e f����  � o   c d�� 0 inlist inList � m   h k � �  .  Skipping message     � n   l p � � � 4   m p�~ �
�~ 
cobj � m   n o�}�}  � o   l m�|�| 0 inlist inList � m   q t � �  .   ��   �   no message found   ��   � k   |W � �  � � � l  | |�{ ��{   �   do the real work    �  � � � r   | � � � � n   | � � � � 4   } ��z �
�z 
cobj � m   ~ �y�y  � o   | }�x�x 0 themsgs theMsgs � o      �w�w 0 themsg theMsg �  � � � r   � � � � � n   � � �  � 1   � ��v
�v 
isfl  o   � ��u�u 0 themsg theMsg � o      �t�t 0 	isflagged 	isFlagged �  r   � � n   � � 1   � ��s
�s 
isrd o   � ��r�r 0 themsg theMsg o      �q�q 0 isread isRead  r   � �	
	 n   � � 1   � ��p
�p 
drcv o   � ��o�o 0 themsg theMsg
 o      �n�n 0 thedate theDate  r   � � n   � � 1   � ��m
�m 
subj o   � ��l�l 0 themsg theMsg o      �k�k 0 
thesubject 
theSubject  l  � ��j�i�j  �i    r   � � m   � ��h
�h boovfals o      �g�g 0 
changeflag 
changeFlag  r   � � m   � ��f
�f boovfals o      �e�e 0 
changeread 
changeRead  l  � ��d�c�d  �c     l  � ��b!�b  !   check the flag status		     "#" l  � ��a$�a  $  log (isFlagged)   # %&% l  � ��`'�`  '  log (item 2 of inList)   & ()( Z   �;*+�_,* l  � �-�^- >  � �./. o   � ��]�] 0 	isflagged 	isFlagged/ n   � �010 4   � ��\2
�\ 
cobj2 m   � ��[�[ 1 o   � ��Z�Z 0 inlist inList�^  + k   �733 454 l  � ��Y6�Y  6 / ) use this line if you trust the input				   5 787 l  � ��X9�X  9 : 4				set flagged status of theMsg to item 2 of inList   8 :;: l  � ��W�V�W  �V  ; <=< l  � ��U>�U  > + % use this section to ask the user				   = ?@? l  � ��TA�T  A   propose changes to user   @ BCB I  � ��SD�R
�S .aevtodocnull  �    alisD o   � ��Q�Q 0 themsg theMsg�R  C EFE Q   �GHIG k   � �JJ KLK l  � ��P�O�P  �O  L MNM I  � ��NO�M
�N .sysodlogaskr        TEXTO b   � �PQP b   � �RSR b   � �TUT b   � �VWV b   � �XYX m   � �ZZ  FLAG is currently    Y o   � ��L�L 0 	isflagged 	isFlaggedW m   � �[[  .  Mark message    U n   � �\]\ 4   � ��K^
�K 
cobj^ m   � ��J�J ] o   � ��I�I 0 inlist inListS m   � �__  	 flag as    Q n   � �`a` 4   � ��Hb
�H 
cobjb m   � ��G�G a o   � ��F�F 0 inlist inList�M  N cdc r   � �efe m   � ��E
�E boovtruef o      �D�D 0 
changeflag 
changeFlagd ghg l  � ��Ci�C  i  implement changes   h j�Bj r   � �klk n   � �mnm 4   � ��Ao
�A 
cobjo m   � ��@�@ n o   � ��?�? 0 inlist inListl n      pqp 1   � ��>
�> 
isflq o   � ��=�= 0 themsg theMsg�B  H R      �<rs
�< .ascrerr ****      � ****r o      �;�; 0 m  s �:tu
�: 
errnt o      �9�9 0 n  u �8vw
�8 
erobv o      �7�7 0 f  w �6xy
�6 
errtx o      �5�5 0 t  y �4z�3
�4 
ptlrz o      �2�2 0 p  �3  I k   �{{ |}| Z   �~�1�0~ >  � ���� o   � ��/�/ 0 n  � m   � ��.�.�� l  ���� k   ��� ��� l  � ��-��-  � ; 5also reset text item delimiters in case of an error:    � ��� l  � ��,��,  �  and resignal the error:    � ��+� R   ��*��
�* .ascrerr ****      � ****� o  �)�) 0 m  � �(��
�( 
errn� o   � ��'�' 0 n  � �&��
�& 
erob� o   � ��%�% 0 f  � �$��
�$ 
errt� o  �#�# 0 t  � �"��!
�" 
ptlr� o  � �  0 p  �!  �+  �   unknown error, rethrow   �1  �0  } ��� l ���  � ) # else keep going  -- user canceled    �  F ��� l ���  �  � ��� l ���  � I C HACK ALERT: this check only works if we are executing on an inbox.   � ��� Z  5����� l $��� = $��� n  ��� 1  �
� 
pnam� 4  ��
� 
cwin� m  �� � l #��� b  #��� o  �� 0 
thesubject 
theSubject� m  "��   � Inbox   �  �  � l '1��� I '1���
� .coreclosnull���     obj � 4  '-��
� 
cwin� m  +,�� �  � , & assume window just opened is top most   �  �  � ��� l 66���  �  �  �_  , l ::���  � � z		display dialog "Flag is currently " & isFlagged & ".  Mark message " & item 5 of inList & " flag as " & item 2 of inList   ) ��� l <<�
�	�
  �	  � ��� l <<���  �   check the read status   � ��� l <<���  �  log (isRead)   � ��� l <<���  �  log (item 3 of inList)   � ��� Z  <U����� l <B��� > <B��� o  <=�� 0 isread isRead� n  =A��� 4  >A��
� 
cobj� m  ?@�� � o  =>� �  0 inlist inList�  � k  EQ�� ��� l EE�����  � / ) use this line if you trust the input				   � ��� r  EO��� n  EI��� 4  FI���
�� 
cobj� m  GH���� � o  EF���� 0 inlist inList� n      ��� 1  JN��
�� 
isrd� o  IJ���� 0 themsg theMsg� ��� l PP������  ��  � ��� l PP�����  � ' ! use this section to ask the user   � ���� l  PP�����  �GA
				-- propose changes to user
				open theMsg
				try
					display dialog "READ STATUS is currently " & isRead & ".  Mark message " & item 5 of inList & " read status as " & item 3 of inList
					set changeRead to true
					--implement changes
					set read status of theMsg to item 3 of inList
					
				on error m number n from f to t partial result p
					if n is not -128 then -- unknown error, rethrow
						--also reset text item delimiters in case of an error: 
						--and resignal the error: 
						error m number n from f to t partial result p
					end if
					-- else keep going  -- user canceled 
				end try
				-- HACK ALERT: this check only works if we are executing on an inbox.
				if (name of window 1 is (theSubject & " � Inbox")) then
					close window 1 -- assume window just opened is top most
				end if
				   ��  �  � l TT�����  � � z		display dialog "Flag is currently " & isFlagged & ".  Mark message " & item 5 of inList & " flag as " & item 2 of inList   � ��� l VV������  ��  � ��� l VV�����  �   propose changes to user   � ���� l VV�����  �  implement changes   ��   � ��� l XX�����  � ' !		properties of item 1 of theMsgs   � ���� l XX������  ��  ��   t m     ���null     � ��   Mail.app �U  �B'�f�����  @�F�����tb��f��~ x�����b�,�emal   alis    D  Danger Mouse               ��KXH+     Mail.app                                                         �C�L��        ����  	                Applications    �ڭ�      �M*`         "Danger Mouse:Applications:Mail.app    M a i l . a p p    D a n g e r   M o u s e  Applications/Mail.app   / ��   n ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � X R this reads a line and resturns a list of values.  See below for position of list.   � ��� l     �����  � . ( TODO: figure out how to create records.   � ���� i    ��� I      ������� 0 readline  � ���� o      ���� 0 inline inLine��  ��  � k     ��� ��� l     ������  ��  � ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 20 savedtextitemdelimiters savedTextItemDelimiters� � � Q    � k   	 �  r   	  J   	 		 
��
 m   	 
  ;   ��   n      1    ��
�� 
txdl 1    ��
�� 
ascr  l   ������  ��    l   ����   ! other script statements...      r     J      m            m            m             !"! m    ##      " $��$ m    %%      ��   o      ���� 0 outlist outList &'& l   $()( r    $*+* n    ,-, 4    ��.
�� 
citm. m    ���� - o    ���� 0 inline inLine+ n      /0/ 4     #��1
�� 
cobj1 m   ! "���� 0 o     ���� 0 outlist outList)   the ID   ' 232 l  % %������  ��  3 454 l  % %��6��  6 E ?		set item 2 of outList to (text item 2 of inLine) -- isFlagged   5 787 Z   % =9:��;9 l  % +<��< =  % +=>= n   % )?@? 4   & )��A
�� 
citmA m   ' (���� @ o   % &���� 0 inline inLine> m   ) *BB  false   ��  : r   . 4CDC m   . /��
�� boovfalsD n      EFE 4   0 3��G
�� 
cobjG m   1 2���� F o   / 0���� 0 outlist outList��  ; r   7 =HIH m   7 8��
�� boovtrueI n      JKJ 4   9 <��L
�� 
cobjL m   : ;���� K o   8 9���� 0 outlist outList8 MNM l  > >������  ��  N OPO l  > >��Q��  Q B <		set item 3 of outList to (text item 3 of inLine) -- isRead   P RSR Z   > VTU��VT l  > DW��W =  > DXYX n   > BZ[Z 4   ? B��\
�� 
citm\ m   @ A���� [ o   > ?���� 0 inline inLineY m   B C]]  false   ��  U r   G M^_^ m   G H��
�� boovfals_ n      `a` 4   I L��b
�� 
cobjb m   J K���� a o   H I���� 0 outlist outList��  V r   P Vcdc m   P Q��
�� boovtrued n      efe 4   R U��g
�� 
cobjg m   S T���� f o   Q R���� 0 outlist outListS hih l  W W������  ��  i jkj l  W dlml r   W dnon 4   W _��p
�� 
ldt p l  Y ^q��q n   Y ^rsr 4   Z ]��t
�� 
citmt m   [ \���� s o   Y Z���� 0 inline inLine��  o n      uvu 4   ` c��w
�� 
cobjw m   a b���� v o   _ `���� 0 outlist outListm   the Date sent   k xyx l  e nz{z r   e n|}| n   e i~~ 4   f i���
�� 
citm� m   g h����  o   e f���� 0 inline inLine} n      ��� 4   j m���
�� 
cobj� m   k l���� � o   i j���� 0 outlist outList{   the Subject   y ��� l  o o������  ��  � ��� I  o w�����
�� .ascrcmnt****      � ****� l  o s���� n   o s��� 4  p s���
�� 
citm� m   q r������� o   o p���� 0 inline inLine��  ��  � ��� l  x x������  ��  � ��� l  x x�����  � / )finally, reset the text item delimiters:    � ��� r   x }��� o   x y���� 20 savedtextitemdelimiters savedTextItemDelimiters� n     ��� 1   z |��
�� 
txdl� 1   y z��
�� 
ascr� ��� l  ~ ~������  ��  � ��� L   ~ ��� o   ~ ���� 0 outlist outList� ���� l  � �������  ��  ��   R      ����
�� .ascrerr ****      � ****� o      ���� 0 m  � ����
�� 
errn� o      ���� 0 n  � ����
�� 
erob� o      ���� 0 f  � ����
�� 
errt� o      ���� 0 t  � ����
�� 
ptlr� o      �~�~ 0 p  �   k   � ��� ��� l  � ��}��}  � ; 5also reset text item delimiters in case of an error:    � ��� r   � ���� o   � ��|�| 20 savedtextitemdelimiters savedTextItemDelimiters� n     ��� 1   � ��{
�{ 
txdl� 1   � ��z
�z 
ascr� ��� l  � ��y��y  �  and resignal the error:    � ��x� R   � ��w��
�w .ascrerr ****      � ****� o   � ��v�v 0 m  � �u��
�u 
errn� o   � ��t�t 0 n  � �s��
�s 
erob� o   � ��r�r 0 f  � �q��
�q 
errt� o   � ��p�p 0 t  � �o��n
�o 
ptlr� o   � ��m�m 0 p  �n  �x    ��l� l  � ��k�j�k  �j  �l  ��       �i������i  � �h�g�f�e�h "0 processmessages processMessages�g 0 updatemessage updateMessage�f 0 readline  
�e .aevtoappnull  �   � ****� �d "�c�b���a�d "0 processmessages processMessages�c  �b  � �`�_�^�]�` 0 inlines inLines�_ 0 numparagraphs numParagraphs�^ 0 paragraphnum paragraphNum�] 0 theline theLine�  +�\�[�Z T�Y�X�W
�\ .JonsgClp****    ��� null
�[ 
cpar
�Z .corecnte****       ****
�Y .ascrcmnt****      � ****�X 0 readline  �W 0 updatemessage updateMessage�a O�E�O*j E�O��-j E�OkE�O 3�kh��/E�O��%�%j O�j O))�k+ k+ O�kE�[OY��� �V p�U�T���S�V 0 updatemessage updateMessage�U �R��R �  �Q�Q 0 inlist inList�T  � �P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�P 0 inlist inList�O 0 
theaccount 
theAccount�N 0 mbox  �M 0 themsgs theMsgs�L 0 thecount theCount�K 0 themsg theMsg�J 0 	isflagged 	isFlagged�I 0 isread isRead�H 0 thedate theDate�G 0 
thesubject 
theSubject�F 0 
changeflag 
changeFlag�E 0 
changeread 
changeRead�D 0 m  �C 0 n  �B 0 f  �A 0 t  �@ 0 p  � '� |�?�> ��=��<�;�:�9 � � ��8 ��7 � � ��6�5�4�3Z[_�2��1�0�/�.�-�,�+�*��)
�? 
mact
�> 
mbxp
�= 
mssg�  
�< 
drcv
�; 
cobj�: 
�9 .corecnte****       ****�8 
�7 .sysodlogaskr        TEXT
�6 
isfl
�5 
isrd
�4 
subj
�3 .aevtodocnull  �    alis�2 0 m  � �(�'�
�( 
errn�' 0 n  � �&�%�
�& 
erob�% 0 f  � �$�#�
�$ 
errt�# 0 t  � �"�!� 
�" 
ptlr�! 0 p  �   �1��
�0 
errn
�/ 
erob
�. 
errt
�- 
ptlr�, 
�+ 
cwin
�* 
pnam
�) .coreclosnull���     obj �S[�W�E�O*�/EO*�/�-EO*�/��/E�O��-�[�,\Z���/81E�O�j 
E�O�k �%�%���/%�%���/%�%j Y ��j  a ���/%a %���/%a %j Y ݣ�k/E�O�a ,E�O�a ,E�O��,E�O�a ,E�OfE�OfE�O���l/ ��j O /a �%a %���/%a %��l/%j OeE�O��l/�a ,FW -X  �a  )a �a �a  �a !] a "�Y hOPO*a #k/a $,�a %%  *a #k/j &Y hOPY hO���m/ ��m/�a ,FOPY hOPOPU� �������� 0 readline  � ��� �  �� 0 inline inLine�  � ��������� 0 inline inLine� 20 savedtextitemdelimiters savedTextItemDelimiters� 0 outlist outList� 0 m  � 0 n  � 0 f  � 0 t  � 0 p  � �� #%���B]���
�	������
� 
ascr
� 
txdl� 
� 
citm
� 
cobj
� 
ldt � 
�
 .ascrcmnt****      � ****�	 0 m  � ���
� 
errn� 0 n  � �� �
� 
erob�  0 f  � �����
�� 
errt�� 0 t  � ������
�� 
ptlr�� 0 p  ��  
� 
errn
� 
erob
� 
errt
� 
ptlr� � ���,E�O ~�kv��,FO������vE�O��k/��k/FO��l/�  f��l/FY e��l/FO��m/�  f��m/FY e��m/FO*����/E/���/FO���/���/FO��i/j O���,FO�OPW #X  ���,FO)a �a �a �a �a �OP� �����������
�� .aevtoappnull  �   � ****� k     ��  ����  ��  ��  �  � ���� "0 processmessages processMessages�� )j+   ascr  ��ޭ