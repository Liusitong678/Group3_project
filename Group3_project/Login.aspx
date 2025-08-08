<%@ Page  Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Group3_project.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container mt-5">
        <div class="row w-100 justify-content-center">
            <div class="col-md-6">
                <div class="card p-4 shadow login-box">
                    <h2 class="text-center mb-4">Login</h2>

                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger d-block mb-2" />

                    <div class="form-group">
                        <asp:Label ID="lblfirstname" runat="server" Text="First Name" CssClass="form-label" />
                        <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mt-3">
                        <asp:Label ID="lbllastname" runat="server" Text="Last Name" CssClass="form-label" />
                        <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control" />
                    </div>

                    <div class="d-flex justify-content-between mt-4">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary w-45" OnClick="btnlogin_Click" />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-secondary w-45" OnClick="btncancel_Click" CausesValidation="false" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
