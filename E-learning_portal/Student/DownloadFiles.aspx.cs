using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Student_DownloadFiles : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();

    SqlTransaction transaction;
    string userId;

    Common _common = new Common();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            userId = Session["userID"].ToString();
        }
        catch (Exception)
        {
            Response.Redirect("~/Home.aspx?Session=Out");
        }
        if (!IsPostBack)
        {
            getData();
        }
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    private void getData()
    {
        ds = _common.GetData(userId, "student", "stu_id");

        Conn = new SqlConnection(ConnString);
        Conn.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from FileUpload where Department='" + ds.Tables[0].Rows[0]["department"].ToString() + "'", Conn);
        DataSet st = new DataSet();
        adp.Fill(st);
        grd_show.DataSource = st;
        grd_show.DataBind();

        Conn.Close();

    }
}