FasdUAS 1.101.10   ��   ��    k             l     ��  ��    C = This script removes the old profile and installs the new one     � 	 	 z   T h i s   s c r i p t   r e m o v e s   t h e   o l d   p r o f i l e   a n d   i n s t a l l s   t h e   n e w   o n e   
  
 l     ��  ��    7 1 first it asks some information then acts upon it     �   b   f i r s t   i t   a s k s   s o m e   i n f o r m a t i o n   t h e n   a c t s   u p o n   i t      l     ��������  ��  ��        l     ��  ��    @ : ask if removing old profile as well as installing new one     �   t   a s k   i f   r e m o v i n g   o l d   p r o f i l e   a s   w e l l   a s   i n s t a l l i n g   n e w   o n e      l     ����  r         J            m        �   d R e m o v e   o l d   M D M   p r o f i l e   a n d   i n s t a l l   n e w   M D M   p r o f i l e    ��   m     ! ! � " " 8 O n l y   i n s t a l l   n e w   M D M   p r o f i l e��    o      ����  0 programoptions programOptions��  ��     # $ # l    %���� % r     & ' & l    (���� ( I   �� ) *
�� .gtqpchltns    @   @ ns   ) o    ����  0 programoptions programOptions * �� + ,
�� 
appr + m   	 
 - - � . .   S c r i p t   F u n c t i o n s , �� /��
�� 
prmp / m     0 0 � 1 1 : C h o o s e   t h e   a p p r o p r i a t e   s c r i p t��  ��  ��   ' o      ���� $0 oldremovalstatus oldremovalStatus��  ��   $  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   ask OS Version    7 � 8 8    a s k   O S   V e r s i o n 5  9 : 9 l    ;���� ; r     < = < J     > >  ? @ ? m     A A � B B > m a c O S   1 0 . 1 5   C a t a l i n a   a n d   b e f o r e @  C�� C m     D D � E E 8 m a c O S   1 1 . 0   B i g   S u r   a n d   l a t e r��   = o      ���� 0 	osoptions 	osOptions��  ��   :  F G F l   % H���� H r    % I J I l   # K���� K I   #�� L M
�� .gtqpchltns    @   @ ns   L o    ���� 0 	osoptions 	osOptions M �� N O
�� 
appr N m     P P � Q Q  C h o o s e   W h i c h   O S O �� R��
�� 
prmp R m     S S � T T 2 C h o o s e   t h e   a p p r o p r i a t e   O S��  ��  ��   J o      ���� 0 oschoice osChoice��  ��   G  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y , &ask admin or not and capture passwords    Z � [ [ L a s k   a d m i n   o r   n o t   a n d   c a p t u r e   p a s s w o r d s X  \ ] \ l  & 2 ^���� ^ r   & 2 _ ` _ J   & . a a  b c b m   & ) d d � e e 0 C u r r e n t   u s e r   i s   a n   a d m i n c  f�� f m   ) , g g � h h 6 C u r r e n t   u s e r   i s   a   n o n - a d m i n��   ` o      ���� 0 adminoptions adminOptions��  ��   ]  i j i l  3 F k���� k r   3 F l m l l  3 B n���� n I  3 B�� o p
�� .gtqpchltns    @   @ ns   o o   3 6���� 0 adminoptions adminOptions p �� q r
�� 
appr q m   7 : s s � t t  A d m i n   U s e r s r �� u��
�� 
prmp u m   ; > v v � w w > C h o o s e   t h e   a p p r o p r i a t e   r e s p o n s e��  ��  ��   m o      ���� 0 adminchoice adminChoice��  ��   j  x y x l     ��������  ��  ��   y  z { z l     �� | }��   | 9 3capture admin username if current user is non admin    } � ~ ~ f c a p t u r e   a d m i n   u s e r n a m e   i f   c u r r e n t   u s e r   i s   n o n   a d m i n {   �  l  G � ����� � Z   G � � ����� � l  G N ����� � C   G N � � � o   G J���� 0 adminoptions adminOptions � m   J M � � � � � 6 C u r r e n t   u s e r   i s   a   n o n - a d m i n��  ��   � k   Q � � �  � � � r   Q X � � � m   Q T � � � � �   � o      ���� 0 adminusername adminUsername �  ��� � W   Y � � � � r   e � � � � n   e � � � � 1   � ���
�� 
ttxt � l  e � ����� � I  e ��� � �
�� .sysodlogaskr        TEXT � m   e h � � � � � > E n t e r   t h e   e x a c t   a d m i n   u s e r n a m e : � �� � �
�� 
btns � J   k s � �  � � � m   k n � � � � �  C a n c e l �  ��� � m   n q � � � � �  O K��   � �� � �
�� 
dflt � m   v w����  � �� � �
�� 
dtxt � m   z } � � � � �   � �� ���
�� 
disp � m   � ����� ��  ��  ��   � o      ���� 0 adminusername adminUsername � >  ] d � � � o   ] `���� 0 adminusername adminUsername � m   ` c � � � � �  ��  ��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � 2 E n t e r   t h e   a d m i n   p a s s w o r d : � �� � �
�� 
appr � m   � � � � � � � " P a s s w o r d   R e q u i r e d � �� � �
�� 
disp � m   � ���
�� stic     � �� � �
�� 
dtxt � m   � � � � � � �   � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C o n t i n u e &��   � �� � �
�� 
dflt � m   � �����  � �� ���
�� 
htxt � m   � ���
�� boovtrue��  ��  ��   � o      ���� 0 apppass appPass��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , &capture old MDM Profile Name if needed    � � � � L c a p t u r e   o l d   M D M   P r o f i l e   N a m e   i f   n e e d e d �  � � � l  � ����� � Z   � � ����� � l  � � ����� � C   � � � � � o   � ����� $0 oldremovalstatus oldremovalStatus � m   � � � � � � � d R e m o v e   o l d   M D M   p r o f i l e   a n d   i n s t a l l   n e w   M D M   p r o f i l e��  ��   � k   � � �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 oldmdm oldMDM �  ��� � W   � � � � r   � � � � n   � � � � 1  	��
�� 
ttxt � l  �	 ����� � I  �	�� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � X E n t e r   t h e   e x a c t   n a m e   o f   t h e   o l d   M D M   p r o f i l e : � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� 
�� 
dtxt  m   � � �   ����
�� 
disp m  ���� ��  ��  ��   � o      ���� 0 oldmdm oldMDM � >  � � o   � ��� 0 oldmdm oldMDM m   � � �  ��  ��  ��  ��  ��   � 	
	 l     �~�}�|�~  �}  �|  
  l     �{�{   " capture new MDM Profile Name    � 8 c a p t u r e   n e w   M D M   P r o f i l e   N a m e  l "�z�y r  " m   �   o      �x�x 0 newmdm newMDM�z  �y    l #^�w�v W  #^ r  /Y n  /U 1  QU�u
�u 
ttxt l /Q �t�s  I /Q�r!"
�r .sysodlogaskr        TEXT! m  /2## �$$ X E n t e r   t h e   e x a c t   n a m e   o f   t h e   n e w   M D M   p r o f i l e :" �q%&
�q 
btns% J  5='' ()( m  58** �++  C a n c e l) ,�p, m  8;-- �..  O K�p  & �o/0
�o 
dflt/ m  @A�n�n 0 �m12
�m 
dtxt1 m  DG33 �44  2 �l5�k
�l 
disp5 m  JK�j�j �k  �t  �s   o      �i�i 0 newmdm newMDM > '.676 o  '*�h�h 0 newmdm newMDM7 m  *-88 �99  �w  �v   :;: l     �g�f�e�g  �f  �e  ; <=< l     �d>?�d  > &  capture new MDM profile location   ? �@@ @ c a p t u r e   n e w   M D M   p r o f i l e   l o c a t i o n= ABA l _lC�c�bC r  _lDED I _h�a�`F
�a .sysostdfalis    ��� null�`  F �_G�^
�_ 
prmpG m  adHH �II R P l e a s e   s e l e c t   t h e   n e w   e n r o l l m e n t   p r o f i l e :�^  E o      �]�] &0 mdmenrollmentfile mdmEnrollmentFile�c  �b  B JKJ l     �\�[�Z�\  �[  �Z  K LML l     �YNO�Y  N c ] This partopens system preferences and removes the profile which is the same for all OS types   O �PP �   T h i s   p a r t o p e n s   s y s t e m   p r e f e r e n c e s   a n d   r e m o v e s   t h e   p r o f i l e   w h i c h   i s   t h e   s a m e   f o r   a l l   O S   t y p e sM QRQ l m�S�X�WS Z  m�TU�V�UT l mrV�T�SV C  mrWXW o  mn�R�R $0 oldremovalstatus oldremovalStatusX m  nqYY �ZZ d R e m o v e   o l d   M D M   p r o f i l e   a n d   i n s t a l l   n e w   M D M   p r o f i l e�T  �S  U k  u�[[ \]\ O u�^_^ I {��Q�P�O
�Q .miscactvnull��� ��� null�P  �O  _ m  ux``�                                                                                  sprf  alis    `  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  -/:System:Applications:System Preferences.app/   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  *System/Applications/System Preferences.app  / ��  ] aba l ���N�M�L�N  �M  �L  b cdc O  �%efe O  �$ghg k  �#ii jkj r  ��lml n  ��non 1  ���K
�K 
pnamo 4  ���Jp
�J 
cwinp m  ���I�I m o      �H�H 0 currentwindow currentWindowk qrq I ���Gs�F
�G .sysodelanull��� ��� nmbrs m  ���E�E �F  r tut I ���Dv�C
�D .prcsclicnull��� ��� uielv n  ��wxw 4  ���By
�B 
butTy m  ��zz �{{  P r o f i l e sx n  ��|}| 4  ���A~
�A 
scra~ m  ���@�@ } 4  ���?
�? 
cwin m  ���� ��� $ S y s t e m   P r e f e r e n c e s�C  u ��� I ���>��=
�> .sysodelanull��� ��� nmbr� m  ���<�< �=  � ��� l ���;�:�9�;  �:  �9  � ��8� O  �#��� O  �"��� X  �!��7�� Z  ����6�5� C  �
��� n  ���� 1  �4
�4 
valL� n  ���� m  ��3
�3 
sttx� n  ����� 4  ���2�
�2 
uiel� m  ���1�1 � o  ���0�0 0 arow aRow� o  	�/�/ 0 oldmdm oldMDM� k  �� ��� I �.��-
�. .miscslctnull���     uiel� o  �,�, 0 arow aRow�-  � ��+� I �*��)
�* .sysodelanull��� ��� nmbr� m  �(�( �)  �+  �6  �5  �7 0 arow aRow� n  ����� m  ���'
�' 
crow� 4  ���&�
�& 
tabB� m  ���%�% � 4  ���$�
�$ 
scra� m  ���#�# � 4  ���"�
�" 
cwin� m  ���� ���  P r o f i l e s�8  h 4  ���!�
�! 
pcap� m  ���� ��� $ S y s t e m   P r e f e r e n c e sf m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  d ��� l &&� ���   �  �  � ��� O  &J��� I ,I���
� .prcsclicnull��� ��� uiel� n  ,E��� 4  @E��
� 
uiel� m  CD�� � n  ,@��� 4  ;@��
� 
sgrp� m  >?�� � n  ,;��� 4  4;��
� 
cwin� m  7:�� ���  P r o f i l e s� 4  ,4��
� 
pcap� m  03�� ��� $ S y s t e m   P r e f e r e n c e s�  � m  &)���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I KP���
� .sysodelanull��� ��� nmbr� m  KL�� �  � ��� O  Qw��� I Wv���
� .prcsclicnull��� ��� uiel� n  Wr��� 4  kr��
� 
uiel� m  nq�� ���  R e m o v e� n  Wk��� 4  fk��
� 
sheE� m  ij�� � n  Wf��� 4  _f��
� 
cwin� m  be�� ���  P r o f i l e s� 4  W_��
� 
pcap� m  [^�� ��� $ S y s t e m   P r e f e r e n c e s�  � m  QT���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l xx��
�	�  �
  �	  � ��� O  x���� k  ~��� ��� I ~����
� .sysodelanull��� ��� nmbr� m  ~��� ?�      �  � ��� W  ����� I �����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � I �����
� .coredoexnull���     ****� 4  ����
� 
prcs� m  ���� ���  S e c u r i t y A g e n t�  � ��� O  ����� k  ���� ��� Z  ����� ��� l �������� C  ����� o  ������ 0 adminoptions adminOptions� m  ���� ��� 6 C u r r e n t   u s e r   i s   a   n o n - a d m i n��  ��  � k  ���� ��� I �������
�� .prcskprsnull���     ctxt� o  ������ 0 adminusername adminUsername��  � ���� I ���� ��
�� .prcskcodnull���     ****  m  ������ 0��  ��  �   ��  �  I ������
�� .prcskprsnull���     ctxt o  ������ 0 apppass appPass��   �� I ������
�� .prcskcodnull���     **** m  ������ $��  ��  � 4  ����
�� 
prcs m  �� �  S e c u r i t y A g e n t�  � m  x{		�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � 

 I ������
�� .sysodelanull��� ��� nmbr m  ������ ��    O  �� I ��������
�� .aevtquitnull��� ��� null��  ��   m  ���                                                                                  sprf  alis    `  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  -/:System:Applications:System Preferences.app/   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  *System/Applications/System Preferences.app  / ��    l ����������  ��  ��   �� I ������
�� .sysodelanull��� ��� nmbr m  ������ ��  ��  �V  �U  �X  �W  R  l     ��������  ��  ��    l     ����   A ; This part opens the new enrollment profile and installs it    � v   T h i s   p a r t   o p e n s   t h e   n e w   e n r o l l m e n t   p r o f i l e   a n d   i n s t a l l s   i t  l     �� ��     Catalina method     �!!     C a t a l i n a   m e t h o d "#" l ��$����$ Z  ��%&����% l �'����' C  �()( o  ������ 0 oschoice osChoice) m  �** �++ > m a c O S   1 0 . 1 5   C a t a l i n a   a n d   b e f o r e��  ��  & k  �,, -.- O  /0/ I ��1��
�� .aevtodocnull  �    alis1 4  ��2
�� 
file2 m  33 �44 z M a c i n t o s h   H D : U s e r s : S h a r e d : e n r o l l m e n t P r o f i l e - S H C S . m o b i l e c o n f i g��  0 m  	55�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  . 676 l ��������  ��  ��  7 898 I ��:��
�� .sysodelanull��� ��� nmbr: m  ���� ��  9 ;<; l   ��������  ��  ��  < =>= O   P?@? O  &OABA O  1NCDC I <M��E��
�� .prcsclicnull��� ��� uielE n  <IFGF 4  BI��H
�� 
butTH m  EHII �JJ  C o n t i n u eG 4  <B��K
�� 
sheEK m  @A���� ��  D 4  19��L
�� 
cwinL m  58MM �NN  P r o f i l e sB 4  &.��O
�� 
pcapO m  *-PP �QQ $ S y s t e m   P r e f e r e n c e s@ m   #RR�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  > STS I QV��U��
�� .sysodelanull��� ��� nmbrU m  QR���� ��  T VWV O  W�XYX O  ]�Z[Z O  h�\]\ I s���^��
�� .prcsclicnull��� ��� uiel^ n  s�_`_ 4  y���a
�� 
butTa m  |bb �cc  I n s t a l l` 4  sy��d
�� 
sheEd m  wx���� ��  ] 4  hp��e
�� 
cwine m  loff �gg  P r o f i l e s[ 4  ]e��h
�� 
pcaph m  adii �jj $ S y s t e m   P r e f e r e n c e sY m  WZkk�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  W lml I ����n��
�� .sysodelanull��� ��� nmbrn m  ������ ��  m o��o O  ��pqp O  ��rsr O  ��tut I ����v��
�� .prcsclicnull��� ��� uielv n  ��wxw 4  ����y
�� 
butTy m  ��zz �{{  I n s t a l lx 4  ����|
�� 
sheE| m  ������ ��  u 4  ����}
�� 
cwin} m  ��~~ �  P r o f i l e ss 4  �����
�� 
pcap� m  ���� ��� $ S y s t e m   P r e f e r e n c e sq m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��  ��  # ��� l     ��������  ��  ��  � ��� l     ������  �  Big Sur method   � ���  B i g   S u r   m e t h o d� ��� l �������� Z  ��������� l �������� C  ����� o  ������ 0 oschoice osChoice� m  ���� ��� 8 m a c O S   1 1 . 0   B i g   S u r   a n d   l a t e r��  ��  � k  ���� ��� O  ����� I �������
�� .aevtodocnull  �    alis� 4  �����
�� 
file� o  ������ &0 mdmenrollmentfile mdmEnrollmentFile��  � m  �����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� O ����� I ��������
�� .miscactvnull��� ��� null��  ��  � m  �����                                                                                  sprf  alis    `  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  -/:System:Applications:System Preferences.app/   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  *System/Applications/System Preferences.app  / ��  � ��� l ����������  ��  ��  � ���� O  ����� O  ����� k  ���� ��� r  ���� n  �	��� 1  	��
�� 
pnam� 4  ����
�� 
cwin� m  ���� � o      ���� 0 currentwindow currentWindow� ��� I �����
�� .sysodelanull��� ��� nmbr� m  ���� ��  � ��� I ,�����
�� .prcsclicnull��� ��� uiel� n  (��� 4  !(���
�� 
butT� m  $'�� ���  P r o f i l e s� n  !��� 4  !���
�� 
scra� m   ���� � 4  ���
�� 
cwin� m  �� ��� $ S y s t e m   P r e f e r e n c e s��  � ��� I -2�����
�� .sysodelanull��� ��� nmbr� m  -.���� ��  � ��� l 33��������  ��  ��  � ���� O  3���� k  >��� ��� O  >���� X  G������ Z  d������� C  dv��� n  dr��� 1  nr�~
�~ 
valL� n  dn��� m  jn�}
�} 
sttx� n  dj��� 4  ej�|�
�| 
uiel� m  hi�{�{ � o  de�z�z 0 arow aRow� m  ru�� ���  M D M   P r o f i l e� k  y��� ��� I y~�y��x
�y .miscslctnull���     uiel� o  yz�w�w 0 arow aRow�x  � ��v� I ��u��t
�u .sysodelanull��� ��� nmbr� m  ��s�s �t  �v  ��  �  �� 0 arow aRow� n  JT��� m  PT�r
�r 
crow� 4  JP�q�
�q 
tabB� m  NO�p�p � 4  >D�o�
�o 
scra� m  BC�n�n � ��� I ���m��l
�m .prcsclicnull��� ��� uiel� n  ����� 4  ���k�
�k 
butT� m  ���� ���  I n s t a l l &� 4  ���j�
�j 
scra� m  ���i�i �l  � ��� I ���h��g
�h .sysodelanull��� ��� nmbr� m  ���f�f �g  � ��� I ���e��d
�e .prcsclicnull��� ��� uiel� n  ����� 4  ���c�
�c 
butT� m  ���� ���  I n s t a l l� 4  ���b�
�b 
sheE� m  ���a�a �d  � ��� I ���`��_
�` .sysodelanull��� ��� nmbr� m  ���^�^ �_  �  �]  I ���\�[
�\ .prcsclicnull��� ��� uiel n  �� 4  ���Z
�Z 
butT m  �� �  I n s t a l l 4  ���Y
�Y 
sheE m  ���X�X �[  �]  � 4  3;�W
�W 
cwin m  7:		 �

  P r o f i l e s��  � 4  ���V
�V 
pcap m  �� � $ S y s t e m   P r e f e r e n c e s� m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��  ��  �  l     �U�U   ? 9 This part inputs password information to approve profile    � r   T h i s   p a r t   i n p u t s   p a s s w o r d   i n f o r m a t i o n   t o   a p p r o v e   p r o f i l e �T l �@�S�R O  �@ k  �?  I ���Q�P
�Q .sysodelanull��� ��� nmbr m  �� ?�      �P    W  �  I � �O!�N
�O .sysodelanull��� ��� nmbr! m  ��"" ?�      �N    I ���M#�L
�M .coredoexnull���     ****# 4  ���K$
�K 
prcs$ m  ��%% �&&  S e c u r i t y A g e n t�L   '�J' O  ?()( k  >** +,+ Z  .-.�I�H- l /�G�F/ C  010 o  �E�E 0 adminoptions adminOptions1 m  22 �33 6 C u r r e n t   u s e r   i s   a   n o n - a d m i n�G  �F  . k  *44 565 I "�D7�C
�D .prcskprsnull���     ctxt7 o  �B�B 0 adminusername adminUsername�C  6 8�A8 I #*�@9�?
�@ .prcskcodnull���     ****9 m  #&�>�> 0�?  �A  �I  �H  , :;: I /6�=<�<
�= .prcskprsnull���     ctxt< o  /2�;�; 0 apppass appPass�<  ; =�:= I 7>�9>�8
�9 .prcskcodnull���     ****> m  7:�7�7 $�8  �:  ) 4  �6?
�6 
prcs? m  
@@ �AA  S e c u r i t y A g e n t�J   m  ��BB�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �S  �R  �T       �5CDEFGHIJKLMNO�4�3�2�1�5  C �0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!
�0 .aevtoappnull  �   � ****�/  0 programoptions programOptions�. $0 oldremovalstatus oldremovalStatus�- 0 	osoptions 	osOptions�, 0 oschoice osChoice�+ 0 adminoptions adminOptions�* 0 adminchoice adminChoice�) 0 apppass appPass�( 0 oldmdm oldMDM�' 0 newmdm newMDM�& &0 mdmenrollmentfile mdmEnrollmentFile�% 0 currentwindow currentWindow�$  �#  �"  �!  D � P��QR�
�  .aevtoappnull  �   � ****P k    @SS  TT  #UU  9VV  FWW  \XX  iYY  ZZ  �[[  �\\ ]] ^^ A__ Q`` "aa �bb ��  �  �  Q �� 0 arow aRowR �  !�� -� 0��� A D� P S� d g� s v� � �� � �� � ��� ����
�	 � �� � ���� � �� � � ��8#*-3H��Y`� �����������������z�������������������������������������������������*5��3��PMIifb���~z���	�����%@2�  0 programoptions programOptions
� 
appr
� 
prmp� 
� .gtqpchltns    @   @ ns  � $0 oldremovalstatus oldremovalStatus� 0 	osoptions 	osOptions� 0 oschoice osChoice� 0 adminoptions adminOptions� 0 adminchoice adminChoice� 0 adminusername adminUsername
� 
btns
� 
dflt
� 
dtxt
� 
disp� 
�
 .sysodlogaskr        TEXT
�	 
ttxt
� stic    
� 
htxt� � 0 apppass appPass� 0 oldmdm oldMDM� 0 newmdm newMDM
� .sysostdfalis    ��� null� &0 mdmenrollmentfile mdmEnrollmentFile
�  .miscactvnull��� ��� null
�� 
pcap
�� 
cwin
�� 
pnam�� 0 currentwindow currentWindow
�� .sysodelanull��� ��� nmbr
�� 
scra
�� 
butT
�� .prcsclicnull��� ��� uiel
�� 
tabB
�� 
crow
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
uiel
�� 
sttx
�� 
valL
�� .miscslctnull���     uiel
�� 
sgrp
�� 
sheE
�� 
prcs
�� .coredoexnull���     ****
�� .prcskprsnull���     ctxt�� 0
�� .prcskcodnull���     ****�� $�� 
�� .aevtquitnull��� ��� null
�� 
file
�� .aevtodocnull  �    alis�� �� �A��lvE�O������ E�O��lvE�O������ E�Oa a lvE` O_ �a �a � E` O_ a  Ha E` O :h_ a a a a a lva la a  a !ka " #a $,E` [OY��Y hOa %�a &a !a 'a a (a a )kva ka *ea + #a $,E` ,O�a - Ha .E` /O :h_ /a 0a 1a a 2a 3lva la a 4a !ka " #a $,E` /[OY��Y hOa 5E` 6O :h_ 6a 7a 8a a 9a :lva la a ;a !ka " #a $,E` 6[OY��O*�a <l =E` >O�a ?�a @ *j AUOa B �*a Ca D/ �*a Ek/a F,E` GOkj HO*a Ea I/a Jk/a Ka L/j MOlj HO*a Ea N/ R*a Jl/ H E*a Ok/a P,[a Qa Rl Skh  �a Tk/a U,a V,_ / �j WOkj HY h[OY��UUUUOa B *a Ca X/a Ea Y/a Zk/a Tl/j MUO�j HOa B !*a Ca [/a Ea \/a ]k/a Ta ^/j MUOa B aa _j HO h*a `a a/j ba _j H[OY��O*a `a c/ /_ a d _ j eOa fj gY hO_ ,j eOa hj gUUOa ij HOa @ *j jUOlj HY hO�a k �a l *a ma n/j oUOmj HOa B +*a Ca p/ *a Ea q/ *a ]k/a Ka r/j MUUUOmj HOa B +*a Ca s/ *a Ea t/ *a ]k/a Ka u/j MUUUOa vj HOa B +*a Ca w/ *a Ea x/ *a ]k/a Ka y/j MUUUY hO�a za l *a m_ >/j oUOa @ *j AUOa B �*a Ca {/ �*a Ek/a F,E` GOlj HO*a Ea |/a Jk/a Ka }/j MOlj HO*a Ea ~/ �*a Jl/ H E*a Ok/a P,[a Qa Rl Skh  �a Tk/a U,a V,a  �j WOkj HY h[OY��UO*a Jk/a Ka �/j MO�j HO*a ]k/a Ka �/j MOa �j HO*a ]k/a Ka �/j MUUUY hOa B aa �j HO h*a `a �/j ba �j H[OY��O*a `a �/ /_ a � _ j eOa fj gY hO_ ,j eOa hj gUUE ��c�� c    !F ��d�� d  ee �ff d R e m o v e   o l d   M D M   p r o f i l e   a n d   i n s t a l l   n e w   M D M   p r o f i l eG ��g�� g   A DH ��h�� h  ii �jj 8 m a c O S   1 1 . 0   B i g   S u r   a n d   l a t e rI ��k�� k   d gJ ��l�� l  mm �nn 0 C u r r e n t   u s e r   i s   a n   a d m i nK �oo $ w h a t a l i f e i t i s . 2 0 2 1L �pp  M D M   P r o f i l eM �qq  M D M   P r o f i l eN�alis    �   Macintosh HD                   BD ����enrollmentProfile-SHCS#FFFFFFFF                                ����            ����  J cu            \/:Users:bbenziger:ISG Nextcloud:Jamf Enrollment Profiles:enrollmentProfile-SHCS.mobileconfig  H # e n r o l l m e n t P r o f i l e - S H C S . m o b i l e c o n f i g    M a c i n t o s h   H D  ZUsers/bbenziger/ISG Nextcloud/Jamf Enrollment Profiles/enrollmentProfile-SHCS.mobileconfig  /    ��  O �rr $ S y s t e m   P r e f e r e n c e s�4  �3  �2  �1  ascr  ��ޭ