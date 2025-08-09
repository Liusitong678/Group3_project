<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Contact Us</h2>
        <p class="text-center mb-5">We’d love to hear from you! Fill out the form below, and our team will get back to you soon.</p>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card p-4 shadow">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger d-block mb-3" />

                    <div class="form-group">
                        <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName" CssClass="form-label" />
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" aria-required="true" />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail" CssClass="form-label" />
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" aria-required="true" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required." CssClass="text-danger" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Invalid email format." CssClass="text-danger" Display="Dynamic"
                            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" />
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblSubject" runat="server" Text="Subject" AssociatedControlID="txtSubject" CssClass="form-label" />
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblMessageText" runat="server" Text="Message" AssociatedControlID="txtMessage" CssClass="form-label" />
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" aria-required="true" />
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage"
                            ErrorMessage="Message is required." CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="d-flex justify-content-between mt-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-primary w-45" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary w-45" OnClick="btnCancel_Click" CausesValidation="false" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5 text-center">
            <h3 class="mb-4">Other Ways to Reach Us</h3>
            <div class="row justify-content-center">
                <div class="col-md-4 mb-3">
                    <i class="bi bi-telephone fs-1 text-primary"></i>
                    <h5 class="mt-2">Phone</h5>
                    <p class="small">(123) 456-7890</p>
                </div>
                <div class="col-md-4 mb-3">
                    <i class="bi bi-envelope fs-1 text-success"></i>
                    <h5 class="mt-2">Email</h5>
                    <p class="small"><a href="mailto:support@homecorstore.com">support@homecorstore.com</a></p>
                </div>
                <div class="col-md-4 mb-3">
                    <i class="bi bi-geo-alt fs-1 text-warning"></i>
                    <h5 class="mt-2">Address</h5>
                    <p class="small">123 Decor Lane, Design City, DC 12345</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>