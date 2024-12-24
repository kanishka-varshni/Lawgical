using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClient : System.Web.UI.Page
{

    NxtHelper _nxthelper = new NxtHelper();
    public string ConnString = WebConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    string Gender;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            cmd = new SqlCommand("select * from Add_client_tbl where Name='" + txtName.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblMessage.Text = "Client already exist !!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
            }
            else
            {
                dr.Close();
                Conn.Close();
                Conn.Open();
                if (rdbGender.SelectedValue == "Male")
                {
                    Gender = "Male";
                }
                else
                {
                    Gender = "Female";
                }
                string qry = "insert into Add_client_tbl (Name,Middle_Name,Last_name,Gender,Emailid,MobileNo,Alternateno,address,counrty,state,city,Reference,refernceNo,Createddate)  values('" + txtName.Text + "','" + txtmidlename.Text + "','" + txtlastname.Text + "','" + Gender + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtAlternateMobile.Text + "','" + txtAddress.Text + "','" + txtcountry.Text + "','" + txtstate.Text + "','" + txtCity.Text + "','" + txtReferenceName.Text + "','" + txtReferenceMobile.Text + "','"+ DateTime.Now.ToShortDateString() +"')";
               
                
                SqlCommand cmd2 = new SqlCommand(qry, Conn);
                cmd2.ExecuteNonQuery();
                lblMessage.Text = "Client Added Successfully";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                Conn.Close();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.Replace("'", "");
            lblMessage.ForeColor = System.Drawing.Color.Red;

        }
        finally { Conn.Close(); }
    }
}