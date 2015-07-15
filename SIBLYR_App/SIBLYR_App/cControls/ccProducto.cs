using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;

namespace SIBLYR_App.cControls
{
    /// <summary>
    /// Follow steps 1a or 1b and then 2 to use this custom control in a XAML file.
    ///
    /// Step 1a) Using this custom control in a XAML file that exists in the current project.
    /// Add this XmlNamespace attribute to the root element of the markup file where it is 
    /// to be used:
    ///
    ///     xmlns:MyNamespace="clr-namespace:SIBLYR_App.cControls"
    ///
    ///
    /// Step 1b) Using this custom control in a XAML file that exists in a different project.
    /// Add this XmlNamespace attribute to the root element of the markup file where it is 
    /// to be used:
    ///
    ///     xmlns:MyNamespace="clr-namespace:SIBLYR_App.cControls;assembly=SIBLYR_App.cControls"
    ///
    /// You will also need to add a project reference from the project where the XAML file lives
    /// to this project and Rebuild to avoid compilation errors:
    ///
    ///     Right click on the target project in the Solution Explorer and
    ///     "Add Reference"->"Projects"->[Browse to and select this project]
    ///
    ///
    /// Step 2)
    /// Go ahead and use your control in the XAML file.
    ///
    ///     <MyNamespace:ccProducto/>
    ///
    /// </summary>
    public class ccProducto : Button
    {
        static ccProducto()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(ccProducto), new FrameworkPropertyMetadata(typeof(ccProducto)));

            #region DependencyProperty

            public static DependencyProperty dpIdProducto = DependencyProperty.Register
                                                                             ("Id_Producto",
                                                                             typeof(string),
                                                                             typeof(ccProducto),
                                                                             new UIPropertyMetadata(idProductoAct));

            [Description("Id_Producto"), Category("Common Properties")]
            [Bindable(true)]

            public string idProducto
            {
                get { return (string)GetValue(dpIdProducto); }
                set { SetValue(dpIdProducto, value); }
            }
            private static void idProductoAct(DependencyObject d, DependencyPropertyChangedEventArgs e)
            {
                ccProducto test = (ccProducto)d;
                test.idProducto = e.NewValue as string;
            }
        //-------------------------------------------------------------------------------------------------------//
            public static DependencyProperty dpColor = DependencyProperty.Register
                                                                            ("Color",
                                                                            typeof(string),
                                                                            typeof(ccProducto),
                                                                            new UIPropertyMetadata(ColorAct));

            [Description("Color"), Category("Common Properties")]
            [Bindable(true)]

            public string Color
            {
                get { return (string)GetValue(dpColor); }
                set { SetValue(dpColor, value); }
            }
            private static void ColorAct(DependencyObject d, DependencyPropertyChangedEventArgs e)
            {
                ccProducto test = (ccProducto)d;
                test.Color = e.NewValue as string;
            }
            //-------------------------------------------------------------------------------------------------------//
            public static DependencyProperty dpImagen = DependencyProperty.Register
                                                                         ("Imagen",
                                                                         typeof(ImageSource),
                                                                         typeof(ccProducto),
                                                                         new UIPropertyMetadata(null));

            [Description("Imagen"), Category("Common Properties")]
            [Bindable(true)]

            public ImageSource Imagen
            {
                get { return (ImageSource)GetValue(dpImagen); }
                set { SetValue(dpImagen, value); }
            }
            //-------------------------------------------------------------------------------------------------------//
            //-------------------------------------------------------------------------------------------------------//

            public static DependencyProperty dpNombreProducto = DependencyProperty.Register
                                                                            ("Nombre_Producto",
                                                                            typeof(string),
                                                                            typeof(ccProducto),
                                                                            new UIPropertyMetadata(NomProductoAct));

            [Description("Nombre_Producto"), Category("Common Properties")]
            [Bindable(true)]

            public string NombreProducto
            {
                get { return (string)GetValue(dpNombreProducto); }
                set { SetValue(dpNombreProducto, value); }
            }
            private static void NomProductoAct(DependencyObject d, DependencyPropertyChangedEventArgs e)
            {
                ccProducto test = (ccProducto)d;
                test.NombreProducto = e.NewValue as string;
            }
            //-------------------------------------------------------------------------------------------------------//
            public static DependencyProperty dpCantidad = DependencyProperty.Register
                                                                            ("Cantidad",
                                                                            typeof(string),
                                                                            typeof(ccProducto),
                                                                            new UIPropertyMetadata(CantidadAct));

            [Description("Cantidad"), Category("Common Properties")]
            [Bindable(true)]

            public string Cantidad
            {
                get { return (string)GetValue(dpCantidad); }
                set { SetValue(dpCantidad, value); }
            }
            private static void CantidadAct(DependencyObject d, DependencyPropertyChangedEventArgs e)
            {
                ccProducto test = (ccProducto)d;
                test.Cantidad = e.NewValue as string;
            }

            //-------------------------------------------------------------------------------------------------------//
             //-------------------------------------------------------------------------------------------------------//
            public static DependencyProperty dpPrecio = DependencyProperty.Register
                                                                            ("Precio",
                                                                            typeof(string),
                                                                            typeof(ccProducto),
                                                                            new UIPropertyMetadata(PrecioAct));

            [Description("Precio"), Category("Common Properties")]
            [Bindable(true)]

            public string Precio
            {
                get { return (string)GetValue(dpPrecio); }
                set { SetValue(dpPrecio, value); }
            }
            private static void PrecioAct(DependencyObject d, DependencyPropertyChangedEventArgs e)
            {
                ccProducto test = (ccProducto)d;
                test.Precio = e.NewValue as string;
            }
            //-------------------------------------------------------------------------------------------------------//
           

            #endregion



        }
    }
}
