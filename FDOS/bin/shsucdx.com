�7SHSUCDX by Jason Hood <jadoxa@yahoo.com.au>. | Derived from v1.4b by
Version 3.05 (11 February, 2011).  Freeware. | John H. McCoy, October 2000,
http://shsucdx.adoxa.cjb.net/                | Sam Houston State University.
 �?�CD`E�I`K�L`M�Q�R`S�U�V�~a�Unknown option: '?'.
 /D: invalid drive letter.
 /D: expecting unit number (0-99).
 /D: expecting maximum units (1-9).
 /L: expecting value.
 /L: must follow /D.
 /L: invalid drive letter.
 /L: only two digits allowed.
 �>� �  )��� ��St�  ��L�!! �����                                          �                                     �          �                        	 �				U	��}	���	�	�	�	�	H
���Uo��O!�.���U��~��u�F������u���.���9 ��]π�t
��t�    <#t�< t���L{[y�\ U��n�.6�&8�:��6��PQRSPUVWPP�N ��FXX_^]X[ZYX�&6�:�.8�f��]u� �Mx���L��VWQ���� y���&�Y_^��F��u<w1� ���v���X���8�_wu��W��4��n ��V �X�Nð��������������^&�,A�&�E$?�f <r�Xt�P�FUVW�f��V�&8��*P� 1�1���/�&,_^]�N<u��*뼑�! u��^�á����A�8Gt��9���^�*�SVW�����u<�= +G=� rS�f�[�Nft�G���u�O���u� �	 �G0�_^[�1��ءlÍw��|�-�}9�u���}CDu�}00t�}	CDu{�}ROutI��� �}0���� �}(�O�M*�E(x����GVW���^W�_^�F/sE�t?�< � ��#u&��d�u�|�%/u��D�<@t<Ct<Et	�@��d�u�ËD
�T�E�U�D�T�E�U�E�U��k��ou�T��j�&�y&�1�ù ��������R�1ɇN���&�u&�]&�U&�E)��r�u9�v���ɉN�Ɓ�����&E&U�^&�W�~�r!��u�~�������u
������(����Hu�� )�;N�r�N�Q�~�u���Y1����_Mu�N�)N�u�1�É����^��F� �G�.1��0@����r����2��0���&��.�D���b���C&�G�u�	�R��^��
&��t�:��^�Nr7�Dt�$��F�� ���)&����@�
*�����
�����1�������������~
�*��� Q�O���v&�;G)u;W+u�������X����&8D�uD�w� ���
 � ��Ë~&�=����~
&���&�}�tZW�u�O�u_�^�G��
&�E��
&�E��
$��"&�U&�EW&�}�����$��_�}P�"�X�����t�� �&�E����WV�Z�^���
�����V��
��^_���&�E��F�^��^����F�  �F�  �N�×������D�����5����+��=u=�ߋ^�4�w�%����u	<t� ��,��Ƭ< t���0���R���X��)t��&�� �v�|u&�G<~�R���Y����u�1�Y��F�������Y��F�×���
����8���<u8f/t�f/���������9��������rw=W� _�� ����r��X�&�?\t�������u��~��� �^�G,�YÀ�s�1���v�,�Y�t	;F����s
9F�tH����Y�P��t��[��&�u&�_&�<	u��t�^��G���&�|!&�L � �ZS�F/s&�=0s��r^��#��͸�q�!���� ^Á�  r�P�D�T ��$ 8�Xu�PQRSVW��� �D�N<?t:D��_^[ZYXÊD,Ps� ���
DA��
D��DA��
DI���L���È�%����u���Íw�����<\u��F&���u�9�u	��uO��� &�E�\u��1�1һO�  SQ��C��Y[&�<v^�.�<.uGI��X �Ur�k r
t����A��It��: ��5�M t0�1�%  t(1�K�6<AR��u�K�� t��~XC0���ð.u�ĉ�S� t<ar<zw$߈C�����[�&�G<.�t
<;t< u1���	 ��t�D�W�6�&�= t$��GC&�<\t< u��)�tS1һO��� _s�_�&�M���W�Dtg�^�_�� �9Eu9UuVW�O� �_^t9�}9�u�RPS�? [XZu4��E�U�_�� � �t��/��T�DD�� ����u ��_�1���������H �σf� �����_� u/R�V������u�V�Z��B�8,u�����@�V�Z���� Oy�Ë^�T�D���� ����T�DË]�u�\�w� �\�|�]�G��EËv���PV�v�D&�G�\�\^Xø �SW�~�;Eu;Ut�]� t����E�U_[ù SW�߻���G�G�W�O��� _[Ð
Provides access to CD-ROM drives.

SHSUCDX [/D:[?|*]DriverName[,[Drive][,[Unit][,[MaxDrives]]]] [/L:Drive]]
        [/D:Drives] [/C] [/V] [/~[+|-]] [/R[+|-]] [/I] [/U] [/Q[+|Q]]
        [/L:Number] [/D] [/E][/K][/S][/M]

   DriverName  Name of the CD-ROM device driver.
                  '?' will silently ignore an invalid name.
                  '*' will ignore and, at install, reserve a drive.
   Drive       First drive letter to assign to drives attached to this driver.
   Unit        First drive unit on this driver to be assigned a drive letter.
   MaxDrives   Maximum number of units on this driver to assign drive letters.

   /D:Drives   Install: Reserve space for additional drives.
               Resident: Remove drives last assigned.
   /C          Don't relocate to high (or low) memory.
   /V          Install: Display memory usage.
               Resident/with help: Display information.
   /~          Toggle or turn on/off tilde generation (default is off).
   /R          Toggle or turn on/off read-only attribute (default is on).
   /I          Install even if another redirector is detected.
   /U          Unload.
   /Q          Quiet - don't display sign-on banner.
   /Q+         Extra quiet - only display assigned/removed drives.
   /QQ         Really quiet - don't display anything.
   /L:Number   Return assigned drive number:
                  0 = number of drives (255 = not installed)
                  1 = first drive (1 = A:, 255 = not assigned)
                  2 = second drive, etc.
   /D          Display assigned drives and return the number assigned.
   /E/K/S/M    Ignored (for MSCDEX commandline compatibility).
 
Compile-time options: 8086, CD root form not used, High Sierra supported,
                      Joliet supported, image on CD supported.
 
Run-time options: tilde generation is o??
                  read-only attribute is o??
 
SHSUCDX installed.
   Drives Assigned
   Drives Removed
 Drive  Driver   Unit
   ?:   ????????  ??
 0 drive(s) available.
 
Memory Usage  (loaded high)
   Static:  00000 bytes
  Dynamic: 00000 bytes
  Total:   00000 bytes
 
SHSUCDX uninstalled and memory freed.
 
SHSUCDX can't uninstall.
 
Must have at least a 386.
 
Must be DOS 3.3 or later.
 
Different version of SHSUCDX is installed.
 
SHSUCDX or MSCDEX is already installed.
 
Can't open CD driver  
Need more drive letters. 
Units specified don't exist. 
No drives assigned. 
Not enough memory.   SHSUCDX can't install.
 /D: driver name required.
 �r�����!���u�þM��!s)�����!�n &�>� u�ff��n &�>�u�ff�2þj���.�����'�i��� ���������������!s��� P��X�L�!����!vɿ!�� 0���!����ڻ��P� �/Z����t��t����!��!�<�u	����u�V�^��!r���!s�������!r8t�>�! t��R�!�>�B�F&�G&�W��!��!&�G!H��!�0�!<ws����s���Q���`�`���X�,�����m��!�6D�<�@�H��!s�S��!s<��!�N� ��&N �>�! u��!s���� ����&�N��u���V��!��!r��=����!�>�� =�!s�|*s�Mu'��!r!�N��� ��!�D�!��>�!�r���!�\����!y���!��Nu���!r=��� �9����� �@��� �����������s�� ���!r�7���
������!s��!&�N(ȢN���N�����!s�E��@������!s�`�w��Fq�!=f�u��&��Ш�u�e����!sM�/5�!��;�!u@��	u:&������I&��/%�!������&�>  � t�����I�!�#� �a��M���Y��S���%V����^����|����4��������i��P���~��!s��������&�G��&�G���t
&�G(�v��L� �8�v���T	:*s�*�>�!
s� u��1 B����!��9��*à�!����!��&�GD�tB�!:�!v�ÉU�E��  �E�  �E�E  �E
�E  �������!re�X�!�P� X�!P� �X�!�>�! �� s���X�!��H�!�r P����!XH��@&� ��I�پ �����Z[�X�![�X�!��s!�����I��&9 s�����.�!��!Ë����=�E�@&�GHP�&�!��!�X&�GC��&�OI�&�OK�&�GO A&�&�G: ��9��Î�!�9&�&�����ǹ ��*��*&��&�N��u��&��8�v���"&(�& N(Ȳ9����Q�
 Y�b���2 ��u&�.�&�!.��!ÁC��u�gC �gI �gK �g ��9����s� �l��!r���u�~������!s��N���-u�+���&�GA��V&�7��
������^��&�G<
r�
00�ģ�V�)�^��9�����!r�U��������!r&�N��t�� ���þ�����>�! ���r������������" ���!s��@��)�� ��� ����ù 1��6< NI��u�� N���<ar<zw$�ÿ� �]�� �9�4 rW����r"u��U�r_��>�! u��!s
��!s��!þ������G��t7< v�</t<-u�G��t$���%�=:uG��1Ɋ%8�t�� t
��/tGA������!���!��! ��!���!���!���!���!��<+u��!�
$�<Qu��û�� u���7�û� u�|�Ј�7��@�
�<+t<-u���!À<1r�<9w��u�,0�NË���!��� ��u$��!s��!���N&����&��������Ê<?t<*u�GFJt�QW�?�����J��_Y�M ��t��u	�$�,A< r�+�ÈG	�0 ��t��v�G���q r��G
� ��t��r�k���X r��G�1�����I<,tB��u�����7��V�5 ^r������Ë>��!u���ì$�,A< s���þ��þ��ô u	�,0<
s�Ĭ,0<
s�
��Ë�N���c �� @����9���@�| ���!s�11ɇ, ����I�!�/5�!����!��W�v���)���	�/%�!�Q���G�  �-�u �u�G�E�	 �|���� �u��E�3YÀ>�t&��!�&�&���u���8�v��ô9H��&��
@�