using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LittleHobble
{
    public partial class Article : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        public void bind() {
            string conn = "Data Source=bds30911160.my3w.com;Initial Catalog=bds30911160_db;User ID=bds30911160;Password=chenjinlie123";
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string command = "select Tittle from Information where Type=1 ";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            recommend.DataSource = dr;
            recommend.DataBind();

        }
    }
}