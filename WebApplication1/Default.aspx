<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" runat="server">
 
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="text-center mt-5">
        <h2>Welcome to Our Home Decor Store</h2>
        <p class="lead mt-3">
           At our online home decor store, we believe your home should reflect your personality. That's why we offer
            a wide range of high-quality, elegant, and affordable decor pieces that can transform any space into a
            warm and welcoming environment.
        </p>
    </div>

    <div class="row justify-content-center mt-5">
        <div class="col-md-4 mb-4">
            <img src="Images/sofa.jpg" class="img-fluid rounded shadow" alt="Sofa" />
        </div>
        <div class="col-md-4 mb-4">
            <img src="Images/lamp.jpg" class="img-fluid rounded shadow" alt="Lamp" />
        </div>
        <div class="col-md-4 mb-4">
            <img src="Images/decor.jpg" class="img-fluid rounded shadow" alt="Decor" />
        </div>
    </div>

    <div class="container text-center mt-5">
    <h3 class="mb-4">Why Choose Us?</h3>
    <div class="row justify-content-center">
        <div class="col-md-4 mb-3">
            <i class="bi bi-truck fs-1 text-primary"></i>
            <h5 class="mt-2">Fast & Free Shipping</h5>
            <p class="small">Enjoy fast, reliable delivery on all orders over $150 — straight to your door.</p>
        </div>
        <div class="col-md-4 mb-3">
            <i class="bi bi-award fs-1 text-success"></i>
            <h5 class="mt-2">Quality Guaranteed</h5>
            <p class="small">We handpick every item to ensure it meets our high standards for style and durability.</p>
        </div>
        <div class="col-md-4 mb-3">
            <i class="bi bi-chat-dots fs-1 text-warning"></i>
            <h5 class="mt-2">Personalized Support</h5>
            <p class="small">Our team is here to help — whether it’s styling advice or order assistance.</p>
        </div>
    </div>
</div>

<div class="container mt-5 mb-5">
    <h3 class="text-center mb-4">What Our Customers Say</h3>
    <div class="row justify-content-center g-4">

        <!-- Testimonial 1 -->
        <div class="col-md-4">
            <div class="p-4 border rounded bg-light h-100 text-center">
                <img src="Images/user1.jpg" class="rounded-circle testimonial-img" alt="Emily" />
                <p class="fst-italic">"Beautiful and affordable decor! My living room has never looked better."</p>
                <strong>- Emily R.</strong>
            </div>
        </div>

        <!-- Testimonial 2 -->
        <div class="col-md-4">
            <div class="p-4 border rounded bg-light h-100 text-center">
                <img src="Images/user2.jpg" class="rounded-circle testimonial-img" alt="Jason" />
                <p class="fst-italic">"Fast delivery and amazing quality. Will definitely order again."</p>
                <strong>- Jason M.</strong>
            </div>
        </div>

        <!-- Testimonial 3 -->
        <div class="col-md-4">
            <div class="p-4 border rounded bg-light h-100 text-center">
                <img src="Images/user3.jpg" class="rounded-circle testimonial-img" alt="Sarah"/>
                <p class="fst-italic">"Excellent customer service. Helped me choose the perfect style!"</p>
                <strong>- Sarah K.</strong>
            </div>
        </div>

    </div>
</div>



</asp:Content>
