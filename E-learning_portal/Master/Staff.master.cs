﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Staff : System.Web.UI.MasterPage
{
	string userId;
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

	}
}