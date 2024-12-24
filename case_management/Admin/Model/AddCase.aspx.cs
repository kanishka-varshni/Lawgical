using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Model_AddCase : System.Web.UI.Page
{
    NxtHelper _nxthelper = new NxtHelper();
    public string ConnString = WebConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            _nxthelper.DdlFill(ddlcaseclient, "ddl_case_client", "Name", "id", false);
            _nxthelper.DdlFill(ddlCaseType, "ddl_case_type", "Casetype_Name", "id", false);
            _nxthelper.DdlFill(ddlcaseStatus, "ddl_case_status", "CaseStatus", "id", false);

            _nxthelper.DdlFill(ddlCourtType, "ddl_Court_Type", "CourtType_Name", "id", false);
            _nxthelper.DdlFill(ddlJudgeType, "ddl_Judge_Type", "JudgeType", "id", false);


        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            cmd = new SqlCommand("select * from AddCase_tbl where Subject='" + txtCaseNo.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblMessage.Text = "Case already exist !!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
            }
            else
            {
                dr.Close();
                Conn.Close();
                Conn.Open();

                string qry = "insert into AddCase_tbl values('" + txtsubject.Text + "','" + txtstartdate.Text + "','" + txtdeadline.Text + "','" + ddlcaseStatus.SelectedValue.ToString() + "','" + ddlcaseStatus.SelectedItem.ToString() + "',

                '" + ddlPriority.SelectedItem.ToString() + "','" + txtassito.Text + "','" + ddlrelatedto.SelectedItem.ToString() + "','" + ddlcaseclient.SelectedItem.ToString() + "','" + txtDesc.Text + "')";
                SqlCommand cmd2 = new SqlCommand(qry, Conn);
                cmd2.ExecuteNonQuery();
                lblMessage.Text = "Case Added Successfully";
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
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}