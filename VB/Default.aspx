﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridLookup ID="ASPxGridLookup1" runat="server" AutoGenerateColumns="False"
            DataSourceID="ads" KeyFieldName="CategoryID">
            <GridViewProperties>
                <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True"></SettingsBehavior>
            </GridViewProperties>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="true" ShowNewButton="true" ShowEditButton="true">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridLookup>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]"
            DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = ?" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description]) VALUES (?, ?)"
            UpdateCommand="UPDATE [Categories] SET [CategoryName] = ?, [Description] = ? WHERE [CategoryID] = ?"
            OnDeleting="ads_Modifying" OnInserting="ads_Modifying" OnUpdating="ads_Modifying">
            <DeleteParameters>
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>