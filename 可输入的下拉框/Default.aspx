<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="可输入的下拉框._Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>可编辑可选择的下拉框</title>
    <meta charset="utf-8">

    <script src="js/jquery-1.3.1.js" type="text/javascript"></script>

</head>
<body>
    <form id="Form1" runat="server">
    <asp:DropDownList ID="DropDownList" runat="server" Width="180px" AutoPostBack="false"
        Style="position: absolute;" onchange="SearchChange();">
    </asp:DropDownList>
    <iframe id="DivShims" src="javascript:false;" scrolling="no" frameborder="0" style="position: absolute;
        height: 20px;" width="158px"></iframe>
    <input type="text" id="txtCName" runat="server" style="width: 158px; position: absolute;" />
    </form>
</body>
</html>

<script type="text/javascript">
    function SearchChange() {
        var ddl = document.getElementById("DropDownList");
        var index = ddl.selectedIndex;
        var Value = ddl.options[index].value; //获取选中下拉列表的值
        $("#txtCName").val(Value); //将选中的值赋值给input
    }
</script>

