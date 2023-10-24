using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1TP4_EnzoMelian_consigna10_
{
    public partial class Denuncias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnAgregarDen_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            int result = SqlDataSourceD.Insert();
            if (result != 0)
            {
                streamWriter.WriteLine("Se agrego correctamente la descripcion de la denuncia // ");
                tboxDescripA.Text = "";
                GridView1.DataBind();
            }
            else
            {
                streamWriter.WriteLine("Fallo al agregar la descripcion de denuncia // ");
            }
            streamWriter.Close();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/log.txt", true);
            SqlDataSourceD.FilterExpression = "idDenunciaCategoria = " + DDLfiltro.SelectedValue;
            streamWriter.WriteLine("Se filtro correctamente la categoria de denuncia");
            streamWriter.Close();
        }

        protected void btnDesfiltrar_Click(object sender, EventArgs e)
        {
            SqlDataSourceD.FilterExpression = string.Empty;
            SqlDataSourceD.FilterParameters.Clear();
        }

    }
}