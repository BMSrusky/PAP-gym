using spump.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace spump.MVM.ViewModel
{
    internal class MainViewModel : ObeservableObject
    {
        public RelayCommand HomeViewCommand { get; set; }
        public RelayCommand ClientesViewCommand { get; set; }

        public HomeViewModel HomeVM { get; set; }
        public ClientesViewModel ClientesVM { get; set; }

        private object _currentView;

        public object CurrentView
        {
            get { return _currentView; }
            set { _currentView = value;
                  Onpropertychanged();
            }
        }

        public MainViewModel()
        {
            HomeVM = new HomeViewModel();
            ClientesVM = new ClientesViewModel();
            CurrentView = HomeVM;

            HomeViewCommand = new RelayCommand(o =>
            {
                CurrentView = HomeVM;
            });

            ClientesViewCommand = new RelayCommand(o =>
            {
                CurrentView = ClientesVM;
            });
        }
    }
}
