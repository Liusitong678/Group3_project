<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card p-4 shadow">
                    <h2 class="text-center mb-4">Admin Login</h2>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger d-block mb-3" />
                    <div class="form-group">
                        <asp:Label ID="lblUsername" runat="server" Text="Username" AssociatedControlID="txtUsername" CssClass="form-label" />
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" aria-required="true" />
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                            ErrorMessage="Username is required." CssClass="text-danger" Display="Dynamic" />
                    </div>
                    <div class="form-group mt-3">
                        <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword" CssClass="form-label" />
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" aria-required="true" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required." CssClass="text-danger" Display="Dynamic" />
                    </div>
                    <div class="d-flex justify-content-between mt-4">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary w-45" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary w-45" OnClick="btnCancel_Click" CausesValidation="false" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>