   M S B A M L   `   `   `  ����I  ETip calculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Tip_calculatorTip_calculator  5   	       Tip_calculator.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Tip_calculator     5   	   -   5          � Title$  Tip Calcurator��5   	   $	��450��6    $	��500��6-    � WindowStartupLocation$ CenterScreen=�69    � 
ResizeMode$ NoResize=�6^    � WindowStyle$
 None=�6t    � AllowsTransparency . ��6�   Z�  � 	Resources 5	         	Krasnodar  FocusVisual �� Property �� Value �� StrokeDashArray	 J� SnapsToDevicePixels  Button.Static.Background
 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background 	 Button.Disabled.Border 
 Button.Disabled.Foreground  ButtonStyle �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 x     &	 "    &	 E    &	 h    &	 �    &	 �    &	 �    &	 �    &		     &	
 :    &	 ]    7  7  7  7  7  7  7  7  7 	 7 
 *�5   
   `\c:\users\andrey\source\repos\tip calculator\tip calculator\fonts\krasnodar grotesk trial.otf)�5      �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E   	 . $��1��6�   5      5      5      �� 5   
   $
 	#FFDDDDDD��6;   �� 5   
   $
 	#FF707070��67   �� 5   
   $
 	#FFBEE6FD��6>   �� 5   
   $
 	#FF3C7FB1��6:   �� 5   
   $
 	#FFC4E5F6��6<   �� 5   
   $
 	#FF2C628B��68   �� 5   
   $
 	#FFF4F4F4��6=   �� 5   
   $
 	#FFADB2B5��69   �� 5   
   $
 	#FF838383��6=   �� 5    
   " ��6$   .�5!      ��  �@�FocusVisualStyle8   61   �� 5"       � ��8  6+   �� 5#       � ��8  6,   �� 5$       � ��# � ��6+   �� 5%       � ��$ 1q�60   �� 5&       � ��$ Center=�6;   �� 5'       � ��$ Center=�69   �� 5(       � ��$ 1q�6(   �� 5)       � �� 5*      �� 5+      " ��6&   .R�5,      �� $ border��6!   $ 2��61   ���#a0e36d���#e95a5a$��2q�6m   	 . ._�5-      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. #	 z	 6�   #��z��6  5.       5/      P� 50       �@��IsDefaulted . . �51   "   �� $ border��6@   # � ��6T    � ��52      P� 53       �@J�IsMouseOver . . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � �� . . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   5:      P� 5;       � {� .  . �5<   "   �� $ border��6?   8   � ��6S   �� 5=   "   $ border��6@   8   � ��6T   �� 5>   "   $ contentPresenter��6K   8 	  � ��6i   5?      5A      5C      5D      5E      .��5F      �� $ 5��6   ���#f7ffbd$��4q�63   ���#e95a5a._�5G   
   �  � RowDefinitions 5H      �� 5I      �� 5J      .+�5M      �� -   5        $	��Top=�5M      $��Right=�61   $��20q�6M   ���#a0e36d$��25��6h   $��25��6s   6   �� 5N      -   5        $	��Top=�5N      $��Right=�60   $��28q�6L   
���  ��$��10��6c   $��10��6n   6z   �� 5P      ���#a0e36d$ 3��6*   $	��2.5q�6;   ���#e95a5a$	��Top=�6g   $��Center=�6�   $��25q�6�   $	��276��6�   ._�5Q      �� -   5         ��Name$ SumOrderText��5Q      $��25(�60   
���   �
������ 
������ $��10q�5R   M   $(��"Bahnschrift SemiBold SemiCondensed)�5S   A    �� TextAlignment$ Center=�6q   .��5T   �   (&Введите сумму заказа6�   5U      �� 5X      $��Center=�6   $
��Left=�63   $��
120 0 0 17q�6N   $��17(�5Y      $��DemiBold"�6&   $(��"Bahnschrift SemiBold SemiCondensed)�6<   Процент чаевых: �� 5[      -   5         �Name$ 
TipProcent��5[      ���#e95a5a$
��Bold"�6=   .�6O   1%6S   5\      �� 5^      ���#a0e36d$ 3��6*   $	��2.5q�6;   ���#e95a5a$��Center=�5_      $��Center=�61   $��0 50 0 0q�6N   ._�5`      �� -   5         ��Name$ ProcentSlider��5`      $��30 10 30 10q�60    � SmallChange$ 1Q�6E    � Value$ 1Q�6U    � Minimum$ 1Q�6_    � Maximum$ 99Q�6k   $	��200��6x    �� IsSelectionRangeEnabled . ��5a      Z� ��6/   Z� ��6E   Z� 6\   5b      �� 5e      $
��Left=�6   $��Bottom=�64   $��	120 0 0 5q�6O   $(��"Bahnschrift SemiBold SemiCondensed)�6b   $��20(�6�   ���#e95a5a$
��Bold"�6�   Заказы6�   �� 5f      $��1��6   ���#a0e36d$ 3��67   $	��2.5q�6H   ���#e95a5a$	��Top=�6t   $��Center=�6�   ._�5g      �� $	��135��6   $	��277��6/   $��93��6>   .��5h      �� -   5         ��Name$ Orders��5h   !   5j      5k      5l      �� 5n      -   5        #���  5n      $��1��6;   $��Bottom=�6H   $��Center=�6c   $��25(�6�   $��	0 0 0 10 q�6�   $��	30 5 30 5q�5o      $(��"Bahnschrift SemiBold SemiCondensed)�6)   .��6o   Рассчитать6{   5q      5r      5s      