<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employeelist.aspx.cs" Inherits="Employeelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"/>
</head>
<body>
     <div class="top_menubar">
        <div class="profile">
           <div class="profile-details">
                <asp:Label ID="Label1" runat="server" Text="Welcome Admin" Font-Size="Larger"></asp:Label><br />
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
          <li><a href="Employeeform.aspx" ><i class="bi bi-person-plus-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="Employeelist.aspx"><i class="bi bi-people-fill" style="font-size:xx-large"></i></a></li>
        </ul>
     </div>  
    <div class="Content">
        <div>
             <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="341px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </form>
        </div>
    </div>  
    <div class="footer">
         <div class="foot-text">
            <p>@Employee Management System</p>
        </div>
    </div>

    
</body>
</html>
