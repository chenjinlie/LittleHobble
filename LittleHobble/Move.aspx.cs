using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LittleHobble
{
    public partial class Move : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        public void bind()
        {
            string conn = "Data Source=bds30911160.my3w.com;Initial Catalog=bds30911160_db;User ID=bds30911160;Password=chenjinlie123";
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string command = "select * from Information as i left join [dbo].[User] as u on i.UserID=u.ID left join [dbo].[Image] on i.ImageID=Image.ID  where Type=2";
            SqlCommand cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();
            Repeater_title.DataSource = dr;
            Repeater_title.DataBind();
            //if(dr.Read())
            //{
            //    //说明有值  返回不为空  
            //    string name=dr["Tittle"].ToString();

            //}
            con.Close();
        }
    }
}