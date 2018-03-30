using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LittleHobble.ashx
{
    /// <summary>
    /// Article 的摘要说明
    /// </summary>
    public class Article : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string conn = "Data Source=bds30911160.my3w.com;Initial Catalog=bds30911160_db;User ID=bds30911160;Password=chenjinlie123";
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            string ccc=string.Empty;
            context.Response.ContentType = "text/plain";
            if (!string.IsNullOrEmpty(HttpContext.Current.Request["id"]))
            {
                int id = Convert.ToInt32(HttpContext.Current.Request["id"]);

                string command = "select ArticleContent from Information where ID="+id;
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                ccc = dr["ArticleContent"].ToString();
                //HttpContext.Current.Response.AddHeader("Content-Type", "application/json; charset=UTF-8");
                //HttpContext.Current.Response.Write(ccc);
                //HttpContext.Current.Response.End();
                HttpContext.Current.Response.Write(ccc);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}