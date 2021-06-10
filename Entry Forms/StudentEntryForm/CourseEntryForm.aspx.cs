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
    public partial class CourseEntryForm : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddStudentBtn_Click(object sender, EventArgs e)
        {
            string Code = TxtCode.Text;
            string Course = TxtCourse.Text;
            string Unit = TxtUnit.Text;
            string Program = ddlProg.SelectedValue;

            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO COUR_ENTRY_TABLE(COUR_CODE, COUR_COUR, COUR_UNIT, COUR_PROG) " +
                    "VALUES (@code, @course, @unit, @program)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@code", Code);
                    cmd.Parameters.AddWithValue("@course", Course);
                    cmd.Parameters.AddWithValue("@unit", Unit);
                    cmd.Parameters.AddWithValue("@program", Program);
                    con.Open();

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected >= 1)
                    {
                        Response.Write("<script>alert ('NEW COURSE HAS BEEN ADDED!\\n" +
                            "Course Code: "+Code+"\\n" +
                            "Course: "+Course+"\\n" +
                            "Unit: "+Unit+"\\n" +
                            "Program: "+Program+"')</script>");
                    }
                    else 
                    {
                        Response.Write("<script>alert('UNABLE TO ADD NEW COURSE!')</script>");
                    }

                    con.Close();
                    clearSelect();
                }
            }

        }
        public void clearSelect()
        {
            TxtCode.Text = "";
            TxtCourse.Text = "";
            TxtUnit.Text = "";
            ddlProg.SelectedIndex = 0;
        }

    }
}