   M S B A M L   `   `   `  ����K  GWpfGetYourNumber, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfGetYourNumberWpfGetYourNumber  5   	   !    WpfGetYourNumber.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:WpfGetYourNumber     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5
      � $	��Top=�6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   ]� $��0��6   $��10 50 10  10q�6!   .+�5      �� -   5         ��Name$ ErrorMessageForWebApi��5      $!��Your service is unavaliable��67   $y�Hidden=�6Z    �� TextAlignment$ Center=�6o   
���  ��6�   5      ]� 5   
   $��1��6   $��10q�6!   .+�5      �� -   5        $ ErrorMessageForTryParse��5      $8��2Your service must generate int value from 0 to 100��69   $y�Hidden=�6s   $ Center=�6�   
���  ��6�   5      ]� 5   
   $��2��6   $��10q�6!   .+�5      �� -   5        $��
sliderName��5   y    � Minimum$ 0Q�6    � Maximum$	 100Q�6"    �� TickPlacement$ BottomRight=�60    �� TickFrequency$ 1Q�6L    �� IsSnapToTickEnabled$
 True��6^   	 � Value	 6�   �� *	SomeValue+5      ]� 5   
   $��3��6   $
��Left=�6!   $��10q�6<   .+�5      �� $��Current Value:��6   �� 5      
 �� TextAlignment$
 Center=�6o   $��40��6�    �� 
IsReadOnly$
 True��6�   ��6   ��  �� ElementName$ 
sliderName�� �� Path$ Value� �� UpdateSourceTrigger$ PropertyChanged=�6�   5      ]� 5    
   $��4��6   $
��Left=�6!   .+�5!      �� -   5         ��Name$ btnStart��5!      $��Start��6>   �� 5"      -   5        $ btnStop��5"      $
��Stop��6=   5#      5$      5%      