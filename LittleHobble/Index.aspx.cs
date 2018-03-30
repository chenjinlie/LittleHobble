using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LittleHobble
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        public void Bind() {
            string conn = "Data Source=bds30911160.my3w.com;Initial Catalog=bds30911160_db;User ID=bds30911160;Password=chenjinlie123";
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string command = "select top 3 * from Information as i left join [dbo].[User] as u on i.UserID=u.ID left join [dbo].[Image] on i.ImageID=Image.ID";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();

            index_repeater.DataSource = dr;
            index_repeater.DataBind();
        }
        public static string sss(string a) {
            return a + "马路边";
        }
    }
}