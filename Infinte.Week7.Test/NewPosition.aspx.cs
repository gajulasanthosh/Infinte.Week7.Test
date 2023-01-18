using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infinte.Week7.Test
{
    public partial class NewPosition : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HrCon"].ConnectionString))
                {
                    using (cmd = new SqlCommand("Insert_Position_Details", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                        cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                        cmd.Parameters.AddWithValue("@Year", DdlYear.SelectedValue);
                        cmd.Parameters.AddWithValue("@BudgetStrength", TxtBudget.Text);
                        cmd.Parameters.AddWithValue("CurrentStrength", TxtCurrent.Text);

                        if(con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        int res = cmd.ExecuteNonQuery();
                        if(res > 0)
                        {
                            LblMessage.Text = "Position Added Successfully";
                        }
                        else
                        {
                            LblMessage.Text = "Error";
                        }

                        cmd.Dispose();
                        con.Close();

                    }
                }
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            TxtCurrent.Text = "";
            TxtBudget.Text = "";
            DdlYear.SelectedValue = null;
        }
    }
}