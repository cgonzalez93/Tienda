using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TecnoShop.Model.Repository.Impl;

namespace Tienda.Shop
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFileLoad_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile) {
                string fileExtens = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileExtens.ToLower() != ".csv")
                {
                    lblMessage.Text = "El archivo a subir no corresponde con el formato (.csv)";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    string path = Server.MapPath("~/Uploads/" + FileUpload1.FileName);
                    FileUpload1.SaveAs(path);
                    lblMessage.Text = "Archivo Subido Con Exito!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    string readText = File.ReadAllText(path);
                    //string st = readText.Replace("\r\n", "°");
                    string[] lines = Regex.Split(readText, "\n");
                    //string[] csvs = st.Split('°');
                    for (int i = 0; i < lines.Count() - 1; i++)
                    {
                        string[] ps = lines[i].Split(';');
                        TecnoShop.Model.Entities.Product producto = new TecnoShop.Model.Entities.Product()
                        {
                            Title = ps[0],
                            Description = ps[1],
                            Url = ps[2],
                            Price = Convert.ToDecimal(ps[3]),
                            Stars = Convert.ToInt32(ps[4])
                        };
                        ProductRepository pr = new ProductRepository();
                        pr.Create(producto);
                    }
                    
                }
            }
                
            else
            {
                lblMessage.Text = "Seleccione un archivo ha subir!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}