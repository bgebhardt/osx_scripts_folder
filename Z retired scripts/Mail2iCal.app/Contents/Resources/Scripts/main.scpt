FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Mail2iCal, rev. 1.5.0, � 2002-2006 by Georg Klein <gklein1@mac.com>
	Exchange Calendar invite parsing guff by Andrew J Cosgriff <ajc@polydistortion.net>
	This script is distributed as open source software
	You are free to copy, modify and share parts of or the entire script, as long as you
	a) Keep this notice in any modified version of the script
	b) Transfer this notice to any derrivative work
	c) Don't charge money for this script or any derrivative of it
	
	This software is provided "as is" without any warranty, explicit or implied.
	The author of this software is not liable to any loss or damage of data that
	may happen by installing or using it.
       	  l      
  
 j     �� ��  0 pscriptversion pScriptVersion  m         Mail2iCal v1.5.0     ( " stores the current script version    	     j    �� ��  0 pprefsfilename pPrefsFileName  m       # net.kleinware.Mail2iCal.plist         l     ������  ��        p       ������ 0 grunmode gRunMode��        l     ������  ��        l      �� ��    6 0 first, we deal with execution form a mail rule          w          i    	   !   I     �� " #
�� .emalcpmanull���   @ mssg " o      ���� 0 allmessages allMessages # �� $��
�� 
pmar $ o      ���� 0 therule theRule��   ! k    � % %  & ' & r      ( ) ( m      * *       ) n      + , + 1    ��
�� 
txdl , 1    ��
�� 
ascr '  - . - r    	 / 0 / m     1 1 
 rule    0 o      ���� 0 grunmode gRunMode .  2 3 2 r   
  4 5 4 m   
 ��
�� boovfals 5 o      ���� 0 
createtodo 
createToDo 3  6 7 6 r     8 9 8 m    ��
�� boovfals 9 o      ���� 0 createevent createEvent 7  :�� : Q   � ; < = ; k   x > >  ? @ ? r    " A B A n     C D C I     �� E����  0 readpreference readPreference E  F G F o    ����  0 pprefsfilename pPrefsFileName G  H�� H m     I I  RuleToDoDelimiter   ��  ��   D  f     B o      ���� 0 tododelimiter toDoDelimiter @  J K J r   # 0 L M L n  # . N O N I   $ .�� P����  0 readpreference readPreference P  Q R Q o   $ )����  0 pprefsfilename pPrefsFileName R  S�� S m   ) * T T  RuleEventDelimiter   ��  ��   O  f   # $ M o      ����  0 eventdelimiter eventDelimiter K  U V U r   1 > W X W n  1 < Y Z Y I   2 <�� [����  0 readpreference readPreference [  \ ] \ o   2 7����  0 pprefsfilename pPrefsFileName ]  ^�� ^ m   7 8 _ _  DefaultCalendar   ��  ��   Z  f   1 2 X o      ���� 0 calendarname calendarName V  ` a ` Z   ? Q b c���� b =  ? B d e d o   ? @���� 0 calendarname calendarName e m   @ A f f       c n  E M g h g I   F M�� i���� 0 errorhandler errorHandler i  j k j m   F G l l  Default calendar missing    k  m n m m   G H o o 
 0001    n  p�� p  f   H I��  ��   h  f   E F��  ��   a  q r q Z   R g s t�� u s >  R U v w v o   R S���� 0 therule theRule w m   S T��
�� 
msng t r   X ] x y x n   X [ z { z 1   Y [��
�� 
pnam { o   X Y���� 0 therule theRule y o      ���� 0 rulename ruleName��   u l  ` g | } | r   ` g ~  ~ b   ` e � � � b   ` c � � � o   ` a���� 0 calendarname calendarName � m   a b � �       � o   c d����  0 eventdelimiter eventDelimiter  o      ���� 0 rulename ruleName } Q K this shouldn't happen at all, however, use some default values as failsafe    r  � � � r   h y � � � I  h w���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � o   l m���� 0 tododelimiter toDoDelimiter � �� ���
�� 
psin � o   p q���� 0 rulename ruleName��   � o      ���� 0 	theoffset 	theOffset �  � � � Z   z � � ����� � >  z } � � � o   z {���� 0 	theoffset 	theOffset � m   { |����   � l  � � � � � k   � � � �  � � � l  � � � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 
createtodo 
createToDo �   create a todo    �  � � � l  � � � � � r   � � � � � o   � ����� 0 tododelimiter toDoDelimiter � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � 7 1 now, remove the todo delimiter from the rulename    �  � � � l  � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � o   � ����� 0 rulename ruleName � o      ���� 0 
ruletokens 
ruleTokens � d ^ ruleTokens now contains the original rulename without the todo delimiter as a list of strings    �  � � � l  � � � � � r   � � � � � m   � � � �       � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � - ' return the delimiters back to standard    �  ��� � l  � � � � � r   � � � � � c   � � � � � o   � ����� 0 
ruletokens 
ruleTokens � m   � ���
�� 
TEXT � o      ���� 0 rulename ruleName � d ^ stich the string list back together. Result: the original rulename without the todo delimiter   ��   � "  we found the todo delimiter   ��  ��   �  � � � l  � � � � � r   � � � � � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � o   � �����  0 eventdelimiter eventDelimiter � �� ���
�� 
psin � o   � ����� 0 rulename ruleName��   � o      ���� 0 	theoffset 	theOffset � - ' the same game with the event delimiter    �  � � � Z   � � � ����� � >  � � � � � o   � ����� 0 	theoffset 	theOffset � m   � �����   � k   � � � �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 createevent createEvent �  � � � r   � � � � � o   � �����  0 eventdelimiter eventDelimiter � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � o   � ����� 0 rulename ruleName � o      ���� 0 
ruletokens 
ruleTokens �  � � � r   � � � � � m   � � � �       � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  ��� � r   � � � � � c   � � � � � o   � ����� 0 
ruletokens 
ruleTokens � m   � ���
�� 
TEXT � o      ���� 0 rulename ruleName��  ��  ��   �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 readpreference readPreference �  � � � m   � � � �  com.indev.MailActOn.plist    �  ��� � m   � � � �  ActOnRulePrefix   ��  ��   �  f   � � � o      ���� 0 	theprefix 	thePrefix �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 readpreference readPreference �  � � � m   � � � �  com.indev.MailActOn.plist    �  ��� � m   � �    ActOnRuleTitleDelimiter   ��  ��   �  f   � � � o      ���� 0 thedelimiter theDelimiter �  Z   X�� >   o   ���� 0 	theprefix 	thePrefix m         l M	
	 k  M  Z  ;�� C   o  	���� 0 rulename ruleName o  	
���� 0 	theprefix 	thePrefix l 5 k  5  r   I ����
�� .sysooffslong    ��� null��   ��
�� 
psof o  ���� 0 thedelimiter theDelimiter ����
�� 
psin o  ���� 0 rulename ruleName��   o      ���� (0 calendarnameoffset calendarNameOffset �� r   5  c   3!"! l  /#�# n   /$%$ 7 !/�~&'
�~ 
cha & l '+(�}( [  '+)*) o  ()�|�| (0 calendarnameoffset calendarNameOffset* m  )*�{�{ �}  ' m  ,.�z�z��% o   !�y�y 0 rulename ruleName�  " m  /2�x
�x 
TEXT  o      �w�w 0 calendarname calendarName��   L F this rule is called by MailActOn, strip the prefix from the rule name   ��   l 8;+,+ r  8;-.- o  89�v�v 0 rulename ruleName. o      �u�u 0 calendarname calendarName, l f MailActOn is installed, but this is not a MailActOn rule, use the complete rule name as calendar name    /0/ r  <D121 n <B343 I  =B�t5�s�t 0 stripoddchars stripOddChars5 6�r6 o  =>�q�q 0 calendarname calendarName�r  �s  4  f  <=2 o      �p�p 0 calendarname calendarName0 7�o7 r  EM898 n EK:;: I  FK�n<�m�n $0 checkforcalendar checkForCalendar< =�l= o  FG�k�k 0 calendarname calendarName�l  �m  ;  f  EF9 o      �j�j 0 mailcal mailCal�o  
   MailActOn is installed   ��   l PX>?> r  PX@A@ n PVBCB I  QV�iD�h�i $0 checkforcalendar checkForCalendarD E�gE o  QR�f�f 0 calendarname calendarName�g  �h  C  f  PQA o      �e�e 0 mailcal mailCal? C = MailActOn is not installed, use the saved calendar as target    FGF Z  YhHI�d�cH o  YZ�b�b 0 
createtodo 
createToDoI l ]dJKJ n ]dLML I  ^d�aN�`�a 0 generatetodos generateToDosN OPO o  ^_�_�_ 0 allmessages allMessagesP Q�^Q o  _`�]�] 0 mailcal mailCal�^  �`  M  f  ]^K A ; rule name suggests todos as targets, so generate the todos   �d  �c  G RSR l ii�\T�\  T h b note, that this is not an else clause. Messages can be converted into events and todos in one run   S U�[U Z  ixVW�Z�YV o  ij�X�X 0 createevent createEventW l mtXYX n mtZ[Z I  nt�W\�V�W  0 generateevents generateEvents\ ]^] o  no�U�U 0 allmessages allMessages^ _�T_ o  op�S�S 0 mailcal mailCal�T  �V  [  f  mnY C = rule name suggests events as targets, so generate the events   �Z  �Y  �[   < R      �R`a
�R .ascrerr ****      � ****` o      �Q�Q 0 theerror theErrora �Pbc
�P 
errnb o      �O�O 0 	thenumber 	theNumberc �Nd�M
�N 
erobd o      �L�L 0 theoffender theOffender�M   = l ��efe n ��ghg I  ���Ki�J�K 0 errorhandler errorHandleri jkj o  ���I�I 0 theerror theErrork lml o  ���H�H 0 	thenumber 	theNumberm n�Gn o  ���F�F 0 theoffender theOffender�G  �J  h  f  ��f   something went wrong   ��   �null     � ��  <Mail.app��^  � I�������  ��~ (8 �������<��T0}���� ��<�emal  alis    8  TheBoard                   ���bH+    <Mail.app                                                         �ȾM8p        ����  	                Applications    ��|B      �M*`      <  TheBoard:Applications:Mail.app    M a i l . a p p    T h e B o a r d  Applications/Mail.app   / ��    opo l     �E�D�E  �D  p qrq l      �Cs�C  s X R next, we deal with manual calls to the script, such as from the AppleScript menu    r tut i   
 vwv I     �B�A�@
�B .aevtoappnull  �   � ****�A  �@  w k    Dxx yzy r     {|{ m     }} 
 menu   | o      �?�? 0 grunmode gRunModez ~~ r    	��� m    ��      � n     ��� 1    �>
�> 
txdl� 1    �=
�= 
ascr ��� r   
 ��� n  
 ��� I    �<��;�<  0 readpreference readPreference� ��� o    �:�:  0 pprefsfilename pPrefsFileName� ��9� m    ��  DefaultCalendar   �9  �;  �  f   
 � o      �8�8 "0 thecalendarname theCalendarName� ��� l    ��� r     ��� n   ��� I    �7��6�7 $0 checkforcalendar checkForCalendar� ��5� o    �4�4 "0 thecalendarname theCalendarName�5  �6  �  f    � o      �3�3 0 mailcal mailCal� B < look for the target calendar, signal we are called manually   � ��2� O   !D��� Q   %C���� l  ('��� k   ('�� ��� Z   ( H���1�0� =  ( 1��� l  ( /��/� I  ( /�.��-
�. .corecnte****       ****� 2  ( +�,
�, 
mvwr�-  �/  � m   / 0�+�+  � r   4 D��� I  4 @�*�)�
�* .corecrel****      � null�)  � �(��
�( 
kocl� m   6 7�'
�' 
mvwr� �&��%
�& 
insh� n   8 <���  :   ; <� 2  8 ;�$
�$ 
mvwr�%  � o      �#�# 0 	theviewer 	theViewer�1  �0  � ��"� Z   I'���!�� =  I W��� l  I U�� � I  I U���
� .corecnte****       ****� n   I Q��� 1   M Q�
� 
smgs� 4   I M��
� 
mvwr� m   K L�� �  �   � m   U V��  � l  Z ���� k   Z ��� ��� I  Z ~���
� .sysodisAaleR        TEXT� m   Z ]��  No messages selected   � ���
� 
mesS� m   ` c�� P JPlease select some messages to export or click 'Reset' to set new defaults   � ���
� 
btns� J   f n�� ��� m   f i��  Reset   � ��� m   i l��  OK   �  � ���
� 
dflt� m   q r�� � ���
� 
givu� m   u x�� �  � ��� s    ���� c    ���� 1    ��
� 
rslt� m   � ��
� 
list� J      �� ��� o      �� 0 	thebutton 	theButton�  � ��� Z   � �����
� =  � ���� o   � ��	�	 0 	thebutton 	theButton� m   � ���  Reset   � l  � ���� k   � ��� ��� r   � ���� n  � ���� I   � �����  0 choosecalendar chooseCalendar�  �  �  f   � �� o      �� 0 mailcal mailCal� ��� n  � ���� I   � ����� 0 
setduedate 
setDueDate�  �  �  f   � ��  � ) # the user wants to set new defaults   �  �
  �  � ] W there are no target messages. Check if this is intentionally, as to reset the defaults   �!  � k   �'�� ��� l  � ���� r   � ���� n   � ���� 1   � �� 
�  
smgs� 4   � ����
�� 
mvwr� m   � ����� � o      ���� 0 allmessages allMessages� e _ allMessages contains all user-selected messages, which we will next add to the target calendar   � ��� l  � �������  ��  � ��� r   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � �    Turn messages into   � ��
�� 
btns J   � �  m   � �  Cancel     m   � �		  
ToDo items    
��
 m   � �  Events   ��   ����
�� 
dflt m   � �  Events   ��  � o      ���� 0 thereply theReply�  r   � � n   � � 1   � ���
�� 
bhit o   � ����� 0 thereply theReply o      ���� 0 	thebutton 	theButton �� Z   �'�� =  � � o   � ����� 0 	thebutton 	theButton m   � �  Events    n  � � I   � �������  0 generateevents generateEvents  o   � ����� 0 allmessages allMessages  ��  o   � ����� 0 mailcal mailCal��  ��    f   � � !"! = #$# o  ���� 0 	thebutton 	theButton$ m  %%  
ToDo items   " &'& n ()( I  ��*���� 0 generatetodos generateToDos* +,+ o  ���� 0 allmessages allMessages, -��- o  ���� 0 mailcal mailCal��  ��  )  f  ' ./. = 010 o  ���� 0 	thebutton 	theButton1 m  22  Cancel   / 3��3 L  !#����  ��  ��  ��  �"  � D > fix a bug that occurs when there is no message viewer visible   � R      ��45
�� .ascrerr ****      � ****4 o      ���� 0 theerror theError5 ��67
�� 
errn6 o      ���� 0 	thenumber 	theNumber7 ��8��
�� 
erob8 o      ���� 0 theoffender theOffender��  � Z  /C9:����9 > /4;<; o  /0���� 0 	thenumber 	theNumber< m  03������: l 7?=>= l 7??@? n 7?ABA I  8?��C���� 0 errorhandler errorHandlerC DED o  89���� 0 theerror theErrorE FGF o  9:���� 0 	thenumber 	theNumberG H��H o  :;���� 0 theoffender theOffender��  ��  B  f  78@ 7 1 an unexpected error occured, allow user feedback   > 4 . clicking Cancel will be repported as an error   ��  ��  � m   ! " �2  u IJI l     ������  ��  J KLK l      ��M��  M N H this handler checks, if there is a default calendar to write events to    L NON i    PQP I      ��R���� $0 checkforcalendar checkForCalendarR S��S o      ���� 0 calendarname calendarName��  ��  Q k     kTT UVU Z     %WX����W =    YZY o     ���� 0 calendarname calendarNameZ m    [[      X k    !\\ ]^] r    _`_ n   aba I    ��c����  0 readpreference readPreferencec ded o    ����  0 pprefsfilename pPrefsFileNamee f��f m    gg  DefaultCalendar   ��  ��  b  f    ` o      ���� 0 calendarname calendarName^ h��h Z    !ij����i =   klk o    ���� 0 calendarname calendarNamel m    mm      j l   non r    pqp m    rr  	Mail2iCal   q o      ���� 0 calendarname calendarNameo ) # something went wrong, use failsafe   ��  ��  ��  ��  ��  V sts O   & huvu Q   * gwxyw l  - 3z{z r   - 3|}| 4   - 1��~
�� 
wres~ o   / 0���� 0 calendarname calendarName} o      ���� 0 mailcal mailCal{ &   does the calendar still exist?    x R      ���
�� .ascrerr ****      � **** o      ���� 0 theerror theError� ����
�� 
errn� o      ���� 0 	thenumber 	theNumber� �����
�� 
erob� o      ���� 0 theoffender theOffender��  y Z   ; g������ =  ; >��� o   ; <���� 0 	thenumber 	theNumber� m   < =���� � l  A Y��� Z   A Y������ =  A D��� o   A B���� 0 grunmode gRunMode� m   B C�� 
 rule   � l  G O��� l  G O��� r   G O��� n  G M��� I   H M�������  0 createcalendar createCalendar� ���� o   H I���� 0 calendarname calendarName��  ��  �  f   G H� o      ���� 0 mailcal mailCal� ( " create calendar with default name   � B < rule execution does not allow for user interaction, go auto   ��  � l  R Y��� r   R Y��� n  R W��� I   S W��������  0 choosecalendar chooseCalendar��  ��  �  f   R S� o      ���� 0 mailcal mailCal� 2 , we are running manually, ask for a calendar   � 3 - no calendar with this name, create a new one   ��  � k   \ g�� ��� l  \ d��� n  \ d��� I   ] d������� 0 errorhandler errorHandler� ��� o   ] ^���� 0 theerror theError� ��� o   ^ _���� 0 	thenumber 	theNumber� ���� o   _ `���� 0 theoffender theOffender��  ��  �  f   \ ]� , & some other error occured, handle this   � ���� L   e g�� m   e f��      ��  v m   & '���null     a����  <iCal.app��^  �� I�����f  ��� (�������<��$0}���� ��<�wrbt  alis    8  TheBoard                   ���bH+    <iCal.app                                                        :��h�        ����  	                Applications    ��|B      ��Z�      <  TheBoard:Applications:iCal.app    i C a l . a p p    T h e B o a r d  Applications/iCal.app   / ��  t ���� L   i k�� o   i j���� 0 mailcal mailCal��  O ��� l     ������  ��  � ��� l      �����  � l f this handler lets the user choose his default target calendar or asks for the name of a new calendar    � ��� i    ��� I      ��������  0 choosecalendar chooseCalendar��  ��  � k    ��� ��� O     ��� l   ��� r    ��� 6   ��� n    	��� 1    	��
�� 
wr02� 2   ��
�� 
wres� =  
 ��� 1    ��
�� 
wr05� m    ��
�� boovtrue� o      ���� 0 allcals allCals� ' ! get titles of existing calendars   � m     �� ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ��� r    /��� I   -����
�� .gtqpchltTEXT  @   @ TEXT� o    ���� 0 allcals allCals� ����
�� 
prmp� m    ��  Export to which calendar   � ����
�� 
inSL� J     #�� ���� m     !��  Email   ��  � ����
�� 
cnbt� m   $ %�� 	 New   � ����
�� 
empL� m   & '��
�� boovtrue� �����
�� 
mlsl� m   ( )��
�� boovfals��  � o      ���� 0 thecal theCal� ��� Z   0������� G   0 A��� =  0 3��� o   0 1�� 0 thecal theCal� m   1 2�~
�~ boovfals� =  6 =��� l  6 ;��}� I  6 ;�|��{
�| .corecnte****       ****� o   6 7�z�z 0 thecal theCal�{  �}  � m   ; <�y�y  � l  D��� k   D�� ��� l  D b��� I  D b�x��
�x .sysodlogaskr        TEXT� m   D G��  Name your calendar   � �w��
�w 
dtxt� m   J M��  Email   � �v��
�v 
btns� J   P X�� � � m   P S  Cancel     �u m   S V  OK   �u  � �t�s
�t 
dflt m   [ \�r�r �s  � ' ! get the name of the new calendar   �  s   c  c   c j	
	 l  c f�q 1   c f�p
�p 
rslt�q  
 m   f i�o
�o 
list J        o      �n�n 0 thename theName �m o      �l�l 0 	thebutton 	theButton�m    Z   ��k >  � � o   � ��j�j 0 	thebutton 	theButton m   � �  Cancel    k   �  l  � � r   � � n  � �  I   � ��i!�h�i "0 writepreference writePreference! "#" o   � ��g�g  0 pprefsfilename pPrefsFileName# $%$ m   � �&&  DefaultCalendar   % '�f' o   � ��e�e 0 thename theName�f  �h     f   � � o      �d�d 0 thereply theReply 1 + store the name of the new default calendar    (�c( Z   �)*�b�a) =  � �+,+ o   � ��`�` 0 thereply theReply, m   � ��_�_��* k   �-- ./. r   � �010 I  � ��^23
�^ .sysodisAaleR        TEXT2 m   � �44 ! Error in saving preferences   3 �]56
�] 
mesS5 m   � �77 n hYour new default calendar could not be saved. Reason unknown. I could try to remove the preference file.   6 �\89
�\ 
btns8 J   � �:: ;<; m   � �==  	Remove it   < >�[> m   � �??  Leave it alone   �[  9 �Z@A
�Z 
dflt@ m   � �BB  Leave it alone   A �YCD
�Y 
as AC m   � ��X
�X EAlTcriTD �WE�V
�W 
givuE m   � ��U�U 
�V  1 o      �T�T 0 thereply theReply/ FGF r   � �HIH n   � �JKJ 1   � ��S
�S 
bhitK o   � ��R�R 0 thereply theReplyI o      �Q�Q 0 	thebutton 	theButtonG L�PL Z   �MN�O�NM =  � �OPO o   � ��M�M 0 	thebutton 	theButtonP m   � �QQ  	Remove it   N k   �	RR STS r   � �UVU l  � �W�LW b   � �XYX l  � �Z�KZ I  � ��J[\
�J .earsffdralis        afdr[ m   � ��I
�I afdmpref\ �H]^
�H 
from] m   � ��G
�G fldmfldu^ �F_�E
�F 
rtyp_ m   � ��D
�D 
utxt�E  �K  Y o   � ��C�C  0 pprefsfilename pPrefsFileName�L  V o      �B�B 0 	prefsfile 	prefsFileT `�A` O   �	aba I  ��@c�?
�@ .coredeloobj        obj c 4   ��>d
�> 
filed o  �=�= 0 	prefsfile 	prefsFile�?  b m   � �ee�null     s����  

Finder.app^  � I��X���d  ��~ (8 x�������<��l0}���� ��<�MACS   alis    f  TheBoard                   ���bH+    

Finder.app                                                       Cɿ�D~        ����  	                CoreServices    ��|B      ��6n      
  �  �  /TheBoard:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    T h e B o a r d  &System/Library/CoreServices/Finder.app  / ��  �A  �O  �N  �P  �b  �a  �c  �k   l fgf L  �<�<  g $  user changed his mind halfway    h�;h l iji r  klk n mnm I  �:o�9�:  0 createcalendar createCalendaro p�8p o  �7�7 0 thename theName�8  �9  n  f  l o      �6�6 0 mailcal mailCalj 2 , create a new calendar with the desired name   �;  � H B the user clicked "New" or selected none of the existing calendars   ��  � l "�qrq k  "�ss tut l "*vwv r  "*xyx n  "(z{z 4  #(�5|
�5 
cobj| m  &'�4�4 { o  "#�3�3 0 thecal theCaly o      �2�2 0 thename theNamew 1 + store the name of the new default calendar   u }~} l +;� r  +;��� n +9��� I  ,9�1��0�1 "0 writepreference writePreference� ��� o  ,1�/�/  0 pprefsfilename pPrefsFileName� ��� m  14��  DefaultCalendar   � ��.� o  45�-�- 0 thename theName�.  �0  �  f  +,� o      �,�, 0 thereply theReply� 1 + store the name of the new default calendar   ~ ��� Z  <����+�*� = <?��� o  <=�)�) 0 thereply theReply� m  =>�(�(��� k  B��� ��� r  Bl��� I Bj�'��
�' .sysodisAaleR        TEXT� m  BE�� ! Error in saving preferences   � �&��
�& 
mesS� m  HK�� n hYour new default calendar could not be saved. Reason unknown. I could try to remove the preference file.   � �%��
�% 
btns� J  NV�� ��� m  NQ��  	Remove it   � ��$� m  QT��  Leave it alone   �$  � �#��
�# 
dflt� m  Y\��  Leave it alone   � �"��
�" 
as A� m  _b�!
�! EAlTcriT� � ��
�  
givu� m  ef�� 
�  � o      �� 0 thereply theReply� ��� r  mt��� n  mr��� 1  nr�
� 
bhit� o  mn�� 0 thereply theReply� o      �� 0 	thebutton 	theButton� ��� Z  u������ = uz��� o  uv�� 0 	thebutton 	theButton� m  vy��  	Remove it   � k  }��� ��� r  }���� l }���� b  }���� l }���� I }����
� .earsffdralis        afdr� m  }��
� afdmpref� ���
� 
from� m  ���
� fldmfldu� ���
� 
rtyp� m  ���
� 
utxt�  �  � o  ����  0 pprefsfilename pPrefsFileName�  � o      �� 0 	prefsfile 	prefsFile� ��
� Q  �����	� O  ����� I �����
� .coredeloobj        obj � 4  ����
� 
file� o  ���� 0 	prefsfile 	prefsFile�  � m  ��e� R      ���
� .ascrerr ****      � ****�  �  �	  �
  �  �  �  �+  �*  � ��� l ���� �  �   � ���� O  ����� l ����� r  ����� 4  �����
�� 
wres� o  ������ 0 thename theName� o      ���� 0 mailcal mailCal� 3 - and get a reference to the selected calendar   � m  �����  r 6 0 the user selected one of the existing calendars   � ���� L  ���� o  ������ 0 mailcal mailCal��  � ��� l     ������  ��  � ��� l      �����  � 3 - this handler creates a new calendar in iCal    � ��� i    ��� I      �������  0 createcalendar createCalendar� ���� o      ���� 0 calendarname calendarName��  ��  � k     /�� ��� Z     ������� =    ��� o     ���� 0 calendarname calendarName� m    ��      � r    	��� m    ��  Email   � o      ���� 0 calendarname calendarName��  ��  � ��� O    ,��� k    +�� ��� r     ��� I   �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
wres� �����
�� 
insh� l   ���� n    ���  ;    � 2   ��
�� 
wres��  ��  � o      ���� 0 mailcal mailCal� ���� O   ! +� � r   % * o   % &���� 0 calendarname calendarName 1   & )��
�� 
wr02  o   ! "���� 0 mailcal mailCal��  � m    �� �� L   - / o   - .���� 0 mailcal mailCal��  �  l     ������  ��    l      ��	��  	 9 3 this handler asks the user for a default due date     

 i     I      �������� 0 
setduedate 
setDueDate��  ��   k     �  r      n     I    ������  0 readpreference readPreference  o    ����  0 pprefsfilename pPrefsFileName �� m      DefaultDueDate   ��  ��    f      o      ���� 0 
theduedate 
theDueDate  I   ��
�� .sysodlogaskr        TEXT m     B <Set due date  for ToDo items (in hours from arrival of mail)    �� 
�� 
dtxt o    ���� 0 
theduedate 
theDueDate  ��!"
�� 
btns! m    ## 	 Set   " ��$��
�� 
dflt$ m    ���� ��   %&% s    .'(' c    )*) 1    ��
�� 
rslt* m    ��
�� 
list( J      ++ ,-, o      ���� 0 thetext theText- .��. o      ���� 0 	thebutton 	theButton��  & /0/ r   / ?121 I   / =��3���� "0 writepreference writePreference3 454 o   0 5����  0 pprefsfilename pPrefsFileName5 676 m   5 688  DefaultDueDate   7 9��9 l  6 9:��: c   6 9;<; o   6 7���� 0 thetext theText< m   7 8��
�� 
long��  ��  ��  2 o      ���� 0 thereply theReply0 =��= Z   @ �>?����> =  @ C@A@ o   @ A���� 0 thereply theReplyA m   A B������? k   F �BB CDC r   F nEFE I  F l��GH
�� .sysodisAaleR        TEXTG m   F GII ! Error in saving preferences   H ��JK
�� 
mesSJ m   J MLL n hYour new default due date could not be saved. Reason unknown. I could try to remove the preference file.   K ��MN
�� 
btnsM J   N VOO PQP m   N QRR  	Remove it   Q S��S m   Q TTT  Leave it alone   ��  N ��UV
�� 
dfltU m   W ZWW  Leave it alone   V ��XY
�� 
as AX m   ] `��
�� EAlTcriTY ��Z��
�� 
givuZ m   c f���� 
��  F o      ���� 0 thereply theReplyD [\[ r   o v]^] n   o t_`_ 1   p t��
�� 
bhit` o   o p���� 0 thereply theReply^ o      ���� 0 	thebutton 	theButton\ a��a Z   w �bc����b =  w |ded o   w x���� 0 	thebutton 	theButtone m   x {ff  	Remove it   c k    �gg hih r    �jkj l   �l��l b    �mnm l   �o��o I   ���pq
�� .earsffdralis        afdrp m    ���
�� afdmprefq ��rs
�� 
fromr m   � ���
�� fldmfldus ��t��
�� 
rtypt m   � ���
�� 
utxt��  ��  n o   � �����  0 pprefsfilename pPrefsFileName��  k o      ���� 0 	prefsfile 	prefsFilei u��u O   � �vwv I  � ���x��
�� .coredeloobj        obj x 4   � ���y
�� 
filey o   � ����� 0 	prefsfile 	prefsFile��  w m   � �e��  ��  ��  ��  ��  ��  ��   z{z l     ������  ��  { |}| l      ��~��  ~ G A this handler converts the handled messages into calendar events    } � i    !��� I      �������  0 generateevents generateEvents� ��� o      ���� 0 allmessages allMessages� ���� o      ���� 0 mailcal mailCal��  ��  � O    K��� X   J����� l  E��� k   E�� ��� l   ��� r    ��� n    ��� 1    ��
�� 
sndr� o    ���� 0 
curmessage 
curMessage� o      ���� 0 	thesender 	theSender� * $ get sender of the received message    � ��� r    !��� I   �����
�� .emaleafnTEXT        TEXT� o    ���� 0 	thesender 	theSender��  � o      ���� 0 
sendername 
senderName� ��� r   " )��� I  " '�����
�� .emaleauaTEXT        TEXT� o   " #���� 0 	thesender 	theSender��  � o      ���� 0 senderaddress senderAddress� ��� l  * /��� r   * /��� n   * -��� 1   + -��
�� 
subj� o   * +���� 0 
curmessage 
curMessage� o      ���� 0 
thesubject 
theSubject� ; 5 get message subject, this will be the events summary   � ��� l  0 5��� r   0 5��� n   0 3��� 1   1 3��
�� 
ctnt� o   0 1���� 0 
curmessage 
curMessage� o      ���� 0 thebody theBody� < 6 get message body, this will be the events description   � ��� l  6 ;��� r   6 ;��� n   6 9��� 1   7 9�
� 
drcv� o   6 7�~�~ 0 
curmessage 
curMessage� o      �}�} 0 thedate theDate� 9 3 get sent date, this will be the event's start date   � ��� l  < <�|�{�|  �{  � ��� Z   <����z�� C   < ?��� o   < =�y�y 0 thebody theBody� m   = >��  When:    � l  B���� k   B��� ��� Z   B [���x�� C   B E��� o   B C�w�w 0 
thesubject 
theSubject� m   C D��  Updated:   � r   H U��� n   H S��� 7  I S�v��
�v 
ctxt� m   M O�u�u 
� m   P R�t�t��� o   H I�s�s 0 
thesubject 
theSubject� o      �r�r 0 
thesummary 
theSummary�x  � r   X [��� o   X Y�q�q 0 
thesubject 
theSubject� o      �p�p 0 
thesummary 
theSummary� ��� l  \ \�o�n�o  �n  � ��� r   \ e��� n   \ c��� 4   ` c�m�
�m 
cwor� m   a b�l�l � n   \ `��� 4   ] `�k�
�k 
cpar� m   ^ _�j�j � o   \ ]�i�i 0 thebody theBody� o      �h�h 0 theday theDay� ��� r   f q��� n   f o��� 4   j o�g�
�g 
cwor� m   k n�f�f � n   f j��� 4   g j�e�
�e 
cpar� m   h i�d�d � o   f g�c�c 0 thebody theBody� o      �b�b 0 themonth theMonth� ��� r   r }��� n   r {��� 4   v {�a�
�a 
cwor� m   w z�`�` � n   r v��� 4   s v�_�
�_ 
cpar� m   t u�^�^ � o   r s�]�] 0 thebody theBody� o      �\�\ 0 theyear theYear� ��� r   ~ ���� l  ~ ���[� n   ~ ���� 4   � ��Z�
�Z 
cwor� m   � ��Y�Y � n   ~ ���� 4    ��X�
�X 
cpar� m   � ��W�W � o   ~ �V�V 0 thebody theBody�[  � o      �U�U 0 
starthours 
StartHours�    r   � � l  � ��T n   � � 4   � ��S
�S 
cwor m   � ��R�R  n   � �	 4   � ��Q

�Q 
cpar
 m   � ��P�P 	 o   � ��O�O 0 thebody theBody�T   o      �N�N 0 	startmins 	StartMins  r   � � l  � ��M n   � � 4   � ��L
�L 
cwor m   � ��K�K  n   � � 4   � ��J
�J 
cpar m   � ��I�I  o   � ��H�H 0 thebody theBody�M   o      �G�G 0 endhours EndHours  r   � � l  � ��F n   � � 4   � ��E
�E 
cwor m   � ��D�D 	 n   � � 4   � ��C 
�C 
cpar  m   � ��B�B  o   � ��A�A 0 thebody theBody�F   o      �@�@ 0 endmins EndMins !"! r   � �#$# c   � �%&% 4   � ��?'
�? 
ctxt' l  � �(�>( b   � �)*) b   � �+,+ b   � �-.- b   � �/0/ b   � �121 b   � �343 b   � �565 b   � �787 o   � ��=�= 0 themonth theMonth8 m   � �99      6 o   � ��<�< 0 theday theDay4 m   � �::      2 o   � ��;�; 0 theyear theYear0 m   � �;;      . o   � ��:�: 0 
starthours 
StartHours, m   � �<<  :   * o   � ��9�9 0 	startmins 	StartMins�>  & m   � ��8
�8 
ldt $ o      �7�7 0 	startdate 	startDate" =>= r   � �?@? c   � �ABA 4   � ��6C
�6 
ctxtC l  � �D�5D b   � �EFE b   � �GHG b   � �IJI b   � �KLK b   � �MNM b   � �OPO b   � �QRQ b   � �STS o   � ��4�4 0 themonth theMonthT m   � �UU      R o   � ��3�3 0 theday theDayP m   � �VV      N o   � ��2�2 0 theyear theYearL m   � �WW      J o   � ��1�1 0 endhours EndHoursH m   � �XX  :   F o   � ��0�0 0 endmins EndMins�5  B m   � ��/
�/ 
ldt @ o      �.�. 0 enddate endDate> YZY l  � ��-�,�-  �,  Z [\[ Z   �a]^�+_] ?   �`a` l  �b�*b I  ��)�(c
�) .sysooffslong    ��� null�(  c �'de
�' 
psofd m   ff  Where:   e �&g�%
�& 
psing o  �$�$ 0 thebody theBody�%  �*  a m  �#�# ^ k  Whh iji r  +klk [  'mnm l #o�"o l #p�!p I #� �q
�  .sysooffslong    ��� null�  q �rs
� 
psofr m  tt  Where:    s �u�
� 
psinu o  �� 0 thebody theBody�  �!  �"  n m  #&�� l o      �� 	0 start  j vwv l ,Cxyx r  ,Cz{z \  ,?|}| l ,=~�~ I ,=��
� .sysooffslong    ��� null�   ���
� 
psof� m  03��  *~*~*~*~*~*~*~*~*~*   � ���
� 
psin� o  67�� 0 thebody theBody�  �  } m  =>�� { o      �� 0 loc_end  y !  strip the carriage returns   w ��� r  DW��� n  DS��� 7 ES���
� 
ctxt� o  IM�� 	0 start  � o  NR�� 0 loc_end  � o  DE�� 0 thebody theBody� o      �
�
 0 thelocation theLocation�  �+  _ r  Za��� m  Z]��      � o      �	�	 0 thelocation theLocation\ ��� Q  b����� k  e��� ��� r  e���� l e���� I e����
� .sysooffslong    ��� null�  � ���
� 
psof� l i���� n i���� 4  ����
� 
cwor� m  ���� � n  i���� 7 j�� ��
�  
ctxt� l n����� [  n���� l o����� I o������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  sv��  *~*~*~*~*~*~*~*~*~*   � �����
�� 
psin� o  yz���� 0 thebody theBody��  ��  � m  ������ ��  � m  ��������� o  ij���� 0 thebody theBody�  � �����
�� 
psin� o  ������ 0 thebody theBody��  �  � o      ���� 	0 start  � ���� r  ����� n  ����� 7 ������
�� 
ctxt� o  ������ 	0 start  � m  ��������� o  ������ 0 thebody theBody� o      ����  0 thedescription theDescription��  � R      ������
�� .ascrerr ****      � ****��  ��  � r  ����� m  ����      � o      ����  0 thedescription theDescription�  � ) # we're an Exchange Meeting Request    �z  � k  ���� ��� r  ����� o  ������ 0 thedate theDate� o      ���� 0 	startdate 	startDate� ��� r  ����� l ������ c  ����� l ������ [  ����� o  ������ 0 thedate theDate� 1  ����
�� 
min ��  � m  ����
�� 
ldt ��  � o      ���� 0 enddate endDate� ��� r  ����� o  ������ 0 thebody theBody� o      ����  0 thedescription theDescription� ���� r  ����� m  ����      � o      ���� 0 thelocation theLocation��  � ��� Q  ������ r  ����� n  ����� 4 �����
�� 
cobj� m  ������ � n ����� I  ��������� 0 findurls findURLs� ���� o  ������ 0 thebody theBody��  ��  �  f  ��� o      ���� 0 theurl theURL� R      ������
�� .ascrerr ****      � ****��  ��  � r  ����� m  ����      � o      ���� 0 theurl theURL� ���� O  �E��� k  D�� ��� r  ��� l ���� I �����
�� .corecrel****      � null��  � ����
�� 
kocl� m  
��
�� 
wrev� �����
�� 
insh� l ���� n  ���  ;  � n ��� 2 ��
�� 
wrev� o  ���� 0 mailcal mailCal��  ��  ��  � o      ���� 0 newevent newEvent� ���� O  D��� k  $C�� ��� r  $-��� o  $'���� 0 	startdate 	startDate� 1  ',��
�� 
wr1s� ��� r  .7��� o  .1���� 0 enddate endDate� 1  16��
�� 
wr5s� ��� r  8?� � o  89���� 0 
thesubject 
theSubject  1  9>��
�� 
wr11�  r  @I o  @C����  0 thedescription theDescription 1  CH��
�� 
wr12  r  JS o  JM���� 0 thelocation theLocation 1  MR��
�� 
wr14 	
	 r  T] o  TW���� 0 theurl theURL 1  W\��
�� 
wr16
  l ^^����   � �					make new display alarm at the end of display alarms with properties {trigger interval:3 * days / minutes} -- alarm time is in seconds after (positive interval value) or before (negative) event start date    �� Q  ^C�� k  a:  r  ag J  ac����   o      ���� 0 theattendees theAttendees �� w  h:  k  j:  r  jw b  js  o  jm���� 0 theattendees theAttendees  n  mr!"! 2 nr��
�� 
trcp" o  mn���� 0 
curmessage 
curMessage o      ���� 0 theattendees theAttendees #$# r  x�%&% b  x�'(' o  x{���� 0 theattendees theAttendees( n  {�)*) 2 |���
�� 
crcp* o  {|���� 0 
curmessage 
curMessage& o      ���� 0 theattendees theAttendees$ +,+ r  ��-.- b  ��/0/ o  ������ 0 theattendees theAttendees0 n  ��121 2 ����
�� 
brcp2 o  ������ 0 
curmessage 
curMessage. o      ���� 0 theattendees theAttendees, 343 w  ��5�5 k  ��66 787 r  ��9:9 I ������;
�� .corecrel****      � null��  ; ��<=
�� 
kocl< m  ����
�� 
wrea= ��>��
�� 
insh> l ��?��? n  ��@A@  ;  ��A n ��BCB 2 ����
�� 
wreaC o  ������ 0 newevent newEvent��  ��  : o      ���� 0 newattendee newAttendee8 D��D O  ��EFE k  ��GG HIH r  ��JKJ o  ������ 0 
sendername 
senderNameK 1  ����
�� 
wra1I L��L r  ��MNM o  ������ 0 senderaddress senderAddressN 1  ����
�� 
wra2��  F o  ������ 0 newattendee newAttendee��  4 O��O X  �:P��QP k  �5RR STS r  ��UVU n  ��WXW 1  ����
�� 
pnamX o  ������ 0 curattendee curAttendeeV o      ���� 0 curname curNameT YZY r  ��[\[ n  ��]^] 1  ����
�� 
radd^ o  ������ 0 curattendee curAttendee\ o      ���� 0 
curaddress 
curAddressZ _��_ w  �5`�` k  �5aa bcb r  �ded I �����f
�� .corecrel****      � null��  f ��gh
�� 
koclg m  ����
�� 
wreah ��i��
�� 
inshi l  j��j n   klk  ;  l n  mnm 2 ��
�� 
wrean o   ���� 0 newevent newEvent��  ��  e o      ���� 0 newattendee newAttendeec o��o O  5pqp k  4rr sts l &uvu r  &wxw n   yzy 1   �
� 
pnamz o  �~�~ 0 curattendee curAttendeex 1   %�}
�} 
wra1v   curName   t {�|{ l '4|}| r  '4~~ n  '.��� o  *.�{�{ 0 address  � o  '*�z�z 0 curattendee curAttendee 1  .3�y
�y 
wra2}  
curAddress   �|  q o  �x�x 0 newattendee newAttendee��  ��  �� 0 curattendee curAttendeeQ o  ���w�w 0 theattendees theAttendees��  ��   R      �v�u�t
�v .ascrerr ****      � ****�u  �t  ��  ��  � o  !�s�s 0 newevent newEvent��  � m  ����  �    step through all messages   �� 0 
curmessage 
curMessage� o    �r�r 0 allmessages allMessages� m      � ��� l     �q�p�q  �p  � ��� l      �o��o  � S M this handler generates the ToDo items from the handled messages' properties    � ��� i   " %��� I      �n��m�n 0 generatetodos generateToDos� ��� o      �l�l 0 allmessages allMessages� ��k� o      �j�j 0 mailcal mailCal�k  �m  � O    !��� X    ��i�� l  ��� k   �� ��� l   ��� r    ��� b    ��� b    ��� n    ��� 1    �h
�h 
rpto� o    �g�g 0 
curmessage 
curMessage� m    ��  ,    � n    ��� 1    �f
�f 
subj� o    �e�e 0 
curmessage 
curMessage� o      �d�d 0 curtext curText� 1 + sender and subject form the ToDo's summary   � ��� l    %��� r     %��� n     #��� 1   ! #�c
�c 
ctnt� o     !�b�b 0 
curmessage 
curMessage� o      �a�a 0 curbody curBody� 2 , message's body forms the ToDo's description   � ��� l  & +��� r   & +��� n   & )��� 1   ' )�`
�` 
alhe� o   & '�_�_ 0 
curmessage 
curMessage� o      �^�^ 0 
theheaders 
theHeaders� 4 . look for additional info in message's headers   � ��� l  , 7��� r   , 7��� I  , 5�]�\�
�] .sysooffslong    ��� null�\  � �[��
�[ 
psof� m   . /��  X-Priority:   � �Z��Y
�Z 
psin� o   0 1�X�X 0 
theheaders 
theHeaders�Y  � o      �W�W 0 hasprio hasPrio� L F e.g priority will be converted (kind of, the scales differ massively)   � ��� Z   8 ����V�� >  8 ;��� o   8 9�U�U 0 hasprio hasPrio� m   9 :�T�T  � Q   > ����� k   A ��� ��� l  A M��� r   A M��� c   A K��� l  A G��S� n   A G��� 4   B G�R�
�R 
cha � l  C F��Q� [   C F��� o   C D�P�P 0 hasprio hasPrio� m   D E�O�O �Q  � o   A B�N�N 0 
theheaders 
theHeaders�S  � m   G J�M
�M 
long� o      �L�L 0 xprio xPrio� / ) read the priority value from the message   � ��� l  N [��� Z  N [���K�J� =  N Q��� o   N O�I�I 0 xprio xPrio� m   O P�H�H � r   T W��� m   T U�G�G � o      �F�F 0 calprio calPrio�K  �J  � %  find appropriate iCal priority   � ��� Z  \ i���E�D� =  \ _��� o   \ ]�C�C 0 xprio xPrio� m   ] ^�B�B � r   b e��� m   b c�A�A � o      �@�@ 0 calprio calPrio�E  �D  � ��� Z  j w���?�>� =  j m��� o   j k�=�= 0 xprio xPrio� m   k l�<�< � r   p s��� m   p q�;�;  � o      �:�: 0 calprio calPrio�?  �>  � ��� Z  x ����9�8� =  x {��� o   x y�7�7 0 xprio xPrio� m   y z�6�6 � r   ~ ���� m   ~ ��5�5 � o      �4�4 0 calprio calPrio�9  �8  � ��3� Z  � ����2�1� =  � �� � o   � ��0�0 0 xprio xPrio  m   � ��/�/ � r   � � m   � ��.�. 	 o      �-�- 0 calprio calPrio�2  �1  �3  � R      �,�+�*
�, .ascrerr ****      � ****�+  �*  � r   � � m   � ��)�)   o      �(�( 0 calprio calPrio�V  � l  � � r   � � m   � ��'�'   o      �&�& 0 calprio calPrio &   in iCal, 0 is standard priority   � 	
	 r   � � n  � � I   � ��%�$�%  0 readpreference readPreference  o   � ��#�#  0 pprefsfilename pPrefsFileName �" m   � �  DefaultDueDate   �"  �$    f   � � o      �!�! 0 
theduedate 
theDueDate
  Z   � �� � =  � � o   � ��� 0 
theduedate 
theDueDate m   � �       r   � � m   � ���   o      �� 0 
theduedate 
theDueDate�   �   � O   � k   �   !"! l  � �#$# r   � �%&% I  � ���'
� .corecrel****      � null�  ' �()
� 
kocl( m   � ��
� 
wret) �*�
� 
insh* l  � �+�+ n   � �,-,  ;   � �- n   � �./. 2  � ��
� 
wret/ o   � ��� 0 mailcal mailCal�  �  & o      �� 0 newtodo newTodo$   create the new ToDo item   " 0�0 O   �121 l  �343 k   �55 676 r   � �898 o   � ��� 0 curtext curText9 1   � ��
� 
wr117 :;: r   � �<=< o   � ��� 0 curbody curBody= 1   � ��
� 
wr12; >?> r   �@A@ l  �	B�B [   �	CDC l  � �E�
E I  � ��	��
�	 .misccurdldt    ��� null�  �  �
  D ]   �FGF l  �H�H c   �IJI o   � �� 0 
theduedate 
theDueDateJ m   �
� 
long�  G 1  �
� 
hour�  A 1  	�
� 
wrt3? KLK r  MNM o  �� 0 calprio calPrioN 1  � 
�  
wrt5L O��O l ��P��  P � � make new display alarm at the end of display alarms with properties {trigger interval:3 * days / minutes} -- alarm time is in seconds after (positive interval value) or before (negative) event start date   ��  4 9 3 fill the properties with the extracted information   2 o   � ����� 0 newtodo newTodo�   m   � ���  � #  traverse all handed messages   �i 0 
curmessage 
curMessage� o    ���� 0 allmessages allMessages� m      � QRQ l     ������  ��  R STS l      ��U��  U K E this handler looks for URLs in the message content and returns them    T VWV i   & )XYX I      ��Z���� 0 findurls findURLsZ [��[ o      ���� 0 	thesource 	theSource��  ��  Y k     a\\ ]^] l    _`_ r     aba J     ����  b o      ���� 0 theurls theURLs`   no URLs for starters   ^ cdc l   efe r    ghg n   iji I    ��k���� "0 unifywhitespace unifyWhitespacek l��l o    ���� 0 	thesource 	theSource��  ��  j  f    h o      ���� 0 	thesource 	theSourcef %  get rid of tabs and line feeds   d mnm l   opo r    qrq m    ss 
 http   r n     tut 1    ��
�� 
txdlu 1    ��
�� 
ascrp "  look for the http signature   n vwv r    xyx n    z{z 2   ��
�� 
citm{ o    ���� 0 	thesource 	theSourcey o      ���� 0 	thetokens 	theTokensw |}| Z    2~����~ H    �� C    ��� o    ���� 0 	thesource 	theSource� m    �� 
 http    r   ! .��� n   ! ,��� 7  " ,����
�� 
cobj� m   & (���� � m   ) +������� o   ! "���� 0 	thetokens 	theTokens� o      ���� 0 	thetokens 	theTokens��  ��  } ��� l  3 8��� r   3 8��� m   3 4��      � n     ��� 1   5 7��
�� 
txdl� 1   4 5��
�� 
ascr� t n now, starting from the current http position, select all contiguous text i.e. everything up to the next space   � ��� X   9 X����� l  I S��� r   I S��� b   I Q��� o   I J���� 0 theurls theURLs� l  J P���� b   J P��� m   J K�� 
 http   � n   K O��� 4  L O���
�� 
citm� m   M N���� � o   K L���� 0 curtoken curToken��  � o      ���� 0 theurls theURLs� Z T add the http signature since the offset of the found URL starts after the signature   �� 0 curtoken curToken� o   < =���� 0 	thetokens 	theTokens� ��� r   Y ^��� m   Y Z��      � n     ��� 1   [ ]��
�� 
txdl� 1   Z [��
�� 
ascr� ���� L   _ a�� o   _ `���� 0 theurls theURLs��  W ��� l     ������  ��  � ��� l      �����  � o i this handler removes usuitable characters from strings. Mainly used to create acceptable calendar names    � ��� i   * -��� I      ������� 0 stripoddchars stripOddChars� ���� o      ���� 0 	thestring 	theString��  ��  � k     :�� ��� r     ��� J     �� ���� m     ��      ��  � o      ���� 0 oddchars oddChars� ��� r    	��� m    ��      � o      ���� 0 	newstring 	newString� ��� r   
 ��� n   
 ��� 2   ��
�� 
cha � o   
 ���� 0 	thestring 	theString� o      ���� 0 thechars theChars� ��� X    5����� Z     0������� H     $�� E    #��� o     !���� 0 oddchars oddChars� o   ! "���� 0 thechar theChar� r   ' ,��� b   ' *��� o   ' (���� 0 	newstring 	newString� o   ( )���� 0 thechar theChar� o      ���� 0 	newstring 	newString��  ��  �� 0 thechar theChar� o    ���� 0 thechars theChars� ���� L   6 :�� c   6 9��� o   6 7���� 0 	newstring 	newString� m   7 8��
�� 
TEXT��  � ��� l     ������  ��  � ��� l      �����  � j d this handler transforms whitespace characters such as tabs, spaces and line feeds to single spaces    � ��� i   . 1��� I      ������� "0 unifywhitespace unifyWhitespace� ���� o      ���� 0 	thesource 	theSource��  ��  � k     8�� ��� r     ��� m     ��  
   � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2   	��
�� 
citm� o    ���� 0 	thesource 	theSource� o      ���� 0 	thetokens 	theTokens� ��� r    ��� m    ��      � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c       o    ���� 0 	thetokens 	theTokens m    ��
�� 
TEXT� o      ���� 0 	thesource 	theSource�  r     m      	    n      1    ��
�� 
txdl 1    ��
�� 
ascr 	
	 r    # n    ! 2   !��
�� 
citm o    ���� 0 	thesource 	theSource o      ���� 0 	thetokens 	theTokens
  r   $ ) m   $ %       n      1   & (��
�� 
txdl 1   % &��
�� 
ascr  r   * / c   * - o   * +���� 0 	thetokens 	theTokens m   + ,��
�� 
TEXT o      ���� 0 	thesource 	theSource  r   0 5 m   0 1         n     !"! 1   2 4��
�� 
txdl" 1   1 2��
�� 
ascr #��# L   6 8$$ o   6 7���� 0 	thesource 	theSource��  � %&% l     ������  ��  & '(' l      ��)��  ) e _ this handler sets the preference theName in the preference file theFile to the value theValue    ( *+* i   2 5,-, I      ��.���� "0 writepreference writePreference. /0/ o      ���� 0 thefile theFile0 121 o      ���� 0 thename theName2 3��3 o      ���� 0 thevalue theValue��  ��  - k     J44 565 Q     G7897 k    =:: ;<; Z    =>����= =   ?@? I    	��A���� 0 checkforprefs checkForPrefsA B��B o    ���� 0 thefile theFile��  ��  @ m   	 
������> L    CC m    ��������  ��  < DED r    "FGF b     HIH l   J��J I   ��KL
�� .earsffdralis        afdrK m    ��
�� afdmprefL ��MN
�� 
fromM m    ��
�� fldmflduN ��O��
�� 
rtypO m    ��
�� 
utxt��  ��  I o    ���� 0 thefile theFileG o      ���� 0 theplistfile thePlistFileE P�P O   # =QRQ k   ' <SS TUT r   ' -VWV 4   ' +�~X
�~ 
plifX o   ) *�}�} 0 theplistfile thePlistFileW o      �|�| &0 thepreferencefile thePreferenceFileU YZY r   . 3[\[ n   . 1]^] 1   / 1�{
�{ 
pcnt^ o   . /�z�z &0 thepreferencefile thePreferenceFile\ o      �y�y 0 theproperties thePropertiesZ _�x_ r   4 <`a` o   4 5�w�w 0 thevalue theValuea n      bcb 1   9 ;�v
�v 
valLc n   5 9ded 4   6 9�uf
�u 
pliif o   7 8�t�t 0 thename theNamee o   5 6�s�s 0 theproperties theProperties�x  R m   # $gg�null     !����  
System Events.appI��x���  ��~ (8 ��������<��40}��� ��<�sevs  alis    �  TheBoard                   ���bH+    
System Events.app                                                ic��s        ����  	                CoreServices    ��|B      ��e      
  �  �  6TheBoard:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    T h e B o a r d  -System/Library/CoreServices/System Events.app   / ��  �  8 R      �r�q�p
�r .ascrerr ****      � ****�q  �p  9 L   E Ghh m   E F�o�o��6 i�ni L   H Jjj m   H I�m�m  �n  + klk l     �l�k�l  �k  l mnm l      �jo�j  o l f this handler reads the preference theName from the preference file theFile and returns it as a string   n pqp i   6 9rsr I      �it�h�i  0 readpreference readPreferencet uvu o      �g�g 0 thefile theFilev w�fw o      �e�e 0 thename theName�f  �h  s k     Mxx yzy r     {|{ m     }}      | o      �d�d 0 thevalue theValuez ~~ Q    J���c� k    A�� ��� Z    ���b�a� =   ��� I    �`��_�` 0 checkforprefs checkForPrefs� ��^� o    	�]�] 0 thefile theFile�^  �_  � m    �\�\��� L    �� o    �[�[ 0 thevalue theValue�b  �a  � ��� r    &��� b    $��� l   "��Z� I   "�Y��
�Y .earsffdralis        afdr� m    �X
�X afdmpref� �W��
�W 
from� m    �V
�V fldmfldu� �U��T
�U 
rtyp� m    �S
�S 
utxt�T  �Z  � o   " #�R�R 0 thefile theFile� o      �Q�Q 0 theplistfile thePlistFile� ��P� O   ' A��� k   + @�� ��� r   + 1��� 4   + /�O�
�O 
plif� o   - .�N�N 0 theplistfile thePlistFile� o      �M�M &0 thepreferencefile thePreferenceFile� ��� r   2 7��� n   2 5��� 1   3 5�L
�L 
pcnt� o   2 3�K�K &0 thepreferencefile thePreferenceFile� o      �J�J 0 theproperties theProperties� ��I� r   8 @��� n   8 >��� 1   < >�H
�H 
valL� n   8 <��� 4   9 <�G�
�G 
plii� o   : ;�F�F 0 thename theName� o   8 9�E�E 0 theproperties theProperties� o      �D�D 0 thevalue theValue�I  � m   ' (g�P  � R      �C�B�A
�C .ascrerr ****      � ****�B  �A  �c   ��@� L   K M�� o   K L�?�? 0 thevalue theValue�@  q ��� l     �>�=�>  �=  � ��� l      �<��<  � b \ this handler checks for the existence of the preferences file and creates one if necessary    � ��� i   : =��� I      �;��:�; 0 checkforprefs checkForPrefs� ��9� o      �8�8 0 filename fileName�9  �:  � k     O�� ��� r     ��� l    	��7� I    	�6��
�6 .earsffdralis        afdr� m     �5
�5 afdmpref� �4��
�4 
from� m    �3
�3 fldmfldu� �2��1
�2 
rtyp� m    �0
�0 
utxt�1  �7  � o      �/�/ 0 prefsfilepath prefsFilePath� ��� O   ��� r    ��� I   �.��-
�. .coredoexbool       obj � 4    �,�
�, 
file� l   ��+� b    ��� o    �*�* 0 prefsfilepath prefsFilePath� o    �)�) 0 filename fileName�+  �-  � o      �(�( 0 isthere isThere� m    e� ��� Z    L���'�&� H     �� l   ��%� o    �$�$ 0 isthere isThere�%  � Q   # H���� k   & >�� ��� l  & &�#��#  � b \			set sourceFile to ((path to me as Unicode text) & "Contents:Resources:" & pPrefsFileName)   � ��� l  & &�"��"  � P J			tell application "Finder" to duplicate file sourceFile to prefsFilePath   � ��� r   & 1��� l  & /��!� I  & /� ��
�  .sysorpthalis        TEXT� o   & +��  0 pprefsfilename pPrefsFileName�  �!  � o      �� 0 
sourcefile 
sourceFile� ��� O  2 >��� I  6 =���
� .coreclon****      � ****� o   6 7�� 0 
sourcefile 
sourceFile� ���
� 
insh� o   8 9�� 0 prefsfilepath prefsFilePath�  � m   2 3e�  � R      ���
� .ascrerr ****      � ****� o      �� 0 theerror theError� ���
� 
errn� o      �� 0 	thenumber 	theNumber� ���
� 
erob� o      �� 0 theoffender theOffender�  � L   F H�� m   F G�����'  �&  � ��� L   M O�� m   M N��  �  � ��� l     ���  �  � ��� l      �
��
  � P J this handler asks the user if he wishes to report an error if it occurrs    � ��� i   > A��� I      �	���	 0 errorhandler errorHandler� 	 		  o      �� 0 theerror theError	 			 o      �� 0 	thenumber 	theNumber	 	�	 o      �� 0 theoffender theOffender�  �  � k    #		 			 Z    			�	
	 =    			 o     �� 0 grunmode gRunMode	 m    		 
 rule   		 k    		 			 I   �	� 
� .sysottosnull���     TEXT	 m    		 9 3An error occurred. Please run this script manually.   �   	 	��	 n   			 I    ��	���� 0 writelog writeLog	 	��	 o    ���� 0 theerror theError��  ��  	  f    ��  �  	
 k   		 			 r    1			 I   /��		
�� .sysodisAaleR        TEXT	 b    		 	 b    	!	"	! m    	#	#  Error    	" o    ���� 0 	thenumber 	theNumber	  m    	$	$  	 occurred   	 ��	%	&
�� 
mesS	% o    ���� 0 theerror theError	& ��	'	(
�� 
as A	' m    ��
�� EAlTcriT	( ��	)	*
�� 
btns	) J    #	+	+ 	,	-	, m     	.	.  Report   	- 	/��	/ m     !	0	0  OK   ��  	* ��	1	2
�� 
dflt	1 m   $ %	3	3  OK   	2 ��	4��
�� 
givu	4 m   & )���� ��  	 o      ���� 0 thereply theReply	 	5	6	5 l  2 2��	7��  	7 � � set theReply to display dialog "Error " & theNumber & " occurred: " & theError buttons {"Report", "OK"} default button "OK" giving up after 15   	6 	8��	8 Z   2	9	:����	9 =  2 ;	;	<	; n   2 7	=	>	= 1   3 7��
�� 
bhit	> o   2 3���� 0 thereply theReply	< m   7 :	?	?  Report   	: O   >	@	A	@ k   D	B	B 	C	D	C r   D K	E	F	E I  D I������
�� .sysosigtsirr   ��� null��  ��  	F o      ���� 0 
systeminfo 
systemInfo	D 	G	H	G r   L S	I	J	I n   L Q	K	L	K 1   M Q��
�� 
sisv	L o   L M���� 0 
systeminfo 
systemInfo	J o      ���� 0 theos theOS	H 	M	N	M r   T [	O	P	O n   T Y	Q	R	Q 1   U Y��
�� 
sict	R o   T U���� 0 
systeminfo 
systemInfo	P o      ���� 0 thecpu theCPU	N 	S	T	S r   \ c	U	V	U n   \ a	W	X	W 1   ] a��
�� 
sipm	X o   \ ]���� 0 
systeminfo 
systemInfo	V o      ���� 0 themem theMem	T 	Y	Z	Y r   d �	[	\	[ I  d �����	]
�� .corecrel****      � null��  	] ��	^	_
�� 
kocl	^ m   h k��
�� 
bcke	_ ��	`	a
�� 
insh	` n   n t	b	c	b  :   s t	c 2  n s��
�� 
bcke	a ��	d��
�� 
prdt	d K   w �	e	e ��	f	g
�� 
subj	f b   z �	h	i	h o   z ����  0 pscriptversion pScriptVersion	i m    �	j	j   error report   	g ��	k��
�� 
ctnt	k b   � �	l	m	l b   � �	n	o	n b   � �	p	q	p b   � �	r	s	r b   � �	t	u	t b   � �	v	w	v b   � �	x	y	x b   � �	z	{	z b   � �	|	}	| b   � �	~		~ b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� m   � �	�	�  Error message:    	� o   � ����� 0 theerror theError	� o   � ���
�� 
ret 	� m   � �	�	�  Error number:    	� o   � ����� 0 	thenumber 	theNumber	� o   � ���
�� 
ret 	� o   � ���
�� 
ret 	� m   � �	�	� � �System information (this may help finding the bug, but please remove it if you feel uncomfortable with sharing this information)   	� o   � ���
�� 
ret 	 m   � �	�	�  OS Version:    	} o   � ����� 0 theos theOS	{ m   � �	�	�  , CPU:    	y o   � ����� 0 thecpu theCPU	w m   � �	�	�  
, Memory:    	u o   � ����� 0 themem theMem	s o   � ���
�� 
ret 	q o   � ���
�� 
ret 	o m   � �	�	� > 8Please describe the actions that resulted in this error:   	m o   � ���
�� 
ret ��  ��  	\ o      ���� 0 	thereport 	theReport	Z 	�	�	� O   �	�	�	� r   �	�	�	� I  �����	�
�� .corecrel****      � null��  	� ��	�	�
�� 
kocl	� m   � ���
�� 
trcp	� ��	�	�
�� 
insh	� n   � �	�	�	�  :   � �	� 2  � ���
�� 
trcp	� ��	���
�� 
prdt	� K   � �	�	� ��	�	�
�� 
radd	� m   � �	�	�  contact@kleinware.net   	� ��	���
�� 
pnam	� m   � �	�	�  KleinWare Contact   ��  ��  	� o      ���� 0 thereceiver theReceiver	� o   � ����� 0 	thereport 	theReport	� 	�	�	� r  	�	�	� m  ��
�� boovtrue	� n      	�	�	� 1  ��
�� 
pvis	� o  ���� 0 	thereport 	theReport	� 	���	� I ������
�� .miscactvnull��� ��� null��  ��  ��  	A m   > A ��  ��  ��  	 	���	� r  #	�	�	� m  	�	�      	� n     	�	�	� 1  "��
�� 
txdl	� 1  ��
�� 
ascr��  � 	�	�	� l     ������  ��  	� 	�	�	� i   B E	�	�	� I      ��	����� 0 writelog writeLog	� 	���	� o      ���� 0 logentry logEntry��  ��  	� k     S	�	� 	�	�	� r     	�	�	� b     	�	�	� b     	�	�	� l    	���	� c     	�	�	� l    	���	� I    ��	���
�� .earsffdralis        afdr	� m     ��
�� afdrdesk��  ��  	� m    ��
�� 
ctxt��  	� o    ����  0 pscriptversion pScriptVersion	� m    	�	�   Error Log.txt   	� o      ���� 0 thelog theLog	� 	���	� Q    S	�	�	�	� k    7	�	� 	�	�	� I   ��	�	�
�� .rdwropenshor       file	� 4    ��	�
�� 
file	� o    ���� 0 thelog theLog	� ��	���
�� 
perm	� m    ��
�� boovtrue��  	� 	�	�	� I    .��	�	�
�� .rdwrwritnull���     ****	� l    #	���	� b     #	�	�	� o     !���� 0 logentry logEntry	� o   ! "��
�� 
ret ��  	� ��	�	�
�� 
refn	� 4   $ (��	�
�� 
file	� o   & '���� 0 thelog theLog	� ��	���
�� 
wrat	� m   ) *��
�� rdwreof ��  	� 	���	� I  / 7��	���
�� .rdwrclosnull���     ****	� 4   / 3��	�
�� 
file	� o   1 2���� 0 thelog theLog��  ��  	� R      ������
�� .ascrerr ****      � ****��  ��  	� Q   ? S	�	���	� I  B J��	���
�� .rdwrclosnull���     ****	� 4   B F��	�
�� 
file	� o   D E�� 0 thelog theLog��  	� R      �~�}�|
�~ .ascrerr ****      � ****�}  �|  ��  ��  	� 	��{	� l     �z�y�z  �y  �{       �x	�  	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��x  	� �w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�w  0 pscriptversion pScriptVersion�v  0 pprefsfilename pPrefsFileName
�u .emalcpmanull���   @ mssg
�t .aevtoappnull  �   � ****�s $0 checkforcalendar checkForCalendar�r  0 choosecalendar chooseCalendar�q  0 createcalendar createCalendar�p 0 
setduedate 
setDueDate�o  0 generateevents generateEvents�n 0 generatetodos generateToDos�m 0 findurls findURLs�l 0 stripoddchars stripOddChars�k "0 unifywhitespace unifyWhitespace�j "0 writepreference writePreference�i  0 readpreference readPreference�h 0 checkforprefs checkForPrefs�g 0 errorhandler errorHandler�f 0 writelog writeLog	� �e !�d�c	�	��b
�e .emalcpmanull���   @ mssg�d 0 allmessages allMessages�c �a�`�_
�a 
pmar�` 0 therule theRule�_  	� �^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�^ 0 allmessages allMessages�] 0 therule theRule�\ 0 
createtodo 
createToDo�[ 0 createevent createEvent�Z 0 tododelimiter toDoDelimiter�Y  0 eventdelimiter eventDelimiter�X 0 calendarname calendarName�W 0 rulename ruleName�V 0 	theoffset 	theOffset�U 0 
ruletokens 
ruleTokens�T 0 	theprefix 	thePrefix�S 0 thedelimiter theDelimiter�R (0 calendarnameoffset calendarNameOffset�Q 0 mailcal mailCal�P 0 theerror theError�O 0 	thenumber 	theNumber�N 0 theoffender theOffender	� $ *�M�L 1�K I�J T _ f l o�I�H�G ��F�E�D�C�B ��A � � � � �@�?�>�=�<�;
 
�M 
ascr
�L 
txdl�K 0 grunmode gRunMode�J  0 readpreference readPreference�I 0 errorhandler errorHandler
�H 
msng
�G 
pnam
�F 
psof
�E 
psin�D 
�C .sysooffslong    ��� null
�B 
citm
�A 
TEXT
�@ 
cha �? 0 stripoddchars stripOddChars�> $0 checkforcalendar checkForCalendar�= 0 generatetodos generateToDos�<  0 generateevents generateEvents�; 0 theerror theError
  �:�9

�: 
errn�9 0 	thenumber 	theNumber
 �8�7�6
�8 
erob�7 0 theoffender theOffender�6  �b����,FO�E�OfE�OfE�Oh)b  �l+ E�O)b  �l+ E�O)b  �l+ E�O��  )��)m+ Y hO�� 
��,E�Y 	��%�%E�O*a �a �a  E�O�j &eE�O���,FO�a -E�Oa ��,FO�a &E�Y hO*a �a �a  E�O�j &eE�O���,FO�a -E�Oa ��,FO�a &E�Y hO)a a l+ E�O)a a l+ E�O�a  J�� ,*a �a �a  E�O�[a \[Z�l\Zi2a &E�Y �E�O)�k+ E�O)�k+ E�Y 
)�k+ E�O� )��l+  Y hO� )��l+ !Y hW X " #)��] m+ 	� �5w�4�3

�2
�5 .aevtoappnull  �   � ****�4  �3  
 �1�0�/�1 0 theerror theError�0 0 	thenumber 	theNumber�/ 0 theoffender theOffender
 7}�.��-�,��+�*�)�( �'�&�%�$�#�"�!� ������������������� 	����%�2�
��
�. 0 grunmode gRunMode
�- 
ascr
�, 
txdl�+  0 readpreference readPreference�* "0 thecalendarname theCalendarName�) $0 checkforcalendar checkForCalendar�( 0 mailcal mailCal
�' 
mvwr
�& .corecnte****       ****
�% 
kocl
�$ 
insh�# 
�" .corecrel****      � null�! 0 	theviewer 	theViewer
�  
smgs
� 
mesS
� 
btns
� 
dflt
� 
givu� � 
� .sysodisAaleR        TEXT
� 
rslt
� 
list
� 
cobj� 0 	thebutton 	theButton�  0 choosecalendar chooseCalendar� 0 
setduedate 
setDueDate� 0 allmessages allMessages
� .sysodlogaskr        TEXT� 0 thereply theReply
� 
bhit�  0 generateevents generateEvents� 0 generatetodos generateToDos� 0 theerror theError
 �	�

�	 
errn� 0 	thenumber 	theNumber
 ���
� 
erob� 0 theoffender theOffender�  ����
 0 errorhandler errorHandler�2E�E�O���,FO)b  �l+ E�O)�k+ E�O� *�-j j  *���*�-5� E` Y hO*�k/a ,j j  Za a a a a a lva la a a  O_ a &E[a  k/EQ` !ZO_ !a "  )j+ #E�O)j+ $Y hY w*�k/a ,E` %Oa &a a 'a (a )mva a *� +E` ,O_ ,a -,E` !O_ !a .  )_ %�l+ /Y (_ !a 0  )_ %�l+ 1Y _ !a 2  hY hW X 3 4�a 5 )���m+ 6Y hU	� �Q��

�� $0 checkforcalendar checkForCalendar� � 
�  
  ���� 0 calendarname calendarName�  
 ������������ 0 calendarname calendarName�� 0 mailcal mailCal�� 0 theerror theError�� 0 	thenumber 	theNumber�� 0 theoffender theOffender
 [g��mr�����
	������������  0 readpreference readPreference
�� 
wres�� 0 theerror theError
	 ����


�� 
errn�� 0 	thenumber 	theNumber

 ������
�� 
erob�� 0 theoffender theOffender��  �� 0 grunmode gRunMode��  0 createcalendar createCalendar��  0 choosecalendar chooseCalendar�� 0 errorhandler errorHandler� l��   )b  �l+ E�O��  �E�Y hY hO� ? *�/E�W 3X  �k  ��  )�k+ E�Y 	)j+ E�Y )���m+ O�UO�	� �������

����  0 choosecalendar chooseCalendar��  ��  
 ���������������� 0 allcals allCals�� 0 thecal theCal�� 0 thename theName�� 0 	thebutton 	theButton�� 0 thereply theReply�� 0 	prefsfile 	prefsFile�� 0 mailcal mailCal
 A�����
�������������������������������������������&��4��7=?B����������Q��������������e�����������������
�� 
wres
�� 
wr02
  
�� 
wr05
�� .miscactvnull��� ��� null
�� 
prmp
�� 
inSL
�� 
cnbt
�� 
empL
�� 
mlsl�� 

�� .gtqpchltTEXT  @   @ TEXT
�� .corecnte****       ****
�� 
bool
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list
�� 
cobj�� "0 writepreference writePreference
�� 
mesS
�� 
as A
�� EAlTcriT
�� 
givu
�� .sysodisAaleR        TEXT
�� 
bhit
�� afdmpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
utxt�� 
�� .earsffdralis        afdr
�� 
file
�� .coredeloobj        obj ��  0 createcalendar createCalendar��  ��  ���� *�-�,�[�,\Ze81E�UO*j O�����kv���e�f� E�O�f 
 �j j a & �a a a a a a lva la  O_ a &E[a k/EQ�Z[a l/EQ�ZO�a  �)b  a �m+  E�O�i  sa !a "a #a a $a %lva a &a 'a (a )�� *E�O�a +,E�O�a ,  4a -a .a /a 0a 1a 2 3b  %E�Oa 4 *a 5�/j 6UY hY hY hO)�k+ 7E�Y ��a k/E�O)b  a 8�m+  E�O�i  a 9a "a :a a ;a <lva a =a 'a (a )�� *E�O�a +,E�O�a >  @a -a .a /a 0a 1a 2 3b  %E�O a 4 *a 5�/j 6UW X ? @hY hY hO� *�/E�UO�	� �������

����  0 createcalendar createCalendar�� ��
�� 
  ���� 0 calendarname calendarName��  
 ������ 0 calendarname calendarName�� 0 mailcal mailCal
 	���������������
�� 
kocl
�� 
wres
�� 
insh�� 
�� .corecrel****      � null
�� 
wr02�� 0��  �E�Y hO� *���*�-6� E�O� �*�,FUUO�	� ������

���� 0 
setduedate 
setDueDate��  ��  
 ������������ 0 
theduedate 
theDueDate�� 0 thetext theText�� 0 	thebutton 	theButton�� 0 thereply theReply�� 0 	prefsfile 	prefsFile
 &������#������������8����I��LRTW������������f��������������e������  0 readpreference readPreference
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list
�� 
cobj
�� 
long�� "0 writepreference writePreference
�� 
mesS
�� 
as A
�� EAlTcriT
�� 
givu�� 

�� .sysodisAaleR        TEXT
�� 
bhit
�� afdmpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
utxt�� 
�� .earsffdralis        afdr
�� 
file
�� .coredeloobj        obj �� �)b  �l+ E�O�����k� O��&E[�k/EQ�Z[�l/EQ�ZO*b  ��&m+ E�O�i  q�a a �a a lv�a a a a a a  E�O�a ,E�O�a   4a a a a a  a ! "b  %E�Oa # *a $�/j %UY hY h	� �������

����  0 generateevents generateEvents�� ��
�� 
  ������ 0 allmessages allMessages�� 0 mailcal mailCal��  
 ������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�� 0 allmessages allMessages�� 0 mailcal mailCal� 0 
curmessage 
curMessage�~ 0 	thesender 	theSender�} 0 
sendername 
senderName�| 0 senderaddress senderAddress�{ 0 
thesubject 
theSubject�z 0 thebody theBody�y 0 thedate theDate�x 0 
thesummary 
theSummary�w 0 theday theDay�v 0 themonth theMonth�u 0 theyear theYear�t 0 
starthours 
StartHours�s 0 	startmins 	StartMins�r 0 endhours EndHours�q 0 endmins EndMins�p 0 	startdate 	startDate�o 0 enddate endDate�n 	0 start  �m 0 loc_end  �l 0 thelocation theLocation�k  0 thedescription theDescription�j 0 theurl theURL�i 0 newevent newEvent�h 0 theattendees theAttendees�g 0 newattendee newAttendee�f 0 curattendee curAttendee�e 0 curname curName�d 0 
curaddress 
curAddress
 B �c�b�a�`�_�^�]�\�[���Z�Y�X�W�V�U�T�S�R�Q9:;<�PUVWX�Of�N�Mt����L�K�J��I��H���G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6
�c 
kocl
�b 
cobj
�a .corecnte****       ****
�` 
sndr
�_ .emaleafnTEXT        TEXT
�^ .emaleauaTEXT        TEXT
�] 
subj
�\ 
ctnt
�[ 
drcv
�Z 
ctxt�Y 

�X 
cpar
�W 
cwor�V �U �T �S �R �Q 	
�P 
ldt 
�O 
psof
�N 
psin
�M .sysooffslong    ��� null�L �K  �J  
�I 
min �H 0 findurls findURLs
�G 
wrev
�F 
insh
�E .corecrel****      � null
�D 
wr1s
�C 
wr5s
�B 
wr11
�A 
wr12
�@ 
wr14
�? 
wr16
�> 
trcp
�= 
crcp
�< 
brcp
�; 
wrea
�: 
wra1
�9 
wra2
�8 
pnam
�7 
radd�6 0 address  ��L�HE�[��l kh ��,E�O�j E�O�j E�O��,E�O��,E�O��,E�O��}�� �[�\[Z�\Zi2E�Y �E�O��k/�m/E�O��k/�a /E�O��k/�a /E�O��k/�a /E�O��k/�a /E�O��k/�a /E�O��k/�a /E^ O*�a %�%a %�%a %�%a %�%/a &E^ O*�a %�%a %�%a %�%a %] %/a &E^ O*a a  a !�a  "k J*a a #a !�a  "a E^ O*a a $a !�a  "mE^ O�[�\[Z] \Z] 2E^ Y 	a %E^ O K*a �[�\[Z*a a &a !�a  "a '\Zi2�k/a !�a  "E^ O�[�\[Z] \Zi2E^ W X ( )a *E^ Y #�E^ O�_ +a &E^ O�E^ Oa ,E^ O )�k+ -�k/E^ W X ( )a .E^ Oa /A*�a 0a 1�a 0-6a  2E^ O] !] *a 3,FO] *a 4,FO�*a 5,FO] *a 6,FO] *a 7,FO] *a 8,FO �jvE^ O�Z] �a 9-%E^ O] �a :-%E^ O] �a ;-%E^ Oa /Z*�a <a 1] a <-6a  2E^ O]  �*a =,FO�*a >,FUO o] [��l kh ] a ?,E^ O] a @,E^ Oa /Z*�a <a 1] a <-6a  2E^ O]  ] a ?,*a =,FO] a A,*a >,FU[OY��W X ( )hUU[OY��U	� �5��4�3

�2�5 0 generatetodos generateToDos�4 �1
�1 
  �0�/�0 0 allmessages allMessages�/ 0 mailcal mailCal�3  
 �.�-�,�+�*�)�(�'�&�%�$�. 0 allmessages allMessages�- 0 mailcal mailCal�, 0 
curmessage 
curMessage�+ 0 curtext curText�* 0 curbody curBody�) 0 
theheaders 
theHeaders�( 0 hasprio hasPrio�' 0 xprio xPrio�& 0 calprio calPrio�% 0 
theduedate 
theDueDate�$ 0 newtodo newTodo
 # �#�"�!� �������������������������
�	��
�# 
kocl
�" 
cobj
�! .corecnte****       ****
�  
rpto
� 
subj
� 
ctnt
� 
alhe
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
cha � 
� 
long� � � 	�  �  �  0 readpreference readPreference
� 
wret
� 
insh
� .corecrel****      � null
� 
wr11
� 
wr12
�
 .misccurdldt    ��� null
�	 
hour
� 
wrt3
� 
wrt5�2"��[��l kh ��,�%��,%E�O��,E�O��,E�O*���� E�O�j k ]���/a &E�O�k  kE�Y hO�l  �E�Y hO�m  jE�Y hO��  
a E�Y hO�a   
a E�Y hW 
X  jE�Y jE�O)b  a l+ E�O�a   jE�Y hOa  K*�a a �a -6� E�O� 1�*a ,FO�*a ,FO*j �a &_   *a !,FO�*a ",FOPUU[OY��U	� �Y��

�� 0 findurls findURLs� �
� 
  �� 0 	thesource 	theSource�  
 � �������  0 	thesource 	theSource�� 0 theurls theURLs�� 0 	thetokens 	theTokens�� 0 curtoken curToken
 ��s������������������ "0 unifywhitespace unifyWhitespace
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj
�� 
kocl
�� .corecnte****       ****� bjvE�O)�k+  E�O���,FO��-E�O�� �[�\[Zl\Zi2E�Y hO���,FO �[��l 	kh ���k/%%E�[OY��O���,FO�	� �������

���� 0 stripoddchars stripOddChars�� ��
�� 
  ���� 0 	thestring 	theString��  
 ������������ 0 	thestring 	theString�� 0 oddchars oddChars�� 0 	newstring 	newString�� 0 thechars theChars�� 0 thechar theChar
 ������������
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� ;�kvE�O�E�O��-E�O $�[��l kh �� 
��%E�Y h[OY��O��&	� �������

 ���� "0 unifywhitespace unifyWhitespace�� ��
!�� 
!  ���� 0 	thesource 	theSource��  
 ������ 0 	thesource 	theSource�� 0 	thetokens 	theTokens
  	���������� 
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� 9���,FO��-E�O���,FO��&E�O���,FO��-E�O���,FO��&E�O���,FO�	� ��-����
"
#���� "0 writepreference writePreference�� ��
$�� 
$  �������� 0 thefile theFile�� 0 thename theName�� 0 thevalue theValue��  
" �������������� 0 thefile theFile�� 0 thename theName�� 0 thevalue theValue�� 0 theplistfile thePlistFile�� &0 thepreferencefile thePreferenceFile�� 0 theproperties theProperties
# ����������������g�������������� 0 checkforprefs checkForPrefs
�� afdmpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
utxt�� 
�� .earsffdralis        afdr
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL��  ��  �� K ?*�k+  i  iY hO������ �%E�O� *�/E�O��,E�O���/�,FUW 	X  iOj	� ��s����
%
&����  0 readpreference readPreference�� ��
'�� 
'  ������ 0 thefile theFile�� 0 thename theName��  
% �������������� 0 thefile theFile�� 0 thename theName�� 0 thevalue theValue�� 0 theplistfile thePlistFile�� &0 thepreferencefile thePreferenceFile�� 0 theproperties theProperties
& }����������������g�������������� 0 checkforprefs checkForPrefs
�� afdmpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
utxt�� 
�� .earsffdralis        afdr
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL��  ��  �� N�E�O ?*�k+ i  �Y hO������ �%E�O� *�/E�O��,E�O��/�,E�UW X  hO�	� �������
(
)���� 0 checkforprefs checkForPrefs�� ��
*�� 
*  ���� 0 filename fileName��  
( ���������������� 0 filename fileName�� 0 prefsfilepath prefsFilePath�� 0 isthere isThere�� 0 
sourcefile 
sourceFile�� 0 theerror theError�� 0 	thenumber 	theNumber�� 0 theoffender theOffender
) ��������������e������������
+
�� afdmpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
utxt�� 
�� .earsffdralis        afdr
�� 
file
�� .coredoexbool       obj 
�� .sysorpthalis        TEXT
�� 
insh
�� .coreclon****      � ****�� 0 theerror theError
+ ����
,
�� 
errn�� 0 	thenumber 	theNumber
, ������
�� 
erob�� 0 theoffender theOffender��  �� P������ E�O� *衠%/j 	E�UO� * b  j 
E�O� 	��l UW 	X  iY hOj	� �������
-
.���� 0 errorhandler errorHandler�� �
/� 
/  �~�}�|�~ 0 theerror theError�} 0 	thenumber 	theNumber�| 0 theoffender theOffender��  
- 
�{�z�y�x�w�v�u�t�s�r�{ 0 theerror theError�z 0 	thenumber 	theNumber�y 0 theoffender theOffender�x 0 thereply theReply�w 0 
systeminfo 
systemInfo�v 0 theos theOS�u 0 thecpu theCPU�t 0 themem theMem�s 0 	thereport 	theReport�r 0 thereceiver theReceiver
. 6�q		�p�o	#	$�n�m�l�k	.	0�j	3�i�h�g�f�e	? �d�c�b�a�`�_�^�]�\	j�[	��Z	�	�	�	�	�	��Y�X�W�V�U	��T	��S�R	��Q�P�q 0 grunmode gRunMode
�p .sysottosnull���     TEXT�o 0 writelog writeLog
�n 
mesS
�m 
as A
�l EAlTcriT
�k 
btns
�j 
dflt
�i 
givu�h �g 

�f .sysodisAaleR        TEXT
�e 
bhit
�d .sysosigtsirr   ��� null
�c 
sisv
�b 
sict
�a 
sipm
�` 
kocl
�_ 
bcke
�^ 
insh
�] 
prdt
�\ 
subj
�[ 
ctnt
�Z 
ret �Y �X 
�W .corecrel****      � null
�V 
trcp
�U 
radd
�T 
pnam
�S 
pvis
�R .miscactvnull��� ��� null
�Q 
ascr
�P 
txdl��$��  �j O)�k+ Y�%�%������lv���a a  E�O�a ,a   �a  �*j E�O�a ,E�O�a ,E�O�a ,E�O*a a a *a -5a a b   a %a  a !�%_ "%a #%�%_ "%_ "%a $%_ "%a %%�%a &%�%a '%�%_ "%_ "%a (%_ "%a )a * +E�O� -*a a ,a *a ,-5a a -a .a /a 0a )a * +E�UOe�a 1,FO*j 2UY hOa 3_ 4a 5,F	� �O	��N�M
0
1�L�O 0 writelog writeLog�N �K
2�K 
2  �J�J 0 logentry logEntry�M  
0 �I�H�I 0 logentry logEntry�H 0 thelog theLog
1 �G�F�E	��D�C�B�A�@�?�>�=�<�;�:�9
�G afdrdesk
�F .earsffdralis        afdr
�E 
ctxt
�D 
file
�C 
perm
�B .rdwropenshor       file
�A 
ret 
�@ 
refn
�? 
wrat
�> rdwreof �= 
�< .rdwrwritnull���     ****
�; .rdwrclosnull���     ****�:  �9  �L T�j �&b   %�%E�O '*�/�el O��%�*�/��� O*�/j W X   *�/j W X  h ascr  ��ޭ