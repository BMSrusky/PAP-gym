#pragma checksum "..\..\..\..\MVM\View\BDClientes.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "C8AB247BCD860043C7458C39570D3EC0046FA4458FB90B35AF80C2468FA19031"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using spump.MVM.View;


namespace spump.MVM.View {
    
    
    /// <summary>
    /// BDClientes
    /// </summary>
    public partial class BDClientes : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 38 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox nomeTxt;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dataTxt;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox emailTxt;
        
        #line default
        #line hidden
        
        
        #line 85 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox contactoTxt;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button closeWindow;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\..\..\MVM\View\BDClientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button butConfirm;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/spump;component/mvm/view/bdclientes.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\MVM\View\BDClientes.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.nomeTxt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.dataTxt = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 3:
            this.emailTxt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.contactoTxt = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.closeWindow = ((System.Windows.Controls.Button)(target));
            
            #line 92 "..\..\..\..\MVM\View\BDClientes.xaml"
            this.closeWindow.Click += new System.Windows.RoutedEventHandler(this.closeWindow_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.butConfirm = ((System.Windows.Controls.Button)(target));
            
            #line 93 "..\..\..\..\MVM\View\BDClientes.xaml"
            this.butConfirm.Click += new System.Windows.RoutedEventHandler(this.butConfirm_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

