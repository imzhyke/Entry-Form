using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace StudentEntryForm
{
    public partial class Instructor_Entry_Form : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtHeight(26);
        }

        protected void AddInst_Click(object sender, EventArgs e)
        {
            string Lname = TxtLname.Text;
            string Fname = TxtFname.Text;
            string Mname = TxtMname.Text;
            string FullName = String.Concat(Lname, ", ", Fname, " ",Mname.Substring(0,1),".");
            string gender = radlGender.SelectedValue;
            string email = String.Concat(Fname.ToLower(), ".", Lname.ToLower(), "@ctu.edu.ph");
            string permAdd = TxtPerAdd.Text;
            string elemSchool = TxtElem.Text;
            string secSchool = TxtSec.Text;
            string colleSchool = TxtColle.Text;
            string idNum;
            int rowsAffected ;

            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO INST_ENTRY_TABLE(INST_FULLNAME, INST_EMAIL, INST_GENDER, INST_PERADD, INST_ELEM, INST_SEC, INST_COLLE) " +
                    "VALUES (@fullname, @email, @gender,@permanent, @elem, @sec, @college)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@fullname", FullName);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@permanent", permAdd);
                    cmd.Parameters.AddWithValue("@elem", elemSchool);
                    cmd.Parameters.AddWithValue("@sec", secSchool);
                    cmd.Parameters.AddWithValue("@college", colleSchool);
                    con.Open();

                    rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected < 1)
                    {
                        Response.Write("<script>alert ('Unable to add contact')</script>");
                    }

                    con.Close();
                }

                try
                {
                    using (var db = new SqlConnection(constring))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;

                            cmd.CommandText = "SELECT * FROM INST_ENTRY_TABLE WHERE INST_FULLNAME = '" + FullName+ "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {
                                idNum = rdr["INST_IDNUM"].ToString();
                                if (rowsAffected >= 1)
                                {
                                    Response.Write("<script>alert ('NEW INSTRUCTOR HAS BEEN ADDED!\\n" +
                                        "\\nIdentification Number: " + idNum + "" +
                                        "\\nName: " + Lname + ", " + Fname + " " + Mname.Substring(0, 1) + "." +
                                        "\\nEmail Address: " + email + "')</script>");
                                }

                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                }
            }
            ClearContent();
            txtHeight(32);
        }
        public void ClearContent()
        {
            TxtLname.Text = "";
            TxtFname.Text = "";
            TxtMname.Text = "";
            radlGender.ClearSelection();
            TxtPerAdd.Text = "";
            TxtElem.Text = "";
            TxtSec.Text = "";
            TxtColle.Text = "";
        }
        public void txtHeight(int high)
        {
            TxtLname.Height = high;
            TxtFname.Height = high;
            TxtMname.Height = high;
            TxtPerAdd.Height = high;
            TxtElem.Height = high;
            TxtSec.Height = high;
            TxtColle.Height = high;

        }
    }
}