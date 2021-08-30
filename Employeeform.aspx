<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employeeform.aspx.cs" Inherits="Employeeform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"/>
    <style type="text/css">
        .style1
        {
            width: 54%;
        }
        .style2
        {
            width: 53px;
        }
        .style3
        {
            width: 541px;
            margin-left: 40px;
            text-align: left;
        }
        .style4
        {
            width: 389px;
            text-align: right;
        }
        .style5
        {
            width: 389px;
            text-align: right;
            height: 26px;
        }
        .style6
        {
            width: 53px;
            height: 26px;
        }
        .style7
        {
            width: 541px;
            margin-left: 40px;
            text-align: left;
            height: 26px;
        }
    </style>
</head>
<body>
<div class="top_menubar">
        <div class="profile">
            <div class="profile-details">
                <asp:Label ID="Label3" runat="server" Text="Welcome Admin" Font-Size="Larger" 
                    Font-Bold="True"></asp:Label><br />
                <a href="Default.aspx">LogOut</a>
            </div>
            <div class="picture">
                <img src="login.png" alt="Profile Image" width="50px" height="100%"/></div>
        </div>
    </div>


 <div class="side_menubar">
        <ul>
          <li><a href="" class="active"><i class="bi bi-list" style="font-size:xx-large;"></i></a></li>
            <br />
            <br />
          <li><a href="Homepage.aspx"><i class="bi bi-house-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="Employeeform.aspx" target="_self"><i class="bi bi-person-plus-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="Employeelist.aspx" target="_self"><i class="bi bi-people-fill" style="font-size:xx-large"></i></a></li>
        </ul>
     </div>  


 <div class="Content">
       <form id="form1" runat="server">
    <div style="text-align: center">
    
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="New Employee"></asp:Label>
        <br />
        <table class="style1" align="center" style="border: thick double #000000">
            <tr>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" placeholder="Employeeid" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="116px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" placeholder="Firstname" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="114px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:TextBox ID="TextBox5" placeholder="Lastname" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox6" placeholder="Salary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:TextBox ID="TextBox7" placeholder="Email" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox8" placeholder="Startdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:TextBox ID="TextBox9" placeholder="phoneno" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="114px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Add Employee" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" Text="Cancel"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Label"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    </div>  
    <div class="footer">
        <div class="foot-text">
            <p>@Employee Management System</p>
        </div>
    </div>
    
</body>
</html>
