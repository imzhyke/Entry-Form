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
    public partial class Search_Student : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtHeight(20);
            theDiv.Visible = false;
        }

        protected void srchStudBtn_Click(object sender, EventArgs e)
        {
            string studID = searchId.Text;
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

                            cmd.CommandText = "SELECT * FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = '" + studID + "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {

                                theDiv.Visible = true;
                                TxtLname.Text = rdr["STUD_LASTNAME"].ToString();
                                TxtFname.Text = rdr["STUD_FIRSTNAME"].ToString();
                                TxtMname.Text = rdr["STUD_MIDDLENAME"].ToString();
                                TxtCurAdd.Text = rdr["STUD_CURADD"].ToString();
                                TxtPerAdd.Text = rdr["STUD_PERADD"].ToString();
                                TxtElem.Text = rdr["STUD_ELEM"].ToString();
                                TxtJunHigh.Text = rdr["STUD_JUNHIGH"].ToString();
                                TxtSenHigh.Text = rdr["STUD_SENHIGH"].ToString();

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
                            else
                            {
                                Response.Write("<script>alert ('STUDENT NOT REGISTERED!')</script>");
                            }

                        }

                    }

                }
                catch (Exception ex)
                {
                }
            }
        }
        public void txtHeight(int high)
        {
            TxtLname.Height = high;
            TxtFname.Height = high;
            TxtMname.Height = high;
            TxtCurAdd.Height = high;
            TxtPerAdd.Height = high;
            TxtElem.Height = high;
            TxtJunHigh.Height = high;
            TxtSenHigh.Height = high;

        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            using (SqlConnection conx = new SqlConnection(constring))
            {
                string studID = searchId.Text;
                string query = "DELETE FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = " + studID + "";
                conx.Open();
                SqlCommand cmd = new SqlCommand(query, conx);
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected >= 1)
                {
                    Response.Write("<script>alert ('STUDENT WITH ID NUMBER (" + studID + ") HAS BEEN DELETED!')</script>");
                }
                conx.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string Lname = TxtLname.Text;
            string Fname = TxtFname.Text;
            string Mname = TxtMname.Text;
            string gender = radlGender.SelectedValue;
            string email = String.Concat(Fname.ToLower(), ".", Lname.ToLower(), "@ctu.edu.ph");
            string currAdd = TxtCurAdd.Text;
            string permAdd = TxtPerAdd.Text;
            string elemSchool = TxtElem.Text;
            string junSchool = TxtJunHigh.Text;
            string senSchool = TxtSenHigh.Text;
            string idNum = searchId.Text;

            using (SqlConnection con = new SqlConnection(constring))
            {
                string query = "UPDATE STUD_ENTRY_TABLE SET STUD_LASTNAME = " + Lname + "STUD_FIRSTNAME= " + Fname + ", " +
                    "STUD_MIDDLENAME= " + Mname + ", " +
                    "STUD_EMAIL= " + email + ", " +
                    "STUD_GENDER= " + gender + ", " +
                    "STUD_CURADD= " + currAdd + ", " +
                    "STUD_PERADD= " + permAdd + ", " +
                    "STUD_ELEM= " + elemSchool + ", " +
                    "STUD_JUNHIGH= " + junSchool + ", " +
                    "STUD_SENHIGH= " + senSchool + "WEHERE STUD_IDNUM = "+idNum+"";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected >= 1)
                {
                    Response.Write("<script>alert ('DETAILS OF STUDENT WITH ID NUMBER (" + idNum + ") HAS BEEN UPDATED!')</script>");
                }

                con.Close();
            }
        }
    }
}