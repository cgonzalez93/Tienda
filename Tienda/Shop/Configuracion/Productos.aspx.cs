using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tienda.Shop.Configuracion
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String GetStars(object stars)
        {
            int limite = Convert.ToInt32(stars);
            int maximo = 5;
            int resultado = maximo - limite;

            //
            StringBuilder str = new StringBuilder();

            for (int i = 1; i <= limite; i++)
            {
                str.Append("<span class='glyphicon glyphicon-star'></span>");
            }

            for (int i = 1; i <= resultado; i++)
            {
                str.Append("<span class='glyphicon glyphicon-star-empty'></span>");
            }
            return str.ToString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string sStars = Convert.ToString(GridView1.DataKeys[e.Row.RowIndex].Values["Stars"]);

                int stars = 0;
                int.TryParse(sStars, out stars);

                switch (stars)
                {
                    case 1:
                    case 2:
                        e.Row.CssClass = "danger";
                        break;
                    case 5:
                        e.Row.CssClass = "success";
                        break;
                }
                
            }
        }

        
    }
}