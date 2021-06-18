using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace StudentEntryForm
{
    public partial class Enrollmentreport : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            gridview.Visible = false;
        }

        protected void srchStudBtn_Click(object sender, EventArgs e)
        {
            gridview.Visible = true;
            string slctStatus = ddlStatus.SelectedValue;
            string str;
            if (slctStatus == "All")
            {
                str = "SELECT ENRL_ENTRY_TABLE.ENRL_STUD_IDNUM, STUD_ENTRY_TABLE.STUD_LASTNAME, STUD_ENTRY_TABLE.STUD_FIRSTNAME, COUR_ENTRY_TABLE.COUR_CODE, ENRL_ENTRY_TABLE.ENRL_SCHED, ENRL_ENTRY_TABLE.ENRL_YRLVL, ENRL_ENTRY_TABLE.ENRL_SEM, INST_ENTRY_TABLE.INST_FULLNAME, ENRL_ENTRY_TABLE.ENRL_STUD_STATUS"
                + " FROM(((ENRL_ENTRY_TABLE "
                  + "  INNER JOIN STUD_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_STUD_IDNUM = STUD_ENTRY_TABLE.STUD_IDNUM) "
                  + " INNER JOIN COUR_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_COUR_CODE = COUR_ENTRY_TABLE.COUR_CODE) " +
                  "INNER JOIN INST_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_INST_IDNUM = INST_ENTRY_TABLE.INST_IDNUM)";
            }
            else{
                str = "SELECT ENRL_ENTRY_TABLE.ENRL_STUD_IDNUM, STUD_ENTRY_TABLE.STUD_LASTNAME, STUD_ENTRY_TABLE.STUD_FIRSTNAME, COUR_ENTRY_TABLE.COUR_CODE, ENRL_ENTRY_TABLE.ENRL_SCHED, ENRL_ENTRY_TABLE.ENRL_YRLVL, ENRL_ENTRY_TABLE.ENRL_SEM, INST_ENTRY_TABLE.INST_FULLNAME, ENRL_ENTRY_TABLE.ENRL_STUD_STATUS"
                   + " FROM(((ENRL_ENTRY_TABLE "
                  + "  INNER JOIN STUD_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_STUD_IDNUM = STUD_ENTRY_TABLE.STUD_IDNUM) "
                  + " INNER JOIN COUR_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_COUR_CODE = COUR_ENTRY_TABLE.COUR_CODE) " +
                  "INNER JOIN INST_ENTRY_TABLE ON ENRL_ENTRY_TABLE.ENRL_INST_IDNUM = INST_ENTRY_TABLE.INST_IDNUM) WHERE ENRL_STUD_STATUS = '" + slctStatus+"'";

            }
            try
            {
                using (var db = new SqlConnection(constring))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = str;
                        cmd.Connection = db;
                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        gridview_report.DataSource = dt;
                        gridview_report.DataBind();
                        db.Close();
                    }
                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}