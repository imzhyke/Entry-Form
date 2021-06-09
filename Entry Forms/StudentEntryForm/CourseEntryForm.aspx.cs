using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentEntryForm
{
    public partial class CourseEntryForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backBtn_Click(object sender, EventArgs e)
        {   

            Response.Redirect("StudentEntryForm.aspx");
        }

        protected void nextBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("Enrollment Form.aspx");
        }

        protected void AddStudentBtn_Click(object sender, EventArgs e)
        {
            rfvCode.Enabled = true;
        }
    }
}