   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	    AkorLand   Akorcum.MainWindow   5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5        (   "MahApps.Metro.Controls.MetroWindow   Name$  metroWindow��5         EnableDWMDropShadow .  � Title$ 	Akor Land��5   	   $	��700��6   $	��450��6(    � WindowStartupLocation$ CenterScreen=�64   $	��550��6u   $	��450��6�      ShowIconOnTitleBar .    RightWindowCommands 5      +   %MahApps.Metro.Controls.WindowCommands  5   
   .@�5	      �� -   5         ��Name$ 
sifirlaBtn��5	      .��5
      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��4 0 0 0q�6    $��Center=�5      $��	Sıfırla��5      $��14(�6#   $
��Bold"�61   $��UltraCondensed&�6C    J� SnapsToDevicePixels . 	 � Cursor$
	 Hand��6{   5      5      �� 5      .��5      �� $ 
Horizontal=�6   .+�5      �� $��4 0 0 0q�6    $��Center=�5      $��by hcakkuzu��5      5      5      5      .��5      �� -   5        
 ��Name$
 
tabControl��5      $��5,5,0,0q�6%   $
��Left=�66   $	��Top=�6Q   .@�5   
   �� -   5         ��Name$ tabItem��5      $��Sanatçılar��6#   .��5      �� -   5         ��Name$ scrollViewer1��5      .��5      � ��6   �� *ActualHeight-50+ �� ElementName$ metroWindow�� �� Mode$ OneWay=���6`   �� *ActualWidth+$ scrollViewer1��$ OneWay=�.+�5      � -   5         �Name$ sanatciGrid��5       $��0,20,0,0q�65   5!      5"      5#      5$      �� 5%   
   $��
Şarkılar��6   .��5&      �� -   5        $ scrollViewer2��5&      .��5'      � ��6   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6`   �� *ActualWidth+$ scrollViewer2��$ OneWay=�.+�5(      �� -   5         ��Name$ 	sarkiGrid��5(   .   $��1��6!   $��
25,20,25,0q�6A   $��2��6U   5*      5+      5,      5-      �� 5.   
   $
��Akor��6   .��5/      �� -	   5        $ scrollViewer3��5/      .��50      � ��6   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6`   �� *ActualWidth+$ scrollViewer3��$ OneWay=�.+�51      �� -
   5        $ akorGrid��51   !   $��15q�63   .+�52      �� -   5         ��Name$ fontSizeSlide��52   !    � Maximum$ 55Q�69    � Minimum$ 16Q�6F    � Value$ 16Q�6S   $
	 Hand��6^   $��100,5q�6l   $��11(�6{   �� 53      -   5         ��Name$ 
akorBaslik��53   #   $��Bir Şarkı Seçin��67   $
��50,5q�6P    J� Opacity$	 0.9Q�6^   $	��0,1q�6l   ���	#CCB5D2DE���	#CC98BCCB&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�6�   .��54      �� -   5         ��Name$
 AKOR��54   &   $"��Akorları Burada Gözüksün��64    �� 
IsReadOnly .  �� MinLines$ 10��6�   $��Georgia)�6�   ��6T   �� *Value+$ fontSizeSlide��6�   55      �� 56      -   5        $ silBtn��56   !   $��Bu Akoru Sil!��61   $��Center=�6I   $��Center=�6f   6�   57      58      59      5:      �� 5<   
   $
��Yeni��6   $��Segoe WP SemiLight)�6    $��6(�6@   .��5=      �� -   5        $ scrollViewer4��5=      .��5>      � -   5         �Name$
 grid��5>      ��6&   �� *ActualHeight-50+$ metroWindow��$ OneWay=���6o   �� *ActualWidth+$ scrollViewer4��$ OneWay=�.+�5?      �� -   5        $ yeniGrid��5?   !   $��
15,20,25,0q�63   .+�5@      �� $��Şarkı İsmi:��6    $��16(�66   $��0,5,0,0q�6D   �� 5A      -   5        $ sarkiTxt��5A   "   $�� ��64   $��16(�6<   $��Center=�6J   $��1��6e   $��0,5,0,0q�6u   �� 5B      $��Sanatçı İsmi:��6    $��16(�68   $��1��6F   $��0,5,0,0q�6S   �� 5C      -   5         ��Name$ sanatciCombo��5C   #   $��16(�69   $��Center=�6G   $��1��6b   $��1��6o   $��0,5,0,0q�6    �� 
IsEditable . 6�   �� 5D      $��Akor:��6    $��16(�60   $��2��6>   $��0,5,0,0q�6K   �� 5E      -   5        $ akorTxt��5E   "   $	��200��63   $	��400��6C   $�� ��6R   $��16(�6Z   $��2��6h   $��1��6u    �� TextWrapping$
 Wrap=�6�    �� AcceptsReturn .   �� AutoWordSelection  . ! �� 
AcceptsTab! . $��SemiBold"�6�   �� 5F      -   5        $ ekleBtn��5F   !   $��Ekle!��62   $��18(�6B   $��3��6P   $��2��6]   $��10q�6q   " � IsSharedSizeScope" . $��Center=�6�   $��0,5,0,0q�6�   6�   5G      5H      5I      5J      5K      5N      