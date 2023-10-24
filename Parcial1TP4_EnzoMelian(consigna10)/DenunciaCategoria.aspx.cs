using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1TP4_EnzoMelian_consigna10_
{
    public partial class DenunciaCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnAgregarCD_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            int result = SqlDataSourceCD.Insert();
            if (result != 0)
            {
                streamWriter.WriteLine("Se agrego correctamente la denuncia de categoria // ");
                tboxCDa.Text = "";
            }
            else
            {
                streamWriter.WriteLine("Fallo al agregar la denuncia de categoria // ");
            }
            streamWriter.Close();
        }

        protected void btnModificarCD_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            SqlDataSourceCD.UpdateParameters["id"].DefaultValue = lboxCD.SelectedValue.ToString();
            SqlDataSourceCD.UpdateParameters["nombre"].DefaultValue = tboxCDme.Text;
            int result = SqlDataSourceCD.Update();
            if (result != 0)
            {
                streamWriter.WriteLine("Se realizo correctamente la modificacion de categoria // ");
                tboxCDme.Text = "";
            }
            else
            {
                streamWriter.WriteLine("Fallo al modificar la categoria // ");
            }
            streamWriter.Close();
        }

        protected void btnEliminarCD_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            SqlDataSourceCD.DeleteParameters["id"].DefaultValue = lboxCD.SelectedValue.ToString();
            int result = SqlDataSourceCD.Delete();
            if (result != 0)
            {
                streamWriter.WriteLine("Se elimino correctamente el registro // ");
                tboxCDme.Text = "";
            }
            else
            {
                streamWriter.WriteLine("Fallo al eliminar la categoria // ");
            }
            streamWriter.Close();
        }

        protected void lboxCD_SelectedIndexChanged(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            SqlDataSourceMostrarCD.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSourceMostrarCD.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                tboxCDme.Text = reader["nombre"].ToString();
            }
            else
            {
                streamWriter.WriteLine("No se pudo seleccionar correctamente la categoria // ");
            }
            streamWriter.Close();
        }
    }
}