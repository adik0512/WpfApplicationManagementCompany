   M S B A M L   `   `   `  ����Z  VWpfApplicationManagementCompany, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulle7clr-namespace:WpfApplicationManagementCompany.ViewModel)WpfApplicationManagementCompany.ViewModel  5   	   5    /WpfApplicationManagementCompany.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Fvm7clr-namespace:WpfApplicationManagementCompany.ViewModel     5   	     � Title$  Management Company��5   	   $	��485��6$   $	��824��61    � 	Resources 5      A  ;WpfApplicationManagementCompany.ViewModel.UserEditViewModel   userEditViewModel��%   &	          5   
   6   5      .��5
      �  � DataContext# [  6   .+�5   
   �� -   5         ��Name$ groupBox��5      $��Add  & Remove User��6%   $
��Left=�6E   $��	347,5,0,0q�6`   $	��Top=�6s   $	��213��6�   $	��426��6�   �� 5   
   -   5        $ groupBox_Copy��5      $��	Edit User��6*   $
��Left=�6=   $��348,231,0,0q�6X   $	��Top=�6m   $	��192��6�   $	��426��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DataGridPerson��5      $��0��6+      AutoGenerateColumns .   �� DisplayMemberPath$	 xxx��6�   $
��Left=�6�   $��6,10,0,0q�6�   $	��286��6�   $	��436��6�   $	��Top=�6	  ��6W   �� *People+ �� SelectedItem 6v   �� *SelectedPerson+ �� Mode$ TwoWay=�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   
IsReadOnly
 .    Header$ User ID��68   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6I   �� *userID+ �� UpdateSourceTrigger$ PropertyChanged=�  5      
 . $ 
First Name��68    6L   �� *	firstName+$ PropertyChanged=�  5      
 . $ 	Last Name��68    6K   �� *
lastName+$ PropertyChanged=�  5      
 . $ Contract��68    6J   �� *
contract+$ PropertyChanged=�  5      
 . $ Salary��68    6H   �� *salary+$ PropertyChanged=�5      �� 5   
   -   5         ��Name$ 	txtUserID��5   M   $��23��6   $
��Left=�6   $��
461,27,0,0q�69   $	��Top=�6`   $	��178��6x   ��6�   �� *UserID+�� 5   
   -   5        $ txtFirstName��5   M   $��23��6   $
��Left=�6   $��
461,55,0,0q�69   $	��178��6~   $	��Top=�6�   ��6c   �� *	FirstName+6�   �� 5    
   -   5        $ txtLastName��5    M   $��23��6   $
��Left=�6   $��
461,81,0,0q�69   $	��Top=�6b   $	��178��6z   ��6�   �� *
LastName+�� 5!   
   -   5         ��Name$ label1��5!   6   $��UserID:��6   $��
411,26,0,0q�6"   $��25��6F   $	��Top=�6R   $
��Left=�6j   $��50��6�    J� RenderTransformOrigin$ 0.556,-0.16&�6�   �� 5"   
   -   5        $ label2��5"   `   $��
Last Name:��6   $��28��6%   $
��Left=�61   $��
390,80,0,0q�6L   $	��Top=�6p   �� 5#   
   -	   5        $ label3��5#   a   $��First Name:��6   $��28��6&   $
��Left=�62   $��
389,55,0,0q�6M   $	��Top=�6q   �� 5%   
   -
   5        $ label2_Copy1��5%   `   $��	Contract:��6   $��28��6$   $
��Left=�60   $��401,105,0,0q�6K   $	��Top=�6v   �� 5&   
   -   5        $ 	txtSalary��5&   N   $��23��6   $
��Left=�6   $��461,162,0,0q�69   $	��Top=�6a   $	��178��6y   ��6�   �� *Salary+�� 5'   
   -   5        $ label2_Copy2��5'   ^   $��Salary:��6   $��28��6"   $
��Left=�6.   $��415,159,0,0q�6I   $	��Top=�6t   �� 5(   
   -   5         ��Name$ btnAdd��5(      $	��Add��6!   $��
672,33,0,0q�6/   $	��Top=�6C   $
��Left=�6�   $��74��6�   ��6[   �� *AddUserCommand+$ TwoWay=�6�   �� 5)   
   -   5        $ 	btnRemove��5)      $��Remove��6$   $
��Left=�65   $��
672,57,0,0q�6P   $	��Top=�6d   $��74��6|   ��6�   �� *DeleteUserCommand+$ TwoWay=��� 5+   
   -   5         ��Name$ comboBox��5+      $
��Left=�6%   $��461,108,0,0q�6@   $	��Top=�6U   $	��178��6m    �� Text 6y   �� *
Contract+$ TwoWay=�$ PropertyChanged=�.@�5,      �� $��Staż��6   $
��Left=�6*   $	��177��6E   $��0,0,-1,0q�6�    �� 
IsSelected 6Q   �� * ComboBoxItemIsSelectedPractice+6�   �� 5-      $
��Etat��6   $
��Left=�6*   $	��176��6E    6Q   �� *ComboBoxItemIsSelectedFullJob+5.      �� 5/   
   -   5        $ txtUserID_Copy��5/   N   $��23��6   $
��Left=�6   $��462,260,0,0q�69   $	��Top=�6f   $	��178��6~   ��6�   �� *SelectedPerson.userID+$ TwoWay=�$ PropertyChanged=��� 50   
   -   5        $ txtFirstName_Copy��50   N   $��23��6   $
��Left=�6   $��462,288,0,0q�69   $	��178��6�   $	��Top=�6�   ��6i   �� *SelectedPerson.firstName+$ TwoWay=�$ PropertyChanged=�6�   �� 51   
   -   5        $ txtLastName_Copy��51   N   $��23��6   $
��Left=�6   $��462,315,0,0q�69   $	��Top=�6h   $	��178��6�   ��6�   �� *SelectedPerson.lastName+$ TwoWay=�$ PropertyChanged=��� 52   
   -   5        $ label1_Copy��52   7   $��UserID:��6   $��415,259,0,0q�6"   $��25��6L   $	��Top=�6X   $
��Left=�6p   $��50��6�   $ 0.556,-0.16&�6�   �� 53   
   -   5        $ label2_Copy��53   a   $��
Last Name:��6   $��28��6%   $
��Left=�61   $��394,313,0,0q�6L   $	��Top=�6v   �� 54   
   -   5        $ label3_Copy��54   b   $��First Name:��6   $��28��6&   $
��Left=�62   $��392,286,0,0q�6M   $	��Top=�6w   �� 55   
   -   5        $ label2_Copy3��55   `   $��	Contract:��6   $��28��6$   $
��Left=�60   $��404,340,0,0q�6K   $	��Top=�6v   �� 56   
   -   5        $ txtSalary_Copy��56   N   $��23��6   $
��Left=�6   $��462,369,0,0q�69   $	��Top=�6f   $	��178��6~   ��6�   �� *SelectedPerson.salary+$ TwoWay=�$ PropertyChanged=��� 57   
   -   5        $ label2_Copy4��57   ^   $��Salary:��6   $��28��6"   $
��Left=�6.   $��418,367,0,0q�6I   $	��Top=�6t   �� 58   
   -   5        $ comboBox_Copy��58      $
��Left=�6*   $��462,342,0,0q�6E   $	��Top=�6Z   $	��178��6r    6~   �� *SelectedPerson.contract+$ TwoWay=�$ PropertyChanged=�.@�59      �� $��Staż��6   $
��Left=�6*   $	��176��6E    6Q   �� *ComboBoxItemIsSelected+�� 5:      $
��Etat��6   $
��Left=�6*   $	��176��6E   5;      �� 5<   
   -   5        $ txtSalary_Copy1��5<   N   $��23��6   $
��Left=�6   $��461,135,0,0q�69   $	��Top=�6g   $	��178��6   ��6�   �� *
Overtime+$ TwoWay=�$ PropertyChanged=��� 5=   
   -   5        $ label2_Copy5��5=   b   $��Nadgodziny:��6   $��28��6&   $
��Left=�62   $��383,133,0,0q�6M   $	��Top=�6x   5A      5B      