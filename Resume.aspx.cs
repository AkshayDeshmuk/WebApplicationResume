using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplicationResume
{
    public partial class Resume : System.Web.UI.Page
    {
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            var name = TextBoxFirstName.Text;
            var lastName = TextBoxLastName.Text;
            var telephone = TextBoxPhoneNo.Text;
            var email = TextBoxEmail.Text;
            var gender = Gender();
            var education = Education();
            var date = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            var selectedSkills = SelectedSkills();
            
            var folderPath = Server.MapPath($"~/App_Data/{name}_{lastName}");            
            Directory.CreateDirectory(folderPath);

            var resumePath = $"{folderPath}\\Resume.txt";
            System.IO.File.AppendAllText(resumePath, $"FirstName = {name} | LastName = {lastName} | Telephone No = {telephone} | Date of Birth={date} | Email={email} | Gender={gender} | Education={education} | {selectedSkills } |\n");

            if (FileUploadImage.HasFile)
            {
                var imagePath = $"{folderPath}\\{FileUploadImage.FileName}";
                FileUploadImage.SaveAs(imagePath);
            }

            LabelStatus.Text = "Thank you!! Your data was successfully saved";

        }
        private string SelectedSkills()
        {
            var selectedSkills = "";
            foreach (ListItem item in CheckBoxListTechnicalSkills.Items)
            {
                if (item.Selected)
                {
                    selectedSkills += item.Value + " ";
                }
            }

            selectedSkills = selectedSkills.Substring(0, selectedSkills.Length - 1);
            return selectedSkills;
        }
        private string Gender()
        {
            var gender = "";
            if (RadioButtonMale.Checked == true)
            {
                gender = RadioButtonMale.Text;
            }
            else
            {
                gender = RadioButtonFemale.Text;
            }
            return gender;
        }
        private string Education()
        {
            var education = "";
            switch (DropDownListEducation.Text)
            {
                case "BE":
                    education = "BE";
                    break;
                case "BTECH":
                    education = "BTECH";
                    break;
                case "MCA":
                    education = "MCA";
                    break;
                case "BCA":
                    education = "BCA";
                    break;
                case "ME":
                    education = "ME";
                    break;

            }
            return education;
        }
    }
}