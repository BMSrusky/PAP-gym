﻿#pragma checksum "..\..\..\..\MVM\View\AulasGrupoView.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "B0345E3F1BA5C46494607715016A0E67A26FAAAC"
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
    /// AulasGrupoView
    /// </summary>
    public partial class AulasGrupoView : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 23 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox search;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button butInserir;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button butEditar;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button butReservar;
        
        #line default
        #line hidden
        
        
        #line 75 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid grid;
        
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
            System.Uri resourceLocater = new System.Uri("/spump;component/mvm/view/aulasgrupoview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
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
            this.search = ((System.Windows.Controls.TextBox)(target));
            
            #line 24 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.search.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.search_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.butInserir = ((System.Windows.Controls.Button)(target));
            
            #line 36 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.butInserir.Click += new System.Windows.RoutedEventHandler(this.butInserir_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.butEditar = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.butEditar.Click += new System.Windows.RoutedEventHandler(this.butEditar_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.butReservar = ((System.Windows.Controls.Button)(target));
            
            #line 49 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.butReservar.Click += new System.Windows.RoutedEventHandler(this.ButReservar_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.grid = ((System.Windows.Controls.DataGrid)(target));
            
            #line 75 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.grid.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.grid_SelectionChanged);
            
            #line default
            #line hidden
            
            #line 75 "..\..\..\..\MVM\View\AulasGrupoView.xaml"
            this.grid.AutoGeneratingColumn += new System.EventHandler<System.Windows.Controls.DataGridAutoGeneratingColumnEventArgs>(this.grid_AutoGeneratingColumn);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

