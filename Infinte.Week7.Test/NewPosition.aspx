<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPosition.aspx.cs" Inherits="Infinte.Week7.Test.NewPosition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="align-content-center">
    <form id="form1" runat="server">
        <div class="container">

            <div class="row mt-4">
                <h1>Create New Position</h1>
            </div>

            <div class="row mt-2">
                <label class="form-label col-md-4"><b>Position Code</b></label>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <asp:TextBox ID="TxtPositionCode" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter Position Code" ControlToValidate="TxtPositionCode" ID="RfvPositionCode" ForeColor="Red" Display="Dynamic" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <label class="form-label col-md-4"><b>Description</b></label>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <asp:TextBox ID="TxtDescription" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter Description" ControlToValidate="TxtDescription" ID="RfvDescription" ForeColor="Red" Display="Dynamic" runat="server" />
                </div>
            </div>

            <div class="row mt-2">
                <label class="form-label col-md-4"><b>Year</b></label>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <asp:DropDownList CssClass="form-select" ID="DdlYear" runat="server">
                        <asp:ListItem Text="--Select--" Value="0" />
                        <asp:ListItem Text="2023" Value="2023" />
                        <asp:ListItem Text="2024" Value="2024" />
                        <asp:ListItem Text="2025" Value="2025" />
                        <asp:ListItem Text="2026" Value="2026" />
                        <asp:ListItem Text="2027" Value="2027" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ErrorMessage="Please Select a Year" ID="RfvYear" InitialValue="0" ForeColor="Red" Display="Dynamic" ControlToValidate="DdlYear" runat="server" />
                </div>
            </div>

            <div class="row mt-2">
                <label class="form-label col-md-4"><b>Budgeted Strength</b></label>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <asp:TextBox ID="TxtBudget" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter Budgeted Strength" ControlToValidate="TxtBudget" ID="RfvBudget" ForeColor="Red" Display="Dynamic" runat="server" />
                </div>
            </div>

            <div class="row mt-2">
                <label class="form-label col-md-4"><b>Current Strength</b></label>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <asp:TextBox ID="TxtCurrent" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter Current Strength" ControlToValidate="TxtCurrent" ID="RfvCurrent" ForeColor="Red" Display="Dynamic" runat="server" />
                </div>
            </div>

            <div class="row mt-3">
                <div class="mb-2">
                    <asp:Button Text="Add New" ID="BtnSubmit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" runat="server" />
                    <asp:Button Text="Reset" ID="BtnReset" CssClass="btn btn-danger" CausesValidation="false" runat="server" OnClick="BtnReset_Click" />
                </div>
            </div>

            <div class="row mt-5">
                <asp:Label Text="" ID="LblMessage" runat="server" />
            </div>
                    
        </div>
    </form>
</body>
</html>

