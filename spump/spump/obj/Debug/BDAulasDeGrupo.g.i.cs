#pragma checksum "..\..\BDAulasDeGrupo.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "11B35B7F7D4DA32462A98E2EA748B6EA5843D258B769CF09EB34561A8149CD4D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código foi gerado por uma ferramenta.
//     Versão de Tempo de Execução:4.0.30319.42000
//
//     As alterações a este ficheiro poderão provocar um comportamento incorrecto e perder-se-ão se
//     o código for regenerado.
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
    /// BDAulasDeGrupo
    /// </summary>
    public partial class BDAulasDeGrupo : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 31 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dataTxt;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox horaCombo;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox salaCombo;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox professorCombo;
        
        #line default
        #line hidden
        
        
        #line 60 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox modalidadeCombo;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\BDAulasDeGrupo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button closeWindow;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\BDAulasDeGrupo.xaml"
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
            System.Uri resourceLocater = new System.Uri("/spump;component/bdaulasdegrupo.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\BDAulasDeGrupo.xaml"
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
            this.dataTxt = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 2:
            this.horaCombo = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 3:
            this.salaCombo = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.professorCombo = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.modalidadeCombo = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.closeWindow = ((System.Windows.Controls.Button)(target));
            
            #line 65 "..\..\BDAulasDeGrupo.xaml"
            this.closeWindow.Click += new System.Windows.RoutedEventHandler(this.closeWindow_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.butConfirm = ((System.Windows.Controls.Button)(target));
            
            #line 66 "..\..\BDAulasDeGrupo.xaml"
            this.butConfirm.Click += new System.Windows.RoutedEventHandler(this.butConfirm_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

