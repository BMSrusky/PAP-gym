   M S B A M L   `   `   `  ����@  <spump, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:spump.MVM.Viewspump.MVM.View  5   	   #    spump.MVM.View.BDAulasDeGrupo   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:spump.MVM.View     5   	     � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�5	   	   
������  � AllowsTransparency .  � Title$ 
BDClientes��5   	   $	��200��6   $	��500��6)    � WindowStartupLocation$ CenterScreen=�65   .��5      �� ���#202020 �� CornerRadius$ 20��6"   ._�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10,0,0,0q�6.   .+�5      �� $ Vertical=�6   .+�5      �� $
��Data��6   
�������$��Center=�6;   $
��Left=�6V   $��0,10,0,0q�6q   �� 5      $
��Hora��6   
�������$��Center=�6;   $
��Left=�6V   $��0,25,0,0q�6q   �� 5      $
��Sala��6   
�������$��Center=�6;   $
��Left=�6V   $��0,25,0,0q�6q   �� 5      $��	Professor��6   
�������$��Center=�6@   $
��Left=�6[   $��0,25,0,0q�6v   �� 5      $��
Modalidade��6   
�������$��Center=�6A   $
��Left=�6\   $��0,25,0,0q�6w   5      �� 5      $ Vertical=�6   $��90,0,0,0q�60   .+�5      (  "System.Windows.Controls.DatePicker  -   5          Name$ dataTxt��5      $	��200��5      $��25��5      $��Center=�5      $
��Left=�5      $��0,5,0,0q�5       6'   �� 5#      -   5         ��Name$ 	horaCombo��5'      $	��200��5#      $��25��5$      $��Center=�5%      $
��Left=�5&      $��0,15,0,0q�5(      �� 5*      -   5        $ 	salaCombo��5.      $	��200��5*      $��25��5+      $��Center=�5,      $
��Left=�5-      $��0,15,0,0q�5/      �� 51      -   5        $ professorCombo��55      $	��200��51      $��25��52      $��Center=�53      $
��Left=�54      $��0,15,0,0q�56      �� 58      -   5        $ modalidadeCombo��5<      $	��200��58      $��25��59      $��Center=�5:      $
��Left=�5;      $��0,15,0,0q�5=      5>      �� 5@      $ Vertical=�6   $��10,0,0,0q�60   .+�5A      �� -   5        	 ��Name$	 closeWindow��5A         CloseButton#��[  6.   $��25��6S   $��25��6^   $��15(�6j   $��90,0,0,0q�6x   6�   �� 5B      -   5        $	 
butConfirm��5B      $��25��6-   $��25��68   $	��✓��6D   $��
90,140,0,0q�6P     ButtonTheme#��[ 6}   5C      5E      5F      5G      