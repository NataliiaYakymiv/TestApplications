   M S B A M L   `   `   `  ���� K  GWpfGetYourNumber, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfGetYourNumberWpfGetYourNumber  !    WpfGetYourNumber.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:WpfGetYourNumber       � Title$  
MainWindow��$	��450��$	��800��.��� $	��Top=� � RowDefinitions �� $��* ��� $��* ��� $��* �.+�]� $��0��$��10 100 10  10q�.+��� -   $��sliderValue�� � Minimum$ 0Q� � Maximum$	 100Q� �� TickPlacement$ BottomRight=� �� TickFrequency$ 1Q� �� IsSnapToTickEnabled$
 True�� � Value �� *	SomeValue+]� $��1��$
��Left=�$��10q�.+��� $��Current Value:����  �� TextAlignment$ Center=�$��40��	 �� 
IsReadOnly$
	 True������ 
 �� ElementName$
 sliderValue�� �� Path$ Value� �� UpdateSourceTrigger$ PropertyChanged=�]� $��2��$
��Left=�.+��� -    ��Name$ btnStart��$��Start���� -   $ btnStop��$
��Stop��