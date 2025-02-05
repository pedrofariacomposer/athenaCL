FasdUAS 1.101.10   ��   ��    k             l     �� ��      athenaCL.applescript       	  l     �� 
��   
  	 athenaCL    	     l     �� ��    $  Created by Christopher Ariza.         l     ������  ��        j     �� �� $0 athenacltoolpath athenaclToolPath  m         /usr/local/bin/athenacl         l         j    �� �� 0 
pythonpath 
pythonPath  m        /usr/bin/pythonw      used as default         l         j    �� �� 0 
csoundpath 
csoundPath  m        /usr/local/bin/csound       used as default in package        !   l      " # " j   	 �� $�� 0 	shellpath 	shellPath $ m   	 
 % %  /bin/sh    # A ; shell to use when passing command to terminal to start ath    !  & ' & l     �� (��   ( + % this is the same for all posix plats    '  ) * ) l      + , + j    �� -�� (0 terminalappearance terminalAppearance - m     . .  Custom    ,   either Custom or Default    *  / 0 / l     �� 1��   1 : 4 /usr/local/bin is created by setup script if needed    0  2 3 2 l      4 5 4 j    �� 6�� 0 termsetuprow termSetupRow 6 m    ���� 
 5 "  terminal config information    3  7 8 7 j    �� 9�� 0 termsetupcol termSetupCol 9 m    ���� P 8  : ; : j    �� <��  0 termsetuptitle termSetupTitle < m     = =  athenaCL setup    ;  > ? > j    �� @�� 0 termlaunchrow termLaunchRow @ m    ���� 2 ?  A B A j    !�� C�� 0 termlaunchcol termLaunchCol C m     ���� d B  D E D j   " &�� F�� "0 termlaunchtitle termLaunchTitle F m   " % G G  athenaCL    E  H I H j   ' +�� J�� 0 direrror dirError J m   ' * K K 1 +This is not the athenaCL folder. Try again.    I  L M L j   , 0�� N�� 0 loadererror loaderError N m   , / O O b \Before athenaCL can be launched, setup must be run. Select the "Setup" button and try again.    M  P Q P j   1 5�� R�� 0 csounderror csoundError R m   1 4 S S ; 5There is already a csound in this location. Continue?    Q  T U T l     ������  ��   U  V W V l     �� X��   X W Q ################################################################################    W  Y Z Y l     �� [��   [ W Q ################################################################################    Z  \ ] \ l     ������  ��   ]  ^ _ ^ l     �� `��   `   #### subroutines    _  a b a l     �� c��   c 2 , #### test if a file exists by couting lines    b  d e d i   6 9 f g f I      �� h���� "0 checkextantfile checkExtantFile h  i�� i o      ���� 0 testpath testPath��  ��   g k     $ j j  k l k Q      m n o m r     p q p I   
�� r��
�� .sysoexecTEXT���     TEXT r b     s t s m     u u  wc -l     t o    ���� 0 testpath testPath��   q o      ���� 0 dummystr dummyStr n R      ������
�� .ascrerr ****      � ****��  ��   o l    v w v L     x x m    ����   w   doesnt exist    l  y�� y Z    $ z {�� | z >    } ~ } o    ���� 0 dummystr dummyStr ~ m             { L     � � m    ���� ��   | L   " $ � � m   " #����  ��   e  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � 0 * #### see if path is to athenaCL directory    �  � � � l     �� ���   � C = if setup.py exists, assume this is teh toplevel athenaCL dir    �  � � � i   : = � � � I      �� ����� 0 checkathdir checkAthDir �  ��� � o      ���� 0 
pathstring 
pathString��  ��   � k     6 � �  � � � Z     3 � � � � � D      � � � o     ���� 0 
pathstring 
pathString � m     � �  athenaCL    � k     � �  � � � r     � � � b    	 � � � o    ���� 0 
pathstring 
pathString � m     � �  	/setup.py    � o      ���� 0 testpath testPath �  � � � l    � � � r     � � � I    �� ����� "0 checkextantfile checkExtantFile �  ��� � o    ���� 0 testpath testPath��  ��   � o      ���� 0 	resultnum 	resultNum � , & return 1 if file exists, 0, otherwise    �  ��� � l   �� ���   � 5 / dir may be specified with .. folowing the .app   ��   �  � � � D     � � � o    ���� 0 
pathstring 
pathString � m     � �  athenaCL.app/..    �  ��� � k    - � �  � � � r    $ � � � b    " � � � o     ���� 0 
pathstring 
pathString � m     ! � �  	/setup.py    � o      ���� 0 testpath testPath �  ��� � l  % - � � � r   % - � � � I   % +�� ����� "0 checkextantfile checkExtantFile �  ��� � o   & '���� 0 testpath testPath��  ��   � o      ���� 0 	resultnum 	resultNum � , & return 1 if file exists, 0, otherwise   ��  ��   � r   0 3 � � � m   0 1����   � o      ���� 0 	resultnum 	resultNum �  ��� � L   4 6 � � o   4 5���� 0 	resultnum 	resultNum��   �  � � � l     ������  ��   �  � � � l     �� ���   � 0 *### checks to see if the loader is present    �  � � � i   > A � � � I      �������� $0 checkathshloader checkAthShLoader��  ��   � k      � �  � � � l     � � � r      � � � I     
�� ����� "0 checkextantfile checkExtantFile �  ��� � o    ���� $0 athenacltoolpath athenaclToolPath��  ��   � o      ���� 0 	resultnum 	resultNum � , & return 1 if file exists, 0, otherwise    �  ��� � L     � � o    ���� 0 	resultnum 	resultNum��   �  � � � l     ������  ��   �  � � � l     �� ���   � 0 *### checks if python is working and extant    �  � � � i   B E � � � I      �� ����� 0 checkpython checkPython �  ��� � o      ���� 0 pypath pyPath��  ��   � k     * � �  � � � Q      � � � � l    � � � k     � �  � � � r     � � � I   
�� ���
�� .sysoexecTEXT���     TEXT � b     � � � o    ���� 0 pypath pyPath � m     � �   -c "print 1"   ��   � o      ����  0 testversionstr testVersionStr �  ��� � r     � � � c     � � � o    ����  0 testversionstr testVersionStr � m    ��
�� 
TEXT � o      ����  0 testversionstr testVersionStr��   � ) # call python with a trivial command    � R      ������
�� .ascrerr ****      � ****��  ��   � L     � � m    ����   �  ��� � Z    * � ���  � C      o    ����  0 testversionstr testVersionStr m      1    � L   # % m   # $���� ��    L   ( * m   ( )����  ��   �  l     ������  ��   	 l     ��
��  
 + %### gives an error about a bad python   	  i   F I I      ������ 0 msgbadpython msgBadPython �� o      �� 0 pypath pyPath��  ��   k       l     �~�~   7 1 call python from cmd line and get verison number     r      b      b      m       There is no Python at     o    �}�} 0 pypath pyPath m     � �. Please select a different Python, or install MacPython 2.3 for MacOS X, available for download by clicking "Get Python" below.    o      �|�| 0 msgstr msgStr �{ I   �z �y
�z .panSdlognull���    obj   o    	�x�x 0 msgstr msgStr�y  �{   !"! l     �w�v�w  �v  " #$# l     �u�t�u  �t  $ %&% l     �s'�s  '   ### gets file paths   & ()( i   J M*+* I      �r�q�p�r 0 
findathdir 
findAthDir�q  �p  + k     2,, -.- l     �o/�o  / * $	set theUnixPath to "/Users/Shared/"   . 010 l     �n2�n  2 ( "(POSIX file theUnixPath) as string   1 343 l     �m5�m  5 $ > "Macintosh HD:Users:Shared:"   4 676 l     �l�k�l  �k  7 898 l     �j:�j  : 7 1set theMacOSXPath to "Macintosh HD:Users:Shared:"   9 ;<; l     �i=�i  = ! POSIX path of theMacOSXPath   < >?> l     �h@�h  @  > "/Users/Shared/"   ? ABA l     �g�f�g  �f  B CDC l     �eE�e  E ( " this gets athenaCL.app parent dir   D FGF r     HIH c     	JKJ l    L�dL I    �cMN
�c .earsffdralis        afdrM  f     N �bO�a
�b 
fromO m    �`
�` fldmfldu�a  �d  K m    �_
�_ 
ctxtI o      �^�^ 0 apppath appPathG PQP r    RSR n    TUT 1    �]
�] 
psxpU o    �\�\ 0 apppath appPathS o      �[�[ 0 
scriptpath 
scriptPathQ VWV Z    /XYZ�ZX D    [\[ o    �Y�Y 0 
scriptpath 
scriptPath\ m    ]]  athenaCL.app   Y l   ^_^ r    `a` b    bcb o    �X�X 0 
scriptpath 
scriptPathc m    dd 	 /..   a o      �W�W 0 
scriptpath 
scriptPath_   as it should   Z efe D     #ghg o     !�V�V 0 
scriptpath 
scriptPathh m   ! "ii  athenaCL.app/   f j�Uj r   & +klk b   & )mnm o   & '�T�T 0 
scriptpath 
scriptPathn m   ' (oo  ..   l o      �S�S 0 
scriptpath 
scriptPath�U  �Z  W p�Rp L   0 2qq o   0 1�Q�Q 0 
scriptpath 
scriptPath�R  ) rsr l     �P�O�P  �O  s tut l     �Nv�N  v 5 / #### open a terminal window and call a command   u wxw l     �My�M  y : 4 #### uses standard settings, changes size and title   x z{z i   N Q|}| I      �L~�K�L 0 terminalcmd terminalCmd~ � o      �J�J 0 cmd  � ��� o      �I�I 0 wintitle winTitle� ��� o      �H�H 0 winrow winRow� ��G� o      �F�F 0 wincol winCol�G  �K  } O     2��� k    1�� ��� I   	�E�D�C
�E .miscactvnull��� ��� null�D  �C  � ��� I  
 �B�A�
�B .coredoscnull        TEXT�A  � �@��?
�@ 
cmnd� o    �>�> 0 cmd  �?  � ��=� O    1��� k    0�� ��� r    ��� o    �<�< 0 winrow winRow� 1    �;
�; 
crow� ��� r    $��� o     �:�: 0 wincol winCol� 1     #�9
�9 
ccol� ��� r   % *��� m   % &�8
�8 boovtrue� 1   & )�7
�7 
tdct� ��6� r   + 0��� o   + ,�5�5 0 wintitle winTitle� 1   , /�4
�4 
titl�6  � 4    �3�
�3 
cwin� m    �2�2 �=  � m     ���null     ߀��  <Terminal.appe for download by clicking [���0����[d�b^ؿ�� ��trmx   alis    d  
pythagoras                 ��T%H+    <Terminal.app                                                     
!�.�W        ����  	                	Utilities     ���u      �.�      <  ;  .pythagoras:Applications:Utilities:Terminal.app    T e r m i n a l . a p p   
 p y t h a g o r a s  #Applications/Utilities/Terminal.app   / ��  { ��� l     �1�0�1  �0  � ��� l     �/��/  � 0 * let user manually select the athenaCL dir   � ��� i   R U��� I      �.��-�. (0 manualselectathdir manualSelectAthDir� ��,� o      �+�+ 0 	startpath 	startPath�,  �-  � k     ��� ��� l     �*��*  � ) # script path used as init directory   � ��� l     �)��)  � - ' returns a list of theResult, pathNames   � ��� l    ��� r     ��� o     �(�( 0 	startpath 	startPath� o      �'�' 0 panelinitdir panelInitDir� 
  "~"   � ��� O    .��� k   
 -�� ��� l  
 
�&��&  �   panal data   � ��� r   
 ��� m   
 ��   Select the athenaCL folder   � 1    �%
�% 
titl� ��� r    ��� m    ��  Select   � 1    �$
�$ 
proO� ��� r    ��� m    �#�#  � 1    �"
�" 
tPAD� ��� r    !��� m    �!�! � 1     � 
�  
caCD� ��� r   " '��� m   " #��  � 1   # &�
� 
caCF� ��� r   ( -��� m   ( )��  � 1   ) ,�
� 
alMT�  � 1    �
� 
opeP� ��� l  / /���  �   open panel and get dir   � ��� r   / :��� I  / 8���
� .panSdisPnull���    obj � 1   / 2�
� 
opeP� ���
� 
in D� o   3 4�� 0 panelinitdir panelInitDir�  � o      �� 0 	theresult 	theResult� ��� l  ; ;���  � $  convert dir to correct format   � ��� Z   ; ������ =  ; >��� o   ; <�� 0 	theresult 	theResult� m   < =�� � l  A ���� k   A ��� ��� l  A A���  � O I For some unknown (as of yet) you must coerce the 'path names' to a list    � ��� r   A J��� l  A H��� c   A H��� n   A F��� 1   D F�
� 
filO� 1   A D�
� 
opeP� m   F G�

�
 
list�  � l      �	  o      �� 0 	pathnames 	pathNames�	  �  l  K K��   N H Convert the list into a list of strings separated by return characters      r   K P o   K L�
� 
ret  n     	 1   M O�
� 
txdl	 1   L M�
� 
ascr 

 r   Q X c   Q V o   Q R�� 0 	pathnames 	pathNames m   R U�
� 
TEXT l     � o      � �  0 	pathnames 	pathNames�    r   Y ` m   Y \       n      1   ] _��
�� 
txdl 1   \ ]��
�� 
ascr  l  a a����      check if dir is right dir     r   a i I   a g������ 0 checkathdir checkAthDir  ��  o   b c���� 0 	pathnames 	pathNames��  ��   o      ���� 0 foundath foundAth !��! Z   j �"#����" >  j m$%$ o   j k���� 0 foundath foundAth% m   k l���� # k   p }&& '(' l  p s)*) r   p s+,+ m   p q����  , o      ���� 0 	theresult 	theResult* / ) this stops the setup script from running   ( -��- I  t }��.��
�� .panSdlognull���    obj . o   t y���� 0 direrror dirError��  ��  ��  ��  ��  �   the user selected a dir   �  � l  � �/0/ l  � �121 r   � �343 m   � �55      4 o      ���� 0 	pathnames 	pathNames2   not used if empty   0   no path gotten from user   � 6��6 L   � �77 J   � �88 9:9 o   � ����� 0 	theresult 	theResult: ;��; o   � ����� 0 	pathnames 	pathNames��  ��  � <=< l     ������  ��  = >?> l     ��@��  @ W Q ################################################################################   ? ABA l     ��C��  C W Q ################################################################################   B DED l     ������  ��  E FGF l     ��H��  H   #### main commands   G IJI l     ��K��  K R L #### install csound lcoated in athenaCL.app/Contents/Rsources/csoundCLI.dmg   J LML l     ��N��  N 5 / this is no longer desirable, simply use a link   M OPO l     ��Q��  Q   on installCsound()   P RSR l     ��T��  T 5 / 	set testExtant to checkExtantFile(csoundPath)   S UVU l     ��W��  W 9 3 	if testExtant is equal to 1 then -- if does exist   V XYX l     ��Z��  Z S M 		display dialog csoundError -- a cancel selection will fall out of function   Y [\[ l     ��]��  ]   	end if   \ ^_^ l     ��`��  ` B < 	set testExtant to 0 -- this will overwrite existing csound   _ aba l     ��c��  c C = 	if testExtant is equal to 0 then -- does not exist, install   b ded l     ��f��  f ' ! 		set scriptPath to findAthDir()   e ghg l     ��i��  i [ U 		set csoundDmgPath to scriptPath & "/athenaCL.app/Contents/Resources/csoundCLI.dmg"   h jkj l     ��l��  l 4 . 		-- display dialog csoundPath --debug window   k mnm l     ��o��  o Q K 		do shell script "hdiutil attach " & csoundDmgPath -- load the disk image   n pqp l     ��r��  r ] W 		do shell script "sleep 2; open /Volumes/csoundCLI/csoundCLI.pkg" -- launch installer   q sts l     ��u��  u   	end if   t vwv l     ��x��  x   end installCsound   w yzy l     ������  ��  z {|{ l     ������  ��  | }~} l     ����     #### setup script   ~ ��� i   V Y��� I      �������� 0 setupath setupAth��  ��  � k     ��� ��� r     ��� I     �������� 0 
findathdir 
findAthDir��  ��  � o      ���� 0 
scriptpath 
scriptPath� ��� r    ��� I    ������� 0 checkathdir checkAthDir� ���� o   	 
���� 0 
scriptpath 
scriptPath��  ��  � o      ���� 0 autofounddir autoFoundDir� ��� l   ������  ��  � ��� r    ��� I    ������� 0 checkpython checkPython� ���� o    ���� 0 
pythonpath 
pythonPath��  ��  � o      ���� 0 pystats pyStats� ��� Z    6������� =   !��� o    ���� 0 pystats pyStats� m     ����  � k   $ 2�� ��� l  $ .��� I   $ .������� 0 msgbadpython msgBadPython� ���� o   % *���� 0 
pythonpath 
pythonPath��  ��  �   display error message   � ���� l  / 2��� r   / 2��� m   / 0������� o      ���� 0 autofounddir autoFoundDir� 9 3 this overrides the ath dir finding and quits setup   ��  ��  ��  � ��� l  7 7������  ��  � ��� Z   7 i����� =  7 :��� o   7 8���� 0 autofounddir autoFoundDir� m   8 9������� l  = @��� l  = @��� r   = @��� m   = >����  � o      ���� 0 	theresult 	theResult� / ) this stops the setup script from running   �   need to abort completely   � ��� =  C F��� o   C D���� 0 autofounddir autoFoundDir� m   D E����  � ���� l  I _��� k   I _�� ��� l  I I�����  � ) # script path used as init directory   � ��� l  I I�����  � - ' returns a list of theResult, pathNames   � ��� r   I Q��� I   I O������� (0 manualselectathdir manualSelectAthDir� ���� o   J K���� 0 
scriptpath 
scriptPath��  ��  � o      ���� 0 datalist dataList� ��� r   R X��� n  R V��� 4  S V���
�� 
cobj� m   T U���� � o   R S���� 0 datalist dataList� o      ���� 0 	theresult 	theResult� ���� r   Y _��� n  Y ]��� 4  Z ]���
�� 
cobj� m   [ \���� � o   Y Z���� 0 datalist dataList� o      ���� 0 	pathnames 	pathNames��  �   get dir from user   ��  � k   b i�� ��� l  b e��� r   b e��� m   b c���� � o      ���� 0 	theresult 	theResult�   already have dir   � ���� r   f i��� o   f g���� 0 
scriptpath 
scriptPath� o      ���� 0 	pathnames 	pathNames��  � ��� l  j j������  ��  � ���� Z   j �������� =  j m��� o   j k���� 0 	theresult 	theResult� m   k l���� � l  p ���� k   p ��� ��� r   p ��� l  p }���� b   p }��� b   p {��� b   p u��� b   p s��� m   p q�� 	 cd    � o   q r���� 0 	pathnames 	pathNames� m   s t��  ;    � o   u z���� 0 
pythonpath 
pythonPath� m   { |�� #  setup.py tool; sleep 4; exit   ��  � o      ���� 0 setupscript setupScript� ���� I   � �������� 0 terminalcmd terminalCmd�    o   � ����� 0 setupscript setupScript  o   � �����  0 termsetuptitle termSetupTitle  o   � ��� 0 termsetuprow termSetupRow �~ o   � ��}�} 0 termsetupcol termSetupCol�~  ��  ��  � 5 / run the setup script, only if ath dir is found   ��  ��  ��  �  l     �|�{�|  �{   	
	 l     �z�z   !  #### launcher for athenacl   
  i   Z ] I      �y�x�y 0 	launchath 	launchAth �w o      �v�v  0 usestartupargs useStartupArgs�w  �x   k     -  r      l    �u b      b      b      b      b      !  o     �t�t 0 	shellpath 	shellPath! m    ""       o    �s�s $0 athenacltoolpath athenaclToolPath m    ##       o    �r�r  0 usestartupargs useStartupArgs m    $$  ; exit   �u   o      �q�q 0 launchscript launchScript %&% I    +�p'�o�p 0 terminalcmd terminalCmd' ()( o    �n�n 0 launchscript launchScript) *+* o    �m�m "0 termlaunchtitle termLaunchTitle+ ,-, o    "�l�l 0 termlaunchrow termLaunchRow- .�k. o   " '�j�j 0 termlaunchcol termLaunchCol�k  �o  & /�i/ l  , ,�h0�h  0 D > use the custom athenacl.term -- will NOT be able to pass args   �i   121 l     �g�f�g  �f  2 343 l     �e�d�e  �d  4 565 l     �c�b�c  �b  6 787 l     �a9�a  9 W Q ################################################################################   8 :;: l     �`<�`  < W Q ################################################################################   ; =>= l     �_�^�_  �^  > ?@? l     �]A�]  A   #### main events   @ BCB l     �\D�\  D %  #### when an object is clicked   C EFE i   ^ aGHG I     �[I�Z
�[ .coVScliInull���    obj I o      �Y�Y 0 	theobject 	theObject�Z  H k     pJJ KLK O     MNM k    OO PQP l   �XR�X  R K E set useTermDefault to contents of button "useTermDefault" as boolean   Q STS l   �WU�W  U %  in gui turn off event handlers   T V�VV r    WXW c    YZY n    [\[ 1   
 �U
�U 
pcnt\ 4    
�T]
�T 
texF] m    	^^  textEntryArgs   Z m    �S
�S 
TEXTX o      �R�R  0 usestartupargs useStartupArgs�V  N n     _`_ m    �Q
�Q 
cwin` o     �P�P 0 	theobject 	theObjectL a�Oa Z    pbcd�Nb =   efe l   g�Mg n    hih 1    �L
�L 
pnami l   j�Kj o    �J�J 0 	theobject 	theObject�K  �M  f m    kk  buttonSetup   c l   lml I    �I�H�G�I 0 setupath setupAth�H  �G  m   setup script   d non =  " 'pqp n   " %rsr 1   # %�F
�F 
pnams l  " #t�Et o   " #�D�D 0 	theobject 	theObject�E  q m   % &uu  buttonStart   o vwv l  * Jxyx k   * Jzz {|{ l  * *�C}�C  } : 4 check to see if there is a loader in /usr/local/bin   | ~~ r   * 1��� I   * /�B�A�@�B $0 checkathshloader checkAthShLoader�A  �@  � o      �?�? 0 foundloader foundLoader ��>� Z   2 J���=�� >  2 5��� o   2 3�<�< 0 foundloader foundLoader� m   3 4�;�; � l  8 A��� I  8 A�:��9
�: .panSdlognull���    obj � o   8 =�8�8 0 loadererror loaderError�9  �  
 not found   �=  � I   D J�7��6�7 0 	launchath 	launchAth� ��5� o   E F�4�4  0 usestartupargs useStartupArgs�5  �6  �>  y   startup script   w ��� =  M R��� n   M P��� 1   N P�3
�3 
pnam� l  M N��2� o   M N�1�1 0 	theobject 	theObject�2  � m   P Q��  buttonInstallCsound   � ��� l  U Z��� k   U Z�� ��� l  U U�0��0  �   installCsound()   � ��/� I  U Z�.��-
�. .GURLGURLnull��� ��� TEXT� m   U V�� A ;http://sourceforge.net/project/showfiles.php?group_id=81968   �-  �/  �   csound installer   � ��� =  ] b��� n   ] `��� 1   ^ `�,
�, 
pnam� l  ] ^��+� o   ] ^�*�* 0 	theobject 	theObject�+  � m   ` a��  buttonInstallPython   � ��)� I  e l�(��'
�( .GURLGURLnull��� ��� TEXT� m   e h�� % http://www.python.org/download/   �'  �)  �N  �O  F ��� l     �&�%�&  �%  � ��� l     �$��$  �   #### menu items   � ��� i   b e��� I     �#��"
�# .menSchMInull���    obj � o      �!�! 0 	theobject 	theObject�"  � Z     :���� � =    ��� n     ��� 1    �
� 
pnam� l    ��� o     �� 0 	theobject 	theObject�  � m    ��  menuWebsiteAthena   � I   ���
� .GURLGURLnull��� ��� TEXT� m    	��  http://www.athenacl.org   �  � ��� =   ��� n    ��� 1    �
� 
pnam� l   ��� o    �� 0 	theobject 	theObject�  � m    ��  menuHelp   � ��� I   ���
� .GURLGURLnull��� ��� TEXT� m    �� ) #http://www.flexatone.net/athenaDocs   �  � ��� =    %��� n     #��� 1   ! #�
� 
pnam� l    !��� o     !�� 0 	theobject 	theObject�  � m   # $��  pythonSelector   � ��� r   ( 6��� n   ( 0��� 1   . 0�
� 
titl� n   ( .��� 4   + .��
� 
popB� m   , -��  pythonSelector   � l  ( +��� n   ( +��� m   ) +�
� 
cwin� o   ( )�� 0 	theobject 	theObject�  � o      �� 0 
pythonpath 
pythonPath�  �   � ��� l     ��
�  �
  � ��� i   f i��� I     �	��
�	 .menSupMInull���    obj � o      �� 0 	theobject 	theObject�  � k     �� ��� l     ���  � Q K Called periodically when the state of a menu item may need to be updated.    � ��� l     ���  � T N The handler should return true to enable the menu item or false to disable it   � ��� L     �� m     �
� boovtrue�  � ��� l     ���  �  � ��� l     � ��   � W Q ################################################################################   � ��� l     �����  � W Q ################################################################################   � ��� l     �����  �   unused events   � ��� l     ������  ��  � ��� i   j m� � I     ����
�� .coVSactTnull���    obj  o      ���� 0 	theobject 	theObject��    l      ����    Add your script here.   �  l     ������  ��    i   n q I     ��	��
�� .appScloOnull���    obj 	 o      ���� 0 	theobject 	theObject��   l      ��
��  
  Add your script here.     l     ������  ��    i   r u I     ����
�� .appSshoCnull���    obj  o      ���� 0 	theobject 	theObject��   l      ����    Add your script here.     l     ������  ��    i   v y I     ����
�� .appSwilOnull���    obj  o      ���� 0 	theobject 	theObject��   l      ����    Add your script here.     l     ������  ��    i   z }  I     ��!��
�� .appSopeEnull���    obj ! o      ���� 0 	theobject 	theObject��    l      ��"��  "  Add your script here.    #$# l     ������  ��  $ %&% i   ~ �'(' I     ��)*
�� .appSwilRnull���    obj ) o      ���� 0 	theobject 	theObject* ��+��
�� 
proS+ o      ���� 0 proposedsize proposedSize��  ( l      ��,��  ,  Add your script here.   & -.- l     ������  ��  . /0/ i   � �121 I     ��3��
�� .appSwilCnull���    obj 3 o      ���� 0 	theobject 	theObject��  2 l      ��4��  4  Add your script here.   0 565 l     ������  ��  6 787 i   � �9:9 I     ��;��
�� .appSshoOnull���    obj ; o      ���� 0 	theobject 	theObject��  : l      ��<��  <  Add your script here.   8 =>= l     ������  ��  > ?@? i   � �ABA I     ��C��
�� .appSawFNnull���    obj C o      ���� 0 	theobject 	theObject��  B l      ��D��  D  Add your script here.   @ EFE l     ������  ��  F GHG l     ������  ��  H IJI l     ������  ��  J K��K j   � ���L�� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifierL m   � �MM  athenaCL.applescript   ��       '��N    % .���� =���� G K O SOPQRSTUVWXYZ[\]^_`abcdM��  N %���������������������������������������������������������������������������� $0 athenacltoolpath athenaclToolPath�� 0 
pythonpath 
pythonPath�� 0 
csoundpath 
csoundPath�� 0 	shellpath 	shellPath�� (0 terminalappearance terminalAppearance�� 0 termsetuprow termSetupRow�� 0 termsetupcol termSetupCol��  0 termsetuptitle termSetupTitle�� 0 termlaunchrow termLaunchRow�� 0 termlaunchcol termLaunchCol�� "0 termlaunchtitle termLaunchTitle�� 0 direrror dirError�� 0 loadererror loaderError�� 0 csounderror csoundError�� "0 checkextantfile checkExtantFile�� 0 checkathdir checkAthDir�� $0 checkathshloader checkAthShLoader�� 0 checkpython checkPython�� 0 msgbadpython msgBadPython�� 0 
findathdir 
findAthDir�� 0 terminalcmd terminalCmd�� (0 manualselectathdir manualSelectAthDir�� 0 setupath setupAth�� 0 	launchath 	launchAth
�� .coVScliInull���    obj 
�� .menSchMInull���    obj 
�� .menSupMInull���    obj 
�� .coVSactTnull���    obj 
�� .appScloOnull���    obj 
�� .appSshoCnull���    obj 
�� .appSwilOnull���    obj 
�� .appSopeEnull���    obj 
�� .appSwilRnull���    obj 
�� .appSwilCnull���    obj 
�� .appSshoOnull���    obj 
�� .appSawFNnull���    obj �� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier�� 
�� P�� 2�� dO �� g����ef���� "0 checkextantfile checkExtantFile�� ��g�� g  ���� 0 testpath testPath��  e ������ 0 testpath testPath�� 0 dummystr dummyStrf  u������ 
�� .sysoexecTEXT���     TEXT��  ��  �� % �%j E�W 	X  jO�� kY jP �� �����hi���� 0 checkathdir checkAthDir�� ��j�� j  ���� 0 
pathstring 
pathString��  h �������� 0 
pathstring 
pathString�� 0 testpath testPath�� 0 	resultnum 	resultNumi  � �� � �� "0 checkextantfile checkExtantFile�� 7�� ��%E�O*�k+ E�OPY �� ��%E�O*�k+ E�Y jE�O�Q �~ ��}�|kl�{�~ $0 checkathshloader checkAthShLoader�}  �|  k �z�z 0 	resultnum 	resultNuml �y�y "0 checkextantfile checkExtantFile�{ *b   k+  E�O�R �x ��w�vmn�u�x 0 checkpython checkPython�w �to�t o  �s�s 0 pypath pyPath�v  m �r�q�r 0 pypath pyPath�q  0 testversionstr testVersionStrn  ��p�o�n�m
�p .sysoexecTEXT���     TEXT
�o 
TEXT�n  �m  �u + ��%j E�O��&E�W 	X  jO�� kY jS �l�k�jpq�i�l 0 msgbadpython msgBadPython�k �hr�h r  �g�g 0 pypath pyPath�j  p �f�e�f 0 pypath pyPath�e 0 msgstr msgStrq �d
�d .panSdlognull���    obj �i �%�%E�O�j T �c+�b�ast�`�c 0 
findathdir 
findAthDir�b  �a  s �_�^�_ 0 apppath appPath�^ 0 
scriptpath 
scriptPatht 	�]�\�[�Z�Y]dio
�] 
from
�\ fldmfldu
�[ .earsffdralis        afdr
�Z 
ctxt
�Y 
psxp�` 3)��l �&E�O��,E�O�� 
��%E�Y �� 
��%E�Y hO�U �X}�W�Vuv�U�X 0 terminalcmd terminalCmd�W �Tw�T w  �S�R�Q�P�S 0 cmd  �R 0 wintitle winTitle�Q 0 winrow winRow�P 0 wincol winCol�V  u �O�N�M�L�O 0 cmd  �N 0 wintitle winTitle�M 0 winrow winRow�L 0 wincol winColv 	��K�J�I�H�G�F�E�D
�K .miscactvnull��� ��� null
�J 
cmnd
�I .coredoscnull        TEXT
�H 
cwin
�G 
crow
�F 
ccol
�E 
tdct
�D 
titl�U 3� /*j O*�l O*�k/ �*�,FO�*�,FOe*�,FO�*�,FUUV �C��B�Axy�@�C (0 manualselectathdir manualSelectAthDir�B �?z�? z  �>�> 0 	startpath 	startPath�A  x �=�<�;�:�9�= 0 	startpath 	startPath�< 0 panelinitdir panelInitDir�; 0 	theresult 	theResult�: 0 	pathnames 	pathNames�9 0 foundath foundAthy �8��7��6�5�4�3�2�1�0�/�.�-�,�+�*�)�(5
�8 
opeP
�7 
titl
�6 
proO
�5 
tPAD
�4 
caCD
�3 
caCF
�2 
alMT
�1 
in D
�0 .panSdisPnull���    obj 
�/ 
filO
�. 
list
�- 
ret 
�, 
ascr
�+ 
txdl
�* 
TEXT�) 0 checkathdir checkAthDir
�( .panSdlognull���    obj �@ ��E�O*�, %�*�,FO�*�,FOj*�,FOk*�,FOj*�,FOj*�,FUO*�,�l 
E�O�k  E*�,�,�&E�O���,FO�a &E�Oa ��,FO*�k+ E�O�k jE�Ob  j Y hY a E�O��lvW �'��&�%{|�$�' 0 setupath setupAth�&  �%  { �#�"�!� ����# 0 
scriptpath 
scriptPath�" 0 autofounddir autoFoundDir�! 0 pystats pyStats�  0 	theresult 	theResult� 0 datalist dataList� 0 	pathnames 	pathNames� 0 setupscript setupScript| ������������ 0 
findathdir 
findAthDir� 0 checkathdir checkAthDir� 0 checkpython checkPython� 0 msgbadpython msgBadPython� (0 manualselectathdir manualSelectAthDir
� 
cobj� � 0 terminalcmd terminalCmd�$ �*j+  E�O*�k+ E�O*b  k+ E�O�j  *b  k+ OiE�Y hO�i  jE�Y (�j  *�k+ E�O��k/E�O��l/E�Y 	kE�O�E�O�k  *�%�%b  %�%E�O*�b  b  b  �+ 
Y hX ���}~�� 0 	launchath 	launchAth� ��   ��  0 usestartupargs useStartupArgs�  } ���  0 usestartupargs useStartupArgs� 0 launchscript launchScript~ "#$��� � 0 terminalcmd terminalCmd� .b  �%b   %�%�%�%E�O*�b  
b  b  	�+ OPY �
H�	����
�
 .coVScliInull���    obj �	 0 	theobject 	theObject�  � ���� 0 	theobject 	theObject�  0 usestartupargs useStartupArgs� 0 foundloader foundLoader� ��^�� ��k��u������������
� 
cwin
� 
texF
� 
pcnt
�  
TEXT
�� 
pnam�� 0 setupath setupAth�� $0 checkathshloader checkAthShLoader
�� .panSdlognull���    obj �� 0 	launchath 	launchAth
�� .GURLGURLnull��� ��� TEXT� q��, *��/�,�&E�UO��,�  
*j+ Y P��,�  %*j+ 	E�O�k b  j 
Y *�k+ Y %��,�  
�j Y ��,�  a j Y hZ �����������
�� .menSchMInull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� ����������������
�� 
pnam
�� .GURLGURLnull��� ��� TEXT
�� 
cwin
�� 
popB
�� 
titl�� ;��,�  
�j Y ,��,�  
�j Y ��,�  ��,��/�,Ec  Y h[ �����������
�� .menSupMInull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� e\ �� ��������
�� .coVSactTnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� h] ����������
�� .appScloOnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� h^ ����������
�� .appSshoCnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� h_ ����������
�� .appSwilOnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� h` �� ��������
�� .appSopeEnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� ha ��(��������
�� .appSwilRnull���    obj �� 0 	theobject 	theObject�� ������
�� 
proS�� 0 proposedsize proposedSize��  � ������ 0 	theobject 	theObject�� 0 proposedsize proposedSize�  �� hb ��2��������
�� .appSwilCnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� hc ��:��������
�� .appSshoOnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� hd ��B��������
�� .appSawFNnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  �� h ascr  ��ޭ