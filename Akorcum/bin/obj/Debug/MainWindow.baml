   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	    AkorLand   Akorcum.MainWindow   5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5        (   "MahApps.Metro.Controls.MetroWindow   Name$  metroWindow��5         EnableDWMDropShadow .  � Icon$ icon.ico��5   	    � Title$ 	Akor Land��5   	   $	��700��6   $	��450��6(    � WindowStartupLocation$ CenterScreen=�64   $	��550��6u   $	��450��6�      ShowIconOnTitleBar .    RightWindowCommands 5      +   %MahApps.Metro.Controls.WindowCommands  5	   
   .@�5
      �� -   5         ��Name$ 
sifirlaBtn��5
      .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��4 0 0 0q�6    $��Center=�5      $��	Sıfırla��5      $��14(�6#   $
��Bold"�61   $��UltraCondensed&�6C   	 J� SnapsToDevicePixels	 . 
 � Cursor$

 Hand��6{   5      5      �� 5      .��5      �� $ 
Horizontal=�6   .+�5      �� $��4 0 0 0q�6    $��Center=�5      $��by hcakkuzu��5      5      5      5      .��5      �� -   5         ��Name$ 
tabControl��5      $��5,5,0,0q�6%   $
��Left=�66   $	��Top=�6Q   .@�5   
   �� -   5         ��Name$ tabItem��5      $��Sanatçılar��6#   .��5      �� -   5         ��Name$ scrollViewer1��5      .��5      � ��6   �� *ActualHeight-50+ �� ElementName$ metroWindow�� �� Mode$ OneWay=���6`   �� *ActualWidth+$ scrollViewer1��$ OneWay=�.+�5       �� -   5         ��Name$ sanatciGrid��5    !   5"      5#      5$      5%      �� 5&   
   $��
Şarkılar��6   .��5'      �� -   5        $ scrollViewer2��5'      .��5(      � ��6   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6`   �� *ActualWidth+$ scrollViewer2��$ OneWay=�.+�5)      �� -   5        $ 	sarkiGrid��5)   !   5+      5,      5-      5.      �� 5/   
   $
��Akor��6   .��50      �� -	   5        $ scrollViewer3��50      .��51      � ��6   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6`   �� *ActualWidth+$ scrollViewer3��$ OneWay=�.+�52      �� -
   5        $ akorGrid��52   !   $��15q�63   .+�53      �� -   5         ��Name$ fontSizeSlide��53   !    � Maximum$ 55Q�69    � Minimum$ 16Q�6F    � Value$ 16Q�6S   $

 Hand��6^   $��0,5,0,8q�6l   �� 54      -   5         ��Name$ 
akorBaslik��54   #   $��Bir Şarkı Seçin��67   .��55      �� -   5         ��Name$
 AKOR��55   &   $"��Akorları Burada Gözüksün��64    �� 
IsReadOnly .  �� MinLines$ 10��6�   $��Georgia)�6�   ��6T   �� *Value+$ fontSizeSlide��6�   56      �� 57      -   5        $ silBtn��57   !   $��Bu Akoru Sil!��61   $��Center=�6I   $��Center=�6f   6�   58      59      5:      5;      �� 5=   
   $
��Yeni��6   $��Segoe WP SemiLight)�6    $��6(�6@   .��5>      �� -   5        $ scrollViewer4��5>      .��5?      � -   5         �Name$
 grid��5?      ��6&   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6o   �� *ActualWidth+$ scrollViewer4��$ OneWay=�.+�5@      �� -   5        $ yeniGrid��5@   !   $��15q�63   .+�5A      �� $��Şarkı İsmi:��6    $��16(�66   $��0,5,0,0q�6D   �� 5B      -   5        $ sarkiTxt��5B   "   $�� ��64   $��16(�6<   $��Center=�6J   $��1��6e   $��0,5,0,0q�6u   �� 5C      $��Sanatçı İsmi:��6    $��16(�68   $��1��6F   $��0,5,0,0q�6S   �� 5D      -   5         ��Name$ sanatciCombo��5D   #   $��16(�69   $��Center=�6G   $��1��6b   $��1��6o   $��0,5,0,0q�6    �� 
IsEditable . 6�   �� 5E      $��Akor:��6    $��16(�60   $��2��6>   $��0,5,0,0q�6K   �� 5F      -   5        $ akorTxt��5F   "   $	��200��63   $	��400��6C   $�� ��6R   $��16(�6Z   $��2��6h   $��1��6u    �� TextWrapping$ WrapWithOverflow=�6�    �� AcceptsReturn .  �� AutoWordSelection .  �� 
AcceptsTab . 6�   �� 5G      -   5        $ ekleBtn��5G   !   $��Ekle!��62   $��18(�6B   $��3��6P   $��2��6]   $��10q�6q     � IsSharedSizeScope  . $��Center=�6�   $��0,5,0,0q�6�   6�   5H      5I      5J      5K      5L      5O      