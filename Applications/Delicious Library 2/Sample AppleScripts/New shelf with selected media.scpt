FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � This script shows you how to get and set the selected shelf and the selected media, by creating a new shelf from whatever media you have currently selected, and then selecting that new shelf, and then selecting the first medium on it.     � 	 	�   T h i s   s c r i p t   s h o w s   y o u   h o w   t o   g e t   a n d   s e t   t h e   s e l e c t e d   s h e l f   a n d   t h e   s e l e c t e d   m e d i a ,   b y   c r e a t i n g   a   n e w   s h e l f   f r o m   w h a t e v e r   m e d i a   y o u   h a v e   c u r r e n t l y   s e l e c t e d ,   a n d   t h e n   s e l e c t i n g   t h a t   n e w   s h e l f ,   a n d   t h e n   s e l e c t i n g   t h e   f i r s t   m e d i u m   o n   i t .   
  
 l     ��������  ��  ��     ��  l    1 ����  O     1    k    0       l   ��������  ��  ��        r        I   ���� 
�� .corecrel****      � null��    ��  
�� 
kocl  m   	 
��
�� 
SHLF  �� ��
�� 
prdt  K       �� ��
�� 
pnam  m       �    S e l e c t e d   M e d i a��  ��    o      ���� 0 newshelf newShelf       I   �� ! "
�� .DLb2Add null���     **** ! 1    ��
�� 
SM3D " �� #��
�� 
insh # o    ���� 0 newshelf newShelf��      $ % $ r     % & ' & o     !���� 0 newshelf newShelf ' 1   ! $��
�� 
SSHF %  ( ) ( r   & . * + * n  & * , - , 4  ' *�� .
�� 
M3DM . m   ( )����  - o   & '���� 0 newshelf newShelf + 1   * -��
�� 
SM3D )  / 0 / l  / /��������  ��  ��   0  1 2 1 l  / /�� 3 4��   3 !  Other things you could do:    4 � 5 5 6   O t h e r   t h i n g s   y o u   c o u l d   d o : 2  6 7 6 l  / /�� 8 9��   8 P J set newShelf to make new shelf with properties {name:"My First 10 Items"}    9 � : : �   s e t   n e w S h e l f   t o   m a k e   n e w   s h e l f   w i t h   p r o p e r t i e s   { n a m e : " M y   F i r s t   1 0   I t e m s " } 7  ; < ; l  / /�� = >��   = ( " add (media 1 thru 10) to newShelf    > � ? ? D   a d d   ( m e d i a   1   t h r u   1 0 )   t o   n e w S h e l f <  @ A @ l  / /�� B C��   B q k add (first medium of shelf named "My First 10 Items") to make new shelf with properties {name:"Yard Sale"}    C � D D �   a d d   ( f i r s t   m e d i u m   o f   s h e l f   n a m e d   " M y   F i r s t   1 0   I t e m s " )   t o   m a k e   n e w   s h e l f   w i t h   p r o p e r t i e s   { n a m e : " Y a r d   S a l e " } A  E F E l  / /�� G H��   G S M remove media of shelf named "Yard Sale" from shelf named "My First 10 Items"    H � I I �   r e m o v e   m e d i a   o f   s h e l f   n a m e d   " Y a r d   S a l e "   f r o m   s h e l f   n a m e d   " M y   F i r s t   1 0   I t e m s " F  J�� J l  / /��������  ��  ��  ��    n      K L K 4   �� M
�� 
docu M m    ����  L m      N N                                                                                  DLb2   alis    �  
Roast Beef                 ��H+   x��Delicious Library 2.app                                         {>�Z%h        ����  	                Development     ��v�      �Z��     x�� G"� F�c D��  ERoast Beef:Users:dragon:Temporary:Development:Delicious Library 2.app   0  D e l i c i o u s   L i b r a r y   2 . a p p   
 R o a s t   B e e f  :Users/dragon/Temporary/Development/Delicious Library 2.app  /    ��  ��  ��  ��       �� O P��   O ��
�� .aevtoappnull  �   � **** P �� Q���� R S��
�� .aevtoappnull  �   � **** Q k     1 T T  ����  ��  ��   R   S  N���������� ����������������
�� 
docu
�� 
kocl
�� 
SHLF
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� 0 newshelf newShelf
�� 
SM3D
�� 
insh
�� .DLb2Add null���     ****
�� 
SSHF
�� 
M3DM�� 2��k/ +*�����l� E�O*�,��l O�*�,FO��k/*�,FOPUascr  ��ޭ