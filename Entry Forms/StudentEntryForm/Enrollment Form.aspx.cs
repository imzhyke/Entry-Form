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
    public partial class Enrollment_Form : System.Web.UI.Page
    {

        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            theDiv.Visible = false;
        }

        protected void srchStudBtn_Click(object sender, EventArgs e)
        {
            string idnum = searchId.Text;
            using (SqlConnection con = new SqlConnection(constring))
            {
                try
                {
                    using (var db = new SqlConnection(constring))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;

                            cmd.CommandText = "SELECT * FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = '" + idnum + "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {
                                theDiv.Visible = Visible;
                                TxtLname.Text = rdr["STUD_LASTNAME"].ToString();
                                TxtFname.Text = rdr["STUD_FIRSTNAME"].ToString();
                                TxtMname.Text = rdr["STUD_MIDDLENAME"].ToString();
                                string gender = rdr["STUD_GENDER"].ToString();
                                if (gender == "Male")
                                {
                                    radlGender.SelectedIndex = 0;
                                }
                                else
                                {
                                    radlGender.SelectedIndex = 1;
                                }
                            }

                        }

                    }

                }
                catch (Exception ex)
                {
                }
            }
        }
    }
}

  