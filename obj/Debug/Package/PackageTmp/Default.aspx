<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PG.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
  <head>
  
  <link href="~/Styles.css" rel="stylesheet" type="text/css" />
  
</script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  </head>
    <title>Foto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu_it">
    <div class="parent">
    <div class="child">
    <div style="height: 600px">
    <div style="text-align:center">
    <div id="img">
    <div></div>
        <asp:FileUpload ID="OurFileUpload" runat="server" />
        <asp:Button runat="server" ID="ButtonAdd" Text="Добавить" OnClick="Add_Click" />
        </div>
        <asp:Repeater runat="server" ID="Repeater1">
           
           
            <ItemTemplate>       
            <div style="display: inline-block">
           <div style="text-align:center">
             <asp:Button runat="server" Text="Удаление" 
             ID="ButtonRemove" 
             OnClick="btn_Click" 
             CommandArgument='<%# Eval("MyID") %>'
             UseSubmitBehavior="False" />
     
     </div>
       <div>
                <img width="100" height="100" src="<%# Eval("jpg") %>" />
          
         </div>
        </div>
            </ItemTemplate>
            
        </asp:Repeater>
    </div>
    </div>
    
      </div>
       </div>
        </div>
         
          
 </form>

</body>
</html>
