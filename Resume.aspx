<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="WebApplicationResume.Resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jobs</title>
    <style type="text/css">
        body {
            font-family: "arial";
            background-image: url(nature1.jpg);
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <img src="jlogo1.jpg" />
                <h1 style="color: DarkCyan">Jobs.com</h1>
                <h2>Fill the below resume</h2>
                <h3>Resume</h3>
                <table bgcolor="grey" style="color: blue">

                    <tr>
                        <td><b>FirstName:</b></td>
                        <td>
                            <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>LastName:</b></td>
                        <td>
                            <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Email:</b></td>
                        <td>
                            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Date of Birth:</b></td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" Height="16px" Style="margin-top: 17px" Width="73px"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Phone No</b></td>
                        <td>
                            <asp:TextBox ID="TextBoxPhoneNo" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Gender:</b></td>
                        <td>
                            <asp:RadioButton ID="RadioButtonMale" runat="server" Text="Male" />
                            <asp:RadioButton ID="RadioButtonFemale" runat="server" Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td><b>Education:</b></td>
                        <td>
                            <asp:DropDownList ID="DropDownListEducation" runat="server">
                                <asp:ListItem>BE</asp:ListItem>
                                <asp:ListItem>BTECH</asp:ListItem>
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>ME</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td><b>Technical Skills:</b></td>
                        <td>
                            <asp:CheckBoxList ID="CheckBoxListTechnicalSkills" runat="server" Height="108px" Style="margin-left: 0px" Width="168px">
                                <asp:ListItem>Java</asp:ListItem>
                                <asp:ListItem>C#</asp:ListItem>
                                <asp:ListItem>Angular</asp:ListItem>
                                <asp:ListItem>html</asp:ListItem>
                                <asp:ListItem>CSS</asp:ListItem>
                            </asp:CheckBoxList></td>


                    </tr>
                    <tr>
                        <td><b>Upload Image</b></td>
                        <td>
                            <asp:FileUpload ID="FileUploadImage" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label runat="server" ID="LabelStatus"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
</body>
</html>
