   M S B A M L   `   `   `  ����   Launcher    Launcher.Login   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Login��$	��450��$	��550�� � 
ResizeMode$ CanMinimize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=�.���� ����  �� ImageSource$" Textures/BakcgroundLogin.png��.+��� -   $��22��$��25�� �� Left$	 514��
 �� Top$ 3��$��0q� � Cursor$
 Hand������ $ Textures/X.png������  �� 
TargetType" ��.R��� 	 ��Name$	 border��#��z��#��z��#��z��
 J� SnapsToDevicePixels
 . ._���  ��Name$ contentPresenter��#��z��#��z�� �� ContentStringFormat �� ContentStringFormat# z |�.  #��z��#��z����. #
 z
 #��z�� �� Triggers P�  P� Property �@��IsDefaulted P� Value . . ���  �� 
TargetName$ border�� �� Value# � �� �� Property � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �� $ Textures/XHover.png���� $ border�� � �� �	#FF3C7FB1P�  � �� . P�  �@d�	IsChecked$
 TrueY�. ��� $ border�� � �� �	#FFBCDDEE�� $ border�� � �� �	#FF245A83P�  � {� .  . ��� $ border�� � �� �	#FFF4F4F4�� $ border�� � �� �	#FFADB2B5�� $ contentPresenter�� � �� �	#FF838383�� -   $��22��$��25��$	 483��$ 3��$��0q�$
 Hand������ " ��.R��� $	 border��#��z��#��z��#��z��
 . ._��� $ contentPresenter��#��z��#��z��# z |�.  #��z��#��z����. #
 z
 #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �� $ Textures/_Hover.png���� $ border�� � �� �	#FF3C7FB1P�  � �� . P�  �@d�	IsChecked$
 TrueY�. ��� $ border�� � �� �	#FFBCDDEE�� $ border�� � �� �	#FF245A83P�  � {� .  . ��� $ border�� � �� �	#FFF4F4F4�� $ border�� � �� �	#FFADB2B5�� $ contentPresenter�� � �� �	#FF838383���� $ Textures/_.png���� -   $	��110��$��55��$	 221��$	 273��$��0q�$
 Hand������ " ��.R��� $	 border��#��z��#��z��#��z��
 . ._��� $ contentPresenter��#��z��#��z��# z |�.  #��z��#��z����. #
 z
 #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �� $ Textures/LoginHover.png���� $ border�� � �� �	#FF3C7FB1P�  � �� . P�  �@d�	IsChecked$
 TrueY�. ��� $ border�� � �� �	#FFBCDDEE�� $ border�� � �� �	#FF245A83P�  � {� .  . ��� $ border�� � �� �	#FFF4F4F4�� $ border�� � �� �	#FFADB2B5�� $ contentPresenter�� � �� �	#FF838383���� $ Textures/Login.png���� -   $��Username��$	��262��$��33��$	 148��$ 91��$��0q�$��Calibri)�$��16(�$��Italic$�
�������$��4,7,1,1q�.������ " ��.R��� $	 border��#��z��#��z��#��z��
 . ._���  ��Name$ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FF7EB4EAP�  �@J�IsKeyboardFocused . . ��� $ border�� � �� �� $ Textures/FormFocus.png��.������ $ Textures/Form.png��.��G� -   $��PasswordBox��$	��262��$��33��$	 148��$	 168��$��0q�$��Calibri)�$��16(�$��Italic$�
�������$��4,7,1,1q����� " G�.R��� $	 border��#��z��#��z��#��z��
 . ._��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FF7EB4EAP�  �@J�IsKeyboardFocused . . ��� $ border�� � �� �� $ Textures/FormFocus.png������ $ Textures/Form.png���� $	 237��$ 61��$��Caesar)�
�������$��14(�.��
Username�� $	 233��$	 138��$��Caesar)�
�������$��14(�.��
Password�� -   $��
BadAccount��
�������$��Caesar)�$��14(�$ 56��$	 220��$y�Hidden=�.��97THIS ACCOUNT IS NOT AUTHORIZED FOR THE CLOSED BETA TEST�� -   $��BadAccount1��
�������$��Caesar)�$��14(�$ 56��$	 241��$y�Hidden=�.��75OR THERE IS A MISTAKE IN THE ACCOUNT NAME OR PASSWORD�� 
�������$��Caesar)�$��10(�$	 190��$	 429��.��><WE ARE SORRY THAT WE CANT PROVITE BETA ACCOUNTS TO EVERYBODY�� -   $��LoadingAccount��
�������$��Caesar)�$��14(�$	 240��$	 356��$y�Hidden=�.��
Loading...