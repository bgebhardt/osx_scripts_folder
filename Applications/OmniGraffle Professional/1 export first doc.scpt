FasdUAS 1.101.10   ��   ��    k             l     ��  ��    I C My hack on a script I found on the forums.  See description below.     � 	 	 �   M y   h a c k   o n   a   s c r i p t   I   f o u n d   o n   t h e   f o r u m s .     S e e   d e s c r i p t i o n   b e l o w .   
  
 l     ��  ��      Bryan Gebhardt, 10/17/07     �   2   B r y a n   G e b h a r d t ,   1 0 / 1 7 / 0 7      l     ��������  ��  ��        l     ��  ��    &   script based on this forum post     �   @   s c r i p t   b a s e d   o n   t h i s   f o r u m   p o s t      l     ��  ��    7 1 http://forums.omnigroup.com/showthread.php?t=106     �   b   h t t p : / / f o r u m s . o m n i g r o u p . c o m / s h o w t h r e a d . p h p ? t = 1 0 6      l     ��������  ��  ��        l     ��   ��    G A Watch and auto-export OmniGraffle files to web-friendly versions      � ! ! �   W a t c h   a n d   a u t o - e x p o r t   O m n i G r a f f l e   f i l e s   t o   w e b - f r i e n d l y   v e r s i o n s   " # " l     �� $ %��   $ c ] files/folders to watch are to be dropped onto this script (saved as a Stay Open application)    % � & & �   f i l e s / f o l d e r s   t o   w a t c h   a r e   t o   b e   d r o p p e d   o n t o   t h i s   s c r i p t   ( s a v e d   a s   a   S t a y   O p e n   a p p l i c a t i o n ) #  ' ( ' l     �� ) *��   ) K E  if a folder is watched all OG files in the folder will be monitored    * � + + �     i f   a   f o l d e r   i s   w a t c h e d   a l l   O G   f i l e s   i n   t h e   f o l d e r   w i l l   b e   m o n i t o r e d (  , - , l     �� . /��   . a [ exported files are created alongside the originals, named with the export_format extension    / � 0 0 �   e x p o r t e d   f i l e s   a r e   c r e a t e d   a l o n g s i d e   t h e   o r i g i n a l s ,   n a m e d   w i t h   t h e   e x p o r t _ f o r m a t   e x t e n s i o n -  1 2 1 l     �� 3 4��   3 r l  multiple-canvas documents are exported as per the 'Entire Document' (subdirectory named after the OG file)    4 � 5 5 �     m u l t i p l e - c a n v a s   d o c u m e n t s   a r e   e x p o r t e d   a s   p e r   t h e   ' E n t i r e   D o c u m e n t '   ( s u b d i r e c t o r y   n a m e d   a f t e r   t h e   O G   f i l e ) 2  6 7 6 l     �� 8 9��   8 n h  based on / hacked from the original from Greg Titus (http://forums.omnigroup.com/showthread.php?p=537)    9 � : : �     b a s e d   o n   /   h a c k e d   f r o m   t h e   o r i g i n a l   f r o m   G r e g   T i t u s   ( h t t p : / / f o r u m s . o m n i g r o u p . c o m / s h o w t h r e a d . p h p ? p = 5 3 7 ) 7  ; < ; l     ��������  ��  ��   <  = > = l     ��������  ��  ��   >  ? @ ? l    6 A���� A O     6 B C B k    5 D D  E F E r     G H G n    
 I J I 1    
��
�� 
pnam J 4   �� K
�� 
docu K m    ����  H o      ���� 0 docname docName F  L M L r     N O N n     P Q P 1    ��
�� 
ppth Q 4   �� R
�� 
docu R m    ����  O o      ���� 0 docfileunix docFileUnix M  S T S r     U V U c     W X W l    Y���� Y c     Z [ Z o    ���� 0 docfileunix docFileUnix [ m    ��
�� 
psxf��  ��   X m    ��
�� 
alis V o      ���� 0 docfile docFile T  \ ] \ l   ��������  ��  ��   ]  ^ _ ^ l   �� ` a��   ` - ' need to pass in file without extension    a � b b N   n e e d   t o   p a s s   i n   f i l e   w i t h o u t   e x t e n s i o n _  c d c l   �� e f��   e J D needed to remove the old extension before export. -- Bryan 10-17-07    f � g g �   n e e d e d   t o   r e m o v e   t h e   o l d   e x t e n s i o n   b e f o r e   e x p o r t .   - -   B r y a n   1 0 - 1 7 - 0 7 d  h i h l   �� j k��   j < 6set source_ext to name extension of (info for docFile)    k � l l l s e t   s o u r c e _ e x t   t o   n a m e   e x t e n s i o n   o f   ( i n f o   f o r   d o c F i l e ) i  m n m l   �� o p��   o k eset new_name to (characters 1 through -((length of source_ext) + 1) of (docFile as string)) as string    p � q q � s e t   n e w _ n a m e   t o   ( c h a r a c t e r s   1   t h r o u g h   - ( ( l e n g t h   o f   s o u r c e _ e x t )   +   1 )   o f   ( d o c F i l e   a s   s t r i n g ) )   a s   s t r i n g n  r s r l   ��������  ��  ��   s  t u t n   % v w v I    %�� x���� 0 process_item   x  y z y o     ���� 0 docfile docFile z  {�� { m     ! | | � } }  p d f��  ��   w  f     u  ~  ~ n  & - � � � I   ' -�� ����� 0 process_item   �  � � � o   ' (���� 0 docfile docFile �  ��� � m   ( ) � � � � �  v d x��  ��   �  f   & '   ��� � n  . 5 � � � I   / 5�� ����� 0 process_item   �  � � � o   / 0���� 0 docfile docFile �  ��� � m   0 1 � � � � �  p n g��  ��   �  f   . /��   C m      � ��                                                                                  OGfl   alis    �  Macintosh HD               đ;wH+     OmniGraffle Professional 4.app                                  a��8:�        ����  	                Applications    đ��      �8�P         8Macintosh HD:Applications:OmniGraffle Professional 4.app  >  O m n i G r a f f l e   P r o f e s s i o n a l   4 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 4.app   / ��  ��  ��   @  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 process_item   �  � � � o      ���� 0 source_file   �  ��� � o      ���� 0 export_format  ��  ��   � k     � � �  � � � l     ��������  ��  ��   �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 processed_items   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � [ U file extension must be added to the destination filename, and must match the export     � � � � �   f i l e   e x t e n s i o n   m u s t   b e   a d d e d   t o   t h e   d e s t i n a t i o n   f i l e n a m e ,   a n d   m u s t   m a t c h   t h e   e x p o r t   �  � � � l   �� � ���   � D >  type (i.e. 'save doc as "png" in file "figure.graffle.png"')    � � � � |     t y p e   ( i . e .   ' s a v e   d o c   a s   " p n g "   i n   f i l e   " f i g u r e . g r a f f l e . p n g " ' ) �  � � � l   �� � ���   � V P Note when saving a multi-page document, the destination filename will have the     � � � � �   N o t e   w h e n   s a v i n g   a   m u l t i - p a g e   d o c u m e n t ,   t h e   d e s t i n a t i o n   f i l e n a m e   w i l l   h a v e   t h e   �  � � � l   �� � ���   � ` Z   export type extension removed, but *will not* have the .graffle extension removed. The     � � � � �       e x p o r t   t y p e   e x t e n s i o n   r e m o v e d ,   b u t   * w i l l   n o t *   h a v e   t h e   . g r a f f l e   e x t e n s i o n   r e m o v e d .   T h e   �  � � � l   �� � ���   � U O   result will  be created as the directory to hold the exported canvas files.     � � � � �       r e s u l t   w i l l     b e   c r e a t e d   a s   t h e   d i r e c t o r y   t o   h o l d   t h e   e x p o r t e d   c a n v a s   f i l e s .   �  � � � l   �� � ���   � m g   e.g. if destination = figure.graffle.png => OG will try to create figure.graffle/, but will fail as     � � � � �       e . g .   i f   d e s t i n a t i o n   =   f i g u r e . g r a f f l e . p n g   = >   O G   w i l l   t r y   t o   c r e a t e   f i g u r e . g r a f f l e / ,   b u t   w i l l   f a i l   a s   �  � � � l   �� � ���   � - '   this is the name of the source file!    � � � � N       t h i s   i s   t h e   n a m e   o f   t h e   s o u r c e   f i l e ! �  � � � l   �� � ���   � j d   OG strips the .graffle extension for the directory name automatically via the GUI, but not via AS    � � � � �       O G   s t r i p s   t h e   . g r a f f l e   e x t e n s i o n   f o r   t h e   d i r e c t o r y   n a m e   a u t o m a t i c a l l y   v i a   t h e   G U I ,   b u t   n o t   v i a   A S �  � � � l   �� � ���   � n h simple solution: double up the extension (figure.graffle.png.png => figure.graffle.png/...) when saving    � � � � �   s i m p l e   s o l u t i o n :   d o u b l e   u p   t h e   e x t e n s i o n   ( f i g u r e . g r a f f l e . p n g . p n g   = >   f i g u r e . g r a f f l e . p n g / . . . )   w h e n   s a v i n g �  � � � l   �� � ���   �    (see export_item())    � � � � *     ( s e e   e x p o r t _ i t e m ( ) ) �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � h b ok, now to really complicate matters: some OG files are folders (packages) i.e. file.graffle may     � � � � �   o k ,   n o w   t o   r e a l l y   c o m p l i c a t e   m a t t e r s :   s o m e   O G   f i l e s   a r e   f o l d e r s   ( p a c k a g e s )   i . e .   f i l e . g r a f f l e   m a y   �  � � � l   �� � ���   � - '   actually be ":path:to:file.graffle:"    � � � � N       a c t u a l l y   b e   " : p a t h : t o : f i l e . g r a f f l e : " �  � � � l   �� � ���   � j d - this stuffs up the export naming, so need to chomp any trailing path separators for package files    � � � � �   -   t h i s   s t u f f s   u p   t h e   e x p o r t   n a m i n g ,   s o   n e e d   t o   c h o m p   a n y   t r a i l i n g   p a t h   s e p a r a t o r s   f o r   p a c k a g e   f i l e s �  � � � l   �� � ���   � e _ note that there's no point trying to do chomp the alias, as AS will gleefully put back the ":"    � � � � �   n o t e   t h a t   t h e r e ' s   n o   p o i n t   t r y i n g   t o   d o   c h o m p   t h e   a l i a s ,   a s   A S   w i l l   g l e e f u l l y   p u t   b a c k   t h e   " : " �  � � � l   ��������  ��  ��   �  � � � Z    F � ��� � � =    � � � n     � � � 1   	 ��
�� 
ispk � l   	 ����� � I   	�� ���
�� .sysonfo4asfe        file � o    ���� 0 source_file  ��  ��  ��   � m    ��
�� boovtrue � k    2 � �  � � � l   �� � ���   � "  package, chomp trailing ':'    � � � � 8   p a c k a g e ,   c h o m p   t r a i l i n g   ' : ' �    l   ����   m g I need to hack through this to figure out if the paths are right, so disabling for now. Bryan 10-17-07    � �   I   n e e d   t o   h a c k   t h r o u g h   t h i s   t o   f i g u r e   o u t   i f   t h e   p a t h s   a r e   r i g h t ,   s o   d i s a b l i n g   f o r   n o w .   B r y a n   1 0 - 1 7 - 0 7  I   ����
�� .sysodlogaskr        TEXT m     �		 : P a c k a g e s   p r o b a b l y   d o n ' t   w o r k .��   

 L    ����    r    * c    ( l   &���� n    & 7  &��
�� 
cha  m     "����  m   # %������ l   ���� c     o    ���� 0 source_file   m    ��
�� 
TEXT��  ��  ��  ��   m   & '��
�� 
TEXT o      ���� 0 new_name   �� r   + 2 b   + 0 b   + .  o   + ,���� 0 new_name    m   , -!! �""  . o   . /���� 0 export_format   o      ���� 0 new_name  ��  ��   � k   5 F## $%$ l  5 5��&'��  &   plain file   ' �((    p l a i n   f i l e% )*) r   5 >+,+ b   5 <-.- b   5 :/0/ l  5 81���1 c   5 8232 o   5 6�~�~ 0 source_file  3 m   6 7�}
�} 
TEXT��  �  0 m   8 944 �55  .. o   : ;�|�| 0 export_format  , o      �{�{ 0 new_name  * 676 l  ? ?�z�y�x�z  �y  �x  7 8�w8 I  ? F�v9�u
�v .ascrcmnt****      � ****9 b   ? B:;: m   ? @<< �==  N E W   N A M E   =  ; o   @ A�t�t 0 new_name  �u  �w   � >?> l  G G�s�r�q�s  �r  �q  ? @A@ l  G G�pBC�p  B 8 2 test if the target (new_name) needs to be updated   C �DD d   t e s t   i f   t h e   t a r g e t   ( n e w _ n a m e )   n e e d s   t o   b e   u p d a t e dA EFE O   G mGHG k   K lII JKJ l  K K�oLM�o  L ' ! if doesn't exist, need to update   M �NN B   i f   d o e s n ' t   e x i s t ,   n e e d   t o   u p d a t eK OPO r   K VQRQ H   K TSS l  K ST�n�mT I  K S�lU�k
�l .coredoexbool        obj U 4   K O�jV
�j 
cobjV o   M N�i�i 0 new_name  �k  �n  �m  R o      �h�h 0 need_update  P WXW l  W W�g�f�e�g  �f  �e  X Y�dY Z   W lZ[�c�bZ H   W Y\\ o   W X�a�a 0 need_update  [ l  \ h]^_] k   \ h`` aba l  \ \�`cd�`  c O Idisplay dialog "target mod date: " & (modification date of item new_name)   d �ee � d i s p l a y   d i a l o g   " t a r g e t   m o d   d a t e :   "   &   ( m o d i f i c a t i o n   d a t e   o f   i t e m   n e w _ n a m e )b f�_f r   \ hghg ?   \ fiji n   \ _klk 1   ] _�^
�^ 
asmol o   \ ]�]�] 0 source_file  j n   _ emnm 1   c e�\
�\ 
asmon 4   _ c�[o
�[ 
cobjo o   a b�Z�Z 0 new_name  h o      �Y�Y 0 need_update  �_  ^   exists, but is it stale?   _ �pp 2   e x i s t s ,   b u t   i s   i t   s t a l e ?�c  �b  �d  H m   G Hqq�                                                                                  MACS   alis    r  Macintosh HD               đ;wH+   %�
Finder.app                                                      �d�d�(        ����  	                CoreServices    đ��      �d��     %� %�      3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  F rsr l  n n�X�W�V�X  �W  �V  s tut Z   n �vw�U�Tv o   n o�S�S 0 need_update  w k   r �xx yzy l  r r�R{|�R  { - ' need to pass in file without extension   | �}} N   n e e d   t o   p a s s   i n   f i l e   w i t h o u t   e x t e n s i o nz ~~ l  r r�Q���Q  � > 8 not the new name as code was originally -Bryan 10-17-07   � ��� p   n o t   t h e   n e w   n a m e   a s   c o d e   w a s   o r i g i n a l l y   - B r y a n   1 0 - 1 7 - 0 7 ��� l  r r�P���P  � J D needed to remove the old extension before export. -- Bryan 10-17-07   � ��� �   n e e d e d   t o   r e m o v e   t h e   o l d   e x t e n s i o n   b e f o r e   e x p o r t .   - -   B r y a n   1 0 - 1 7 - 0 7� ��� r   r {��� n   r y��� 1   w y�O
�O 
nmxt� l  r w��N�M� I  r w�L��K
�L .sysonfo4asfe        file� o   r s�J�J 0 source_file  �K  �N  �M  � o      �I�I 0 
source_ext  � ��� l  | |�H���H  � I C +2 for 1 indexed string and to get rid of period before extension.   � ��� �   + 2   f o r   1   i n d e x e d   s t r i n g   a n d   t o   g e t   r i d   o f   p e r i o d   b e f o r e   e x t e n s i o n .� ��� r   | ���� c   | ���� l  | ���G�F� n   | ���� 7  ��E��
�E 
cha � m   � ��D�D � d   � ��� l  � ���C�B� [   � ���� l  � ���A�@� n   � ���� 1   � ��?
�? 
leng� o   � ��>�> 0 
source_ext  �A  �@  � m   � ��=�= �C  �B  � l  | ��<�;� c   | ��� o   | }�:�: 0 source_file  � m   } ~�9
�9 
TEXT�<  �;  �G  �F  � m   � ��8
�8 
TEXT� o      �7�7 0 source_noext  � ��� l  � ��6�5�4�6  �5  �4  � ��� I  � ��3��2
�3 .ascrcmnt****      � ****� b   � ���� m   � ��� ���  s o u r c e _ n o e x t   =  � o   � ��1�1 0 source_noext  �2  � ��� l  � ��0�/�.�0  �/  �.  � ��� n  � ���� I   � ��-��,�- 0 export_item  � ��� o   � ��+�+ 0 source_file  � ��� o   � ��*�* 0 source_noext  � ��)� o   � ��(�( 0 export_format  �)  �,  �  f   � �� ��'� r   � ���� m   � ��&
�& boovtrue� o      �%�% 0 processed_items  �'  �U  �T  u ��� l  � ��$�#�"�$  �#  �"  � ��� L   � ��� o   � ��!�! 0 processed_items  � �� � l  � �����  �  �  �    � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � ( " this sub-routine does the export    � ��� D   t h i s   s u b - r o u t i n e   d o e s   t h e   e x p o r t  � ��� i    ��� I      ���� 0 export_item  � ��� o      �� 0 source_file  � ��� o      �� 0 new_name  � ��� o      �� 0 export_format  �  �  � k     ��� ��� l     ��
�	�  �
  �	  � ��� t     ���� O    ���� k    ��� ��� r    ��� n    ��� 1   	 �
� 
OGea� 1    	�
� 
OGEX� o      �� 0 oldareatype oldAreaType� ��� l   ����  �  �  � ��� l   ����  � - ' open the file if it isn't already open   � ��� N   o p e n   t h e   f i l e   i f   i t   i s n ' t   a l r e a d y   o p e n� ��� l   ����  � Q K 1. convert the source_file alias to a POSIX path ("/path/to/file.graffle")   � ��� �   1 .   c o n v e r t   t h e   s o u r c e _ f i l e   a l i a s   t o   a   P O S I X   p a t h   ( " / p a t h / t o / f i l e . g r a f f l e " )� ��� l   � ���   � 9 3    - OG's 'document path' property is a POSIX path   � ��� f         -   O G ' s   ' d o c u m e n t   p a t h '   p r o p e r t y   i s   a   P O S I X   p a t h� ��� l   ��� ��  � 8 2 2. see if a file with that path is currently open     � d   2 .   s e e   i f   a   f i l e   w i t h   t h a t   p a t h   i s   c u r r e n t l y   o p e n�  l   ����     3. if not, open it    � &   3 .   i f   n o t ,   o p e n   i t  l   ��	
��  	 0 * 4. get a reference to the document object   
 � T   4 .   g e t   a   r e f e r e n c e   t o   t h e   d o c u m e n t   o b j e c t  r     l   ���� n     1    ��
�� 
psxp l   ���� o    ���� 0 source_file  ��  ��  ��  ��   l     ���� o      ���� 0 source_item  ��  ��    l   ��������  ��  ��    l   ����   [ U OG 4.1.2 returns 'path of...' WITHOUT the trailing slash for package files, need to     � �   O G   4 . 1 . 2   r e t u r n s   ' p a t h   o f . . . '   W I T H O U T   t h e   t r a i l i n g   s l a s h   f o r   p a c k a g e   f i l e s ,   n e e d   t o    l   ����   > 8 chomp before we compare ('documents whose path is ...')    �   p   c h o m p   b e f o r e   w e   c o m p a r e   ( ' d o c u m e n t s   w h o s e   p a t h   i s   . . . ' ) !"! Z    >#$����# F    (%&% l   '����' =   ()( n    *+* 1    ��
�� 
ispk+ l   ,����, I   ��-��
�� .sysonfo4asfe        file- o    ���� 0 source_file  ��  ��  ��  ) m    ��
�� boovtrue��  ��  & l    &.����. =    &/0/ n     $121 4   ! $��3
�� 
cha 3 m   " #������2 o     !���� 0 source_item  0 m   $ %44 �55  /��  ��  $ k   + :66 787 l  + +��9:��  9 "  package, chomp trailing '/'   : �;; 8   p a c k a g e ,   c h o m p   t r a i l i n g   ' / '8 <��< r   + :=>= c   + 8?@? l  + 6A����A n   + 6BCB 7 , 6��DE
�� 
cha D m   0 2���� E m   3 5������C o   + ,���� 0 source_item  ��  ��  @ m   6 7��
�� 
TEXT> o      ���� 0 source_item  ��  ��  ��  " FGF l  ? ?��������  ��  ��  G HIH r   ? SJKJ =  ? QLML l  ? ON����N I  ? O��O��
�� .corecnte****       ****O l  ? KP����P 6  ? KQRQ 2  ? B��
�� 
docuR =  C JSTS 1   D F��
�� 
ppthT o   G I���� 0 source_item  ��  ��  ��  ��  ��  M m   O P����  K o      ���� 0 
needtoopen 
needToOpenI UVU Z   T aWX����W o   T U���� 0 
needtoopen 
needToOpenX I  X ]��Y��
�� .aevtodocnull  �    alisY o   X Y���� 0 source_file  ��  ��  ��  V Z[Z l  b b��������  ��  ��  [ \]\ r   b u^_^ n   b s`a` 4  n s��b
�� 
cobjb m   q r���� a l  b nc����c 6  b nded 2  b e��
�� 
docue =  f mfgf 1   g i��
�� 
ppthg o   j l���� 0 source_item  ��  ��  _ o      ���� 0 thedocument theDocument] hih l  v v��������  ��  ��  i jkj l  v v��lm��  l   single or multipage?   m �nn *   s i n g l e   o r   m u l t i p a g e ?k opo l  v v��qr��  q w q 11/1/07 bryan: hacked to always export do the entire document.  When set to all graphics it didn't seem to work.   r �ss �   1 1 / 1 / 0 7   b r y a n :   h a c k e d   t o   a l w a y s   e x p o r t   d o   t h e   e n t i r e   d o c u m e n t .     W h e n   s e t   t o   a l l   g r a p h i c s   i t   d i d n ' t   s e e m   t o   w o r k .p tut Z   v �vw��xv =   v �yzy l  v {����{ I  v ��|��
�� .corecnte****       ****| n   v {}~} 2  w {��
�� 
OGWS~ o   v w���� 0 thedocument theDocument��  ��  ��  z m    �����  w r   � �� m   � ���
�� OGeaOGe1� n      ��� 1   � ���
�� 
OGea� 1   � ���
�� 
OGEX��  x k   � ��� ��� r   � ���� m   � ���
�� OGeaOGe4� n      ��� 1   � ���
�� 
OGea� 1   � ���
�� 
OGEX� ��� l  � �������  � &   double up target directory name   � ��� @   d o u b l e   u p   t a r g e t   d i r e c t o r y   n a m e� ��� r   � ���� b   � ���� b   � ���� o   � ����� 0 new_name  � m   � ��� ���  .� o   � ����� 0 export_format  � o      ���� 0 new_name  � ���� I  � ������
�� .ascrcmnt****      � ****� b   � ���� m   � ��� ���  N E W   N A M E   =  � o   � ����� 0 new_name  ��  ��  u ��� l  � ���������  ��  ��  � ��� l  � �������  � � �11/19/07: this line broke in Leopard for some reason, but as long as the file extension is in the new file name it will work, so I removed the export format.   � ���: 1 1 / 1 9 / 0 7 :   t h i s   l i n e   b r o k e   i n   L e o p a r d   f o r   s o m e   r e a s o n ,   b u t   a s   l o n g   a s   t h e   f i l e   e x t e n s i o n   i s   i n   t h e   n e w   f i l e   n a m e   i t   w i l l   w o r k ,   s o   I   r e m o v e d   t h e   e x p o r t   f o r m a t .� ��� l  � �������  � : 4save theDocument as export_format in file (new_name)   � ��� h s a v e   t h e D o c u m e n t   a s   e x p o r t _ f o r m a t   i n   f i l e   ( n e w _ n a m e )� ��� I  � �����
�� .coresavenull���    obj � o   � ����� 0 thedocument theDocument� �����
�� 
kfil� 4   � ����
�� 
file� l  � ������� o   � ����� 0 new_name  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � 6 0 if the file wasn't already open, close it again   � ��� `   i f   t h e   f i l e   w a s n ' t   a l r e a d y   o p e n ,   c l o s e   i t   a g a i n� ��� Z   � �������� o   � ����� 0 
needtoopen 
needToOpen� I  � ������
�� .coreclosnull���    obj � o   � ����� 0 thedocument theDocument��  ��  ��  � ��� l  � ���������  ��  ��  � ���� r   � ���� o   � ��� 0 oldareatype oldAreaType� n      ��� 1   � ��~
�~ 
OGea� 1   � ��}
�} 
OGEX��  � m    ���                                                                                  OGfl   alis    �  Macintosh HD               đ;wH+     OmniGraffle Professional 4.app                                  a��8:�        ����  	                Applications    đ��      �8�P         8Macintosh HD:Applications:OmniGraffle Professional 4.app  >  O m n i G r a f f l e   P r o f e s s i o n a l   4 . a p p    M a c i n t o s h   H D  +Applications/OmniGraffle Professional 4.app   / ��  � m     �|�|�� ��{� l  � ��z�y�x�z  �y  �x  �{  �       �w��������w  � �v�u�t�s�r�q�v 0 process_item  �u 0 export_item  
�t .aevtoappnull  �   � ****�s 0 docname docName�r 0 docfileunix docFileUnix�q 0 docfile docFile� �p ��o�n���m�p 0 process_item  �o �l��l �  �k�j�k 0 source_file  �j 0 export_format  �n  � �i�h�g�f�e�d�c�i 0 source_file  �h 0 export_format  �g 0 processed_items  �f 0 new_name  �e 0 need_update  �d 0 
source_ext  �c 0 source_noext  � �b�a�`�_�^�]!4<�\q�[�Z�Y�X�W��V
�b .sysonfo4asfe        file
�a 
ispk
�` .sysodlogaskr        TEXT
�_ 
TEXT
�^ 
cha �]��
�\ .ascrcmnt****      � ****
�[ 
cobj
�Z .coredoexbool        obj 
�Y 
asmo
�X 
nmxt
�W 
leng�V 0 export_item  �m �fE�O�j  �,e  '�j OhO��&[�\[Zk\Z�2�&E�O��%�%E�Y ��&�%�%E�O�%j 
O� #*�/j E�O� ��,*�/�,E�Y hUO� >�j  �,E�O��&[�\[Zk\Z�a ,l'2�&E�Oa �%j 
O)���m+ OeE�Y hO�OP� �U��T�S���R�U 0 export_item  �T �Q��Q �  �P�O�N�P 0 source_file  �O 0 new_name  �N 0 export_format  �S  � �M�L�K�J�I�H�G�M 0 source_file  �L 0 new_name  �K 0 export_format  �J 0 oldareatype oldAreaType�I 0 source_item  �H 0 
needtoopen 
needToOpen�G 0 thedocument theDocument� �F��E�D�C�B�A�@4�?�>�=�<��;�:�9�8�7�6�5���4�3�2�1�0�F�
�E 
OGEX
�D 
OGea
�C 
psxp
�B .sysonfo4asfe        file
�A 
ispk
�@ 
cha 
�? 
bool�>��
�= 
TEXT
�< 
docu�  
�; 
ppth
�: .corecnte****       ****
�9 .aevtodocnull  �    alis
�8 
cobj
�7 
OGWS
�6 OGeaOGe1
�5 OGeaOGe4
�4 .ascrcmnt****      � ****
�3 
kfil
�2 
file
�1 .coresavenull���    obj 
�0 .coreclosnull���    obj �R ��n� �*�,�,E�O��,E�O�j �,e 	 
��i/� �& �[�\[Zk\Z�2�&E�Y hO*�-�[�,\Z�81j j E�O� 
�j Y hO*�-�[�,\Z�81a k/E�O�a -j j  a *�,�,FY a *�,�,FO�a %�%E�Oa �%j O�a *a �/l O� 
�j Y hO�*�,�,FUoOP� �/��.�-���,
�/ .aevtoappnull  �   � ****� k     6��  ?�+�+  �.  �-  �  �  ��*�)�(�'�&�%�$�# |�" � �
�* 
docu
�) 
pnam�( 0 docname docName
�' 
ppth�& 0 docfileunix docFileUnix
�% 
psxf
�$ 
alis�# 0 docfile docFile�" 0 process_item  �, 7� 3*�k/�,E�O*�k/�,E�O��&�&E�O)��l+ 
O)��l+ 
O)��l+ 
U� ���  m u s i c   d i a g r a m� ��� l / U s e r s / b l u r e m p l o y e e / D e s k t o p / a r c h / m u s i c   d i a g r a m . g r a f f l e�Jalis    F  Macintosh HD               đ;wH+  ��music diagram.graffle                                          �Y�hۅ        ����  I                 đ��      �iL    ,  m u s i c   d i a g r a m . g r a f f l e    M a c i n t o s h   H D  5Users/bluremployee/Desktop/arch/music diagram.graffle   /    ��   ascr  ��ޭ