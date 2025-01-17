FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
add - new item alert

This Folder Action handler is triggered whenever items are added to the attached folder.
The script will display an alert containing the number of items added and offering the user
the option to reveal the added items in Finder.

Copyright � 2002��2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	� 
 a d d   -   n e w   i t e m   a l e r t 
 
 T h i s   F o l d e r   A c t i o n   h a n d l e r   i s   t r i g g e r e d   w h e n e v e r   i t e m s   a r e   a d d e d   t o   t h e   a t t a c h e d   f o l d e r . 
 T h e   s c r i p t   w i l l   d i s p l a y   a n   a l e r t   c o n t a i n i n g   t h e   n u m b e r   o f   i t e m s   a d d e d   a n d   o f f e r i n g   t h e   u s e r 
 t h e   o p t i o n   t o   r e v e a l   t h e   a d d e d   i t e m s   i n   F i n d e r . 
 
 C o p y r i g h t   �   2 0 0 2  2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l          j     �� �� 0 dialog_timeout    m     ����   9 3 set the amount of time before dialogs auto-answer.     �   f   s e t   t h e   a m o u n t   o f   t i m e   b e f o r e   d i a l o g s   a u t o - a n s w e r .      l     ��������  ��  ��        i        I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    Q     �  ��  k    �        O     ! " ! k     # #  $ % $ l   �� & '��   &   get the name of the folder    ' � ( ( 4 g e t   t h e   n a m e   o f   t h e   f o l d e r %  )�� ) r     * + * l   
 ,���� , n    
 - . - 1    
��
�� 
pnam . o    ���� 0 this_folder  ��  ��   + l      /���� / o      ���� 0 folder_name  ��  ��  ��   " m     0 0�                                                                                  MACS  alis    t  Macintosh HD               Ұz�H+   	�
Finder.app                                                      �����        ����  	                CoreServices    ү�B      ��o�     	� 	� 	�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��      1 2 1 l   ��������  ��  ��   2  3 4 3 l   �� 5 6��   5 A ; find out how many new items have been placed in the folder    6 � 7 7 v   f i n d   o u t   h o w   m a n y   n e w   i t e m s   h a v e   b e e n   p l a c e d   i n   t h e   f o l d e r 4  8 9 8 r     : ; : l    <���� < n     = > = m    ��
�� 
nmbr > n    ? @ ? 2   ��
�� 
cobj @ l    A���� A o    ���� 0 added_items  ��  ��  ��  ��   ; l      B���� B o      ���� 0 
item_count  ��  ��   9  C D C l   �� E F��   E  create the alert string    F � G G . c r e a t e   t h e   a l e r t   s t r i n g D  H I H r     J K J c     L M L l    N���� N b     O P O b     Q R Q m     S S � T T * F o l d e r   A c t i o n s   A l e r t : R o    ��
�� 
ret  P o    ��
�� 
ret ��  ��   M m    ��
�� 
utxt K o      ���� 0 alert_message   I  U V U Z     7 W X�� Y W ?    # Z [ Z l    ! \���� \ o     !���� 0 
item_count  ��  ��   [ m   ! "����  X r   & / ] ^ ] b   & - _ ` _ b   & + a b a o   & '���� 0 alert_message   b l  ' * c���� c c   ' * d e d l  ' ( f���� f o   ' (���� 0 
item_count  ��  ��   e m   ( )��
�� 
ctxt��  ��   ` m   + , g g � h h     n e w   i t e m s   h a v e   ^ o      ���� 0 alert_message  ��   Y r   2 7 i j i b   2 5 k l k o   2 3���� 0 alert_message   l m   3 4 m m � n n " O n e   n e w   i t e m   h a s   j o      ���� 0 alert_message   V  o p o r   8 E q r q b   8 C s t s b   8 A u v u b   8 ? w x w b   8 = y z y b   8 ; { | { o   8 9���� 0 alert_message   | m   9 : } } � ~ ~ , b e e n   p l a c e d   i n   f o l d e r   z m   ; <   utxt  x l  = > ����� � o   = >���� 0 folder_name  ��  ��   v m   ? @ � � utxt  t m   A B � � � � �  . r o      ���� 0 alert_message   p  � � � r   F O � � � l  F M ����� � b   F M � � � b   F K � � � b   F I � � � l  F G ����� � o   F G���� 0 alert_message  ��  ��   � o   G H��
�� 
ret  � o   I J��
�� 
ret  � m   K L � � � � � N W o u l d   y o u   l i k e   t o   v i e w   t h e   a d d e d   i t e m s ?��  ��   � l      ����� � o      ���� 0 alert_message  ��  ��   �  � � � l  P P��������  ��  ��   �  � � � I  P p�� � �
�� .sysodlogaskr        TEXT � l  P Q ����� � o   P Q���� 0 alert_message  ��  ��   � �� � �
�� 
btns � J   R Z � �  � � � m   R U � � � � �  Y e s �  ��� � m   U X � � � � �  N o��   � �� � �
�� 
dflt � m   ] ^����  � �� � �
�� 
disp � m   a b����  � �� ���
�� 
givu � o   e j���� 0 dialog_timeout  ��   �  � � � r   q z � � � l  q x ����� � n   q x � � � 1   t x��
�� 
bhit � l  q t ����� � 1   q t��
�� 
rslt��  ��  ��  ��   � l      ����� � o      ���� 0 user_choice  ��  ��   �  � � � l  { {��������  ��  ��   �  ��� � Z   { � � ����� � =  { � � � � o   { |���� 0 user_choice   � m   |  � � � � �  Y e s � O   � � � � � k   � � � �  � � � l  � ��� � ���   �  go to the desktop     � � � � $ g o   t o   t h e   d e s k t o p   �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  � � � l  � ��� � ���   �  open the folder    � � � �  o p e n   t h e   f o l d e r �  � � � I  � ��� ���
�� .aevtodocnull  �    alis � o   � ����� 0 this_folder  ��   �  � � � l  � ��� � ���   �  select the items    � � � �   s e l e c t   t h e   i t e m s �  ��� � I  � ��� ���
�� .miscmvisnull���    obj  � l  � � ����� � o   � ����� 0 added_items  ��  ��  ��  ��   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               Ұz�H+   	�
Finder.app                                                      �����        ����  	                CoreServices    ү�B      ��o�     	� 	� 	�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��  ��     ��� � l     ����~��  �  �~  ��       �} ��| ��}   � �{�z�{ 0 dialog_timeout  
�z .facofgetnull���     alis�|  � �y �x�w � ��v
�y .facofgetnull���     alis�x 0 this_folder  �w �u�t�s
�u 
flst�t 0 added_items  �s   � �r�q�p�o�n�m�r 0 this_folder  �q 0 added_items  �p 0 folder_name  �o 0 
item_count  �n 0 alert_message  �m 0 user_choice   �  0�l�k�j S�i�h�g g m }  � � ��f � ��e�d�c�b�a�`�_ ��^�]�\�[�Z
�l 
pnam
�k 
cobj
�j 
nmbr
�i 
ret 
�h 
utxt
�g 
ctxt
�f 
btns
�e 
dflt
�d 
disp
�c 
givu�b 
�a .sysodlogaskr        TEXT
�` 
rslt
�_ 
bhit
�^ .miscactvnull��� ��� obj 
�] .aevtodocnull  �    alis
�\ .miscmvisnull���    obj �[  �Z  �v � �� ��,E�UO��-�,E�O��%�%�&E�O�k ���&%�%E�Y ��%E�O��%�%�%�%�%E�O��%�%�%E�O��a a lva la ka b   a  O_ a ,E�O�a   � *j O�j O�j UY hW X  hascr  ��ޭ