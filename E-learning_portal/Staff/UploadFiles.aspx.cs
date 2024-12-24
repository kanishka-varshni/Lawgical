using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_UploadFiles : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    SqlDataReader red;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindddl();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (fulStaff.HasFile)
        {
            try
            {

                string filename = Server.MapPath("~/AttachFiles/") + Path.GetFileName(fulStaff.PostedFile.FileName);
                fulStaff.SaveAs(filename);


                try
                {
                    Conn = new SqlConnection(ConnString);
                    Conn.Open();
                    string qry = "insert into FileUpload(FileTitle,Description,Filename,Department)values('" + txtFileName.Text + "','" + txtDescription.Text + "','" + filename + "','" + ddlDepartment.SelectedItem.Value + "')";
                    cmd = new SqlCommand(qry, Conn);
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "File Uploaded Successfully";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    Conn.Close();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message.Replace("'", "");
                    lblMessage.ForeColor = System.Drawing.Color.Red;

                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message.Replace("'", "");
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    private void bindddl()
    {
        Conn = new SqlConnection(ConnString);
        cmd = new SqlCommand("select * from department");
        cmd.CommandType = CommandType.Text;
        cmd.Connection = Conn;
        Conn.Open();
        ddlDepartment.DataSource = cmd.ExecuteReader();
        ddlDepartment.DataTextField = "name";
        ddlDepartment.DataValueField = "id";
        ddlDepartment.DataBind();
        Conn.Close();


    }
}