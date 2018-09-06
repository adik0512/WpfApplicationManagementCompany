using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using WpfApplicationManagementCompany.Model;

namespace WpfApplicationManagementCompany.ViewModel
{
    class UserEditViewModel : INotifyPropertyChanged
    {
        #region OnPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;



        protected void OnPropertyChanged(string propertyName)

        {

            PropertyChangedEventHandler eventHandler = PropertyChanged;

            if (eventHandler != null)

            {

                eventHandler(this, new PropertyChangedEventArgs(propertyName));

            }

        }
        #endregion
      
        private int userID;
        private string firstName;
        private string lastName;
        private string contract;
        private int overtime;
        private int salary;

        public int UserID
        {
            get
            {
                return userID;
            }
            set
            {
                userID = value;
                OnPropertyChanged("UserID");
            }
        }
        public string FirstName
        {
            get
            {
                return firstName;
            }
            set
            {
                firstName = value;
                OnPropertyChanged("FirstName");
            }
        }
        public string LastName
        {
            get
            {
                return lastName;
            }
            set
            {
                lastName = value;
                OnPropertyChanged("LastName");
            }
        }

        public string Contract
        {
            get
            {
                return contract;
            }
            set
            {
                contract = value;
                OnPropertyChanged("Contract");
            }
        }
        public int Overtime
        {
            get
            {
                return overtime;
            }
            set
            {
                overtime = value;
                Salary = 3500 + Overtime * (3500 / 60);
                OnPropertyChanged("Overtime");
            }
        }
        public int Salary
        {
            get
            {
                return salary;
            }
            set
            {
                salary = value;
                OnPropertyChanged("Salary");
            }
        }
        private bool comboBoxItemIsSelectedPractice;
        public bool ComboBoxItemIsSelectedPractice
        {
            get
            {
                return comboBoxItemIsSelectedPractice;
            }
            set
            {
                comboBoxItemIsSelectedPractice = value;
                Salary = 1200;
                OnPropertyChanged("ComboBoxItemIsSelectedPractice");
            }
        }

        private bool comboBoxItemIsSelectedFullJob;
        public bool ComboBoxItemIsSelectedFullJob
        {
            get
            {
                return comboBoxItemIsSelectedFullJob;
            }
            set
            {
                comboBoxItemIsSelectedFullJob = value;
                Salary = 3500;
                OnPropertyChanged("ComboBoxItemIsSelectedFullJob");
            }
        }
       
        private ObservableCollection<Person> people;

        public ObservableCollection<Person> People
        {
            get
            {
                return people;
            }
            set
            {
                people = value;
            }
        }
        public void LoadPerson()
        {
            People = new ObservableCollection<Person>() {
            new Person(userID, firstName, lastName, contract, salary) { userID = 1, firstName = "Jan", lastName = "Kowalski", contract = "Staż", salary = 1200 },
            new Person(userID, firstName, lastName, contract, salary) { userID = 2, firstName = "Andrzej", lastName = "Kowalski", contract = "Staż", salary = 1200 },
            new Person(userID, firstName, lastName, contract, salary) { userID = 3, firstName = "Maciej", lastName = "Bartnicki", contract = "Etat", salary = 3500 } };

            ComboBoxItemIsSelectedPractice = true;
        }

        public RelayCommand AddUserCommand { get; set; }
        public RelayCommand DeleteUserCommand { get; set; }

        private Person selectedPerson;
        public Person SelectedPerson
        {
            get
            {
                return selectedPerson;
            }
            set
            {
                selectedPerson = value;
                OnPropertyChanged("SelectedPerson");
            }
        }
        
        public UserEditViewModel()
        {
            LoadPerson();

            AddUserCommand = new RelayCommand(AddUser);
            DeleteUserCommand = new RelayCommand(DeleteUser);
        }

        public void AddUser(object parameter)
        {
            try
            {
                 People.Add(new Person(userID = UserID, firstName = FirstName, lastName = LastName, contract = Contract, salary = Salary));
            }
            catch (Exception)

            {
                throw;
            }
        }

        public void DeleteUser(object parameter)
        {
            if (SelectedPerson != null)
            {
                People.Remove(SelectedPerson);
            }
        }
    }
}

