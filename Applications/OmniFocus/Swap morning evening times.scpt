FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ` Z Omnifocus script to swap due date times.  Allows me to push things easily to the evening.     � 	 	 �   O m n i f o c u s   s c r i p t   t o   s w a p   d u e   d a t e   t i m e s .     A l l o w s   m e   t o   p u s h   t h i n g s   e a s i l y   t o   t h e   e v e n i n g .   
  
 l     ��  ��    [ U swap morning evening times.  Assumes fixed morning and evening time set in function.     �   �   s w a p   m o r n i n g   e v e n i n g   t i m e s .     A s s u m e s   f i x e d   m o r n i n g   a n d   e v e n i n g   t i m e   s e t   i n   f u n c t i o n .      l     ��  ��    T N if time is after noon then swaps to morning; otherwise swaps to evening time.     �   �   i f   t i m e   i s   a f t e r   n o o n   t h e n   s w a p s   t o   m o r n i n g ;   o t h e r w i s e   s w a p s   t o   e v e n i n g   t i m e .      l     ��  ��      (c) 2014 Bryan Gebhardt     �   0   ( c )   2 0 1 4   B r y a n   G e b h a r d t      l    ; ����  O     ;    k    :        O    8 ! " ! k    7 # #  $ % $ l   �� & '��   &  Get selection    ' � ( (  G e t   s e l e c t i o n %  ) * ) l   �� + ,��   +   assumes one selection    , � - - ,   a s s u m e s   o n e   s e l e c t i o n *  . / . r     0 1 0 2   ��
�� 
OTst 1 o      ���� 0 thesel theSel /  2 3 2 l   ��������  ��  ��   3  4 5 4 l   �� 6 7��   6 1 + loop through all items; no error checking!    7 � 8 8 V   l o o p   t h r o u g h   a l l   i t e m s ;   n o   e r r o r   c h e c k i n g ! 5  9�� 9 X    7 :�� ; : k   & 2 < <  = > = r   & + ? @ ? n   & ) A B A 1   ' )��
�� 
valL B o   & '���� 0 theitem theItem @ o      ���� 0 thetask theTask >  C�� C n  , 2 D E D I   - 2�� F���� >0 swapmorningeveningduedatetime swapMorningEveningDueDateTime F  G�� G o   - .���� 0 thetask theTask��  ��   E  f   , -��  �� 0 theitem theItem ; o    ���� 0 thesel theSel��   " n     H I H 1    ��
�� 
FCcn I n     J K J 4   �� L
�� 
FCdw L m   	 
����  K 4   �� M
�� 
docu M m    ����     N O N l  9 9��������  ��  ��   O  P Q P l  9 9�� R S��   R h b set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only    S � T T �   s e t   t h e T a s k   t o   v a l u e   o f   i t e m   1   o f   t h e S e l   - -   t o   g e t   t h e   f i r s t   i t e m   i n   t h e   l i s t ;   f o r   r e f e r e n c e   o n l y Q  U�� U l  9 9��������  ��  ��  ��    m      V V�                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��     W X W l     ��������  ��  ��   X  Y�� Y i      Z [ Z I      �� \���� >0 swapmorningeveningduedatetime swapMorningEveningDueDateTime \  ]�� ] o      ���� 0 thetask theTask��  ��   [ k     8 ^ ^  _ ` _ l     a b c a r      d e d m     ����~� e o      ����  0 themorningtime theMorningTime b   9:00:00 AM in seconds    c � f f ,   9 : 0 0 : 0 0   A M   i n   s e c o n d s `  g h g l    i j k i r     l m l m    ����  0 m o      ����  0 theeveningtime theEveningTime j   7:00:00 PM in seconds    k � n n ,   7 : 0 0 : 0 0   P M   i n   s e c o n d s h  o p o l    q r s q r     t u t m    	����   �� u o      ���� 0 noontime noonTime r   12:00:00 PM in seconds    s � v v .   1 2 : 0 0 : 0 0   P M   i n   s e c o n d s p  w x w l   ��������  ��  ��   x  y�� y O    8 z { z k    7 | |  } ~ } r      �  n     � � � 1    ��
�� 
FCDd � o    ���� 0 thetask theTask � o      ���� 0 datetochange dateToChange ~  � � � I   �� ���
�� .ascrcmnt****      � **** � l    ����� � e     � � o    ���� 0 datetochange dateToChange��  ��  ��   �  � � � Z    1 � ��� � � ?    ! � � � n     � � � 1    ��
�� 
time � o    ���� 0 datetochange dateToChange � o     ���� 0 noontime noonTime � r   $ ) � � � o   $ %����  0 themorningtime theMorningTime � n       � � � 1   & (��
�� 
time � o   % &���� 0 datetochange dateToChange��   � r   , 1 � � � o   , -����  0 theeveningtime theEveningTime � n       � � � 1   . 0��
�� 
time � o   - .���� 0 datetochange dateToChange �  � � � l  2 2��������  ��  ��   �  ��� � r   2 7 � � � o   2 3���� 0 datetochange dateToChange � n       � � � 1   4 6��
�� 
FCDd � o   3 4���� 0 thetask theTask��   { m     � ��                                                                                  OFOC  alis    X  Macintosh HD               ���VH+   	eNOmniFocus.app                                                   ���Y��        ����  	                Applications    ��*�      �Z?4     	eN  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��       �� � � ���   � ������ >0 swapmorningeveningduedatetime swapMorningEveningDueDateTime
�� .aevtoappnull  �   � **** � �� [���� � ����� >0 swapmorningeveningduedatetime swapMorningEveningDueDateTime�� �� ���  �  ���� 0 thetask theTask��   � ������������ 0 thetask theTask��  0 themorningtime theMorningTime��  0 theeveningtime theEveningTime�� 0 noontime noonTime�� 0 datetochange dateToChange � ������ ���������~���  0��   ��
�� 
FCDd
�� .ascrcmnt****      � ****
�� 
time�� 9�E�O�E�O�E�O� )��,E�O�j O��,� 
���,FY ���,FO���,FU � �� ����� � ���
�� .aevtoappnull  �   � **** � k     ; � �  ����  ��  ��   � ���� 0 theitem theItem �  V����������������������
�� 
docu
�� 
FCdw
�� 
FCcn
�� 
OTst�� 0 thesel theSel
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
valL�� 0 thetask theTask�� >0 swapmorningeveningduedatetime swapMorningEveningDueDateTime�� <� 8*�k/�k/�, )*�-E�O  �[��l kh  ��,E�O)�k+ [OY��UOPUascr  ��ޭ