<%@ Page Title="Products" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="ChoosMart_App.ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main" style="margin-top: -3em;">
        
        <div id="categoryBar">
            <div class="categoryTile">
                <div class="iconWrapper">
                    <asp:ImageButton ID="imgBtnSnacks" runat="server" ImageUrl="~/images/snacks.svg" CssClass="icon" OnClick="imgBtnSnacks_Click" />
                </div>
                <p>Snacks</p>
            </div>

            <div class="categoryTile">
                <div class="iconWrapper">
                    <asp:ImageButton ID="imgBtnDrinks" runat="server" ImageUrl="~/images/drinks.svg" CssClass="icon" OnClick="imgBtnDrinks_Click" />
                </div>
                <p>Drinks</p>
            </div>

            <div class="categoryTile">
                <div class="iconWrapper">
                    <asp:ImageButton ID="imgBtnDesserts" runat="server" ImageUrl="~/images/desserts.svg" CssClass="icon" OnClick="imgBtnDesserts_Click" />
                </div>
                <p>Desserts</p>
            </div>

            <div class="categoryTile">
                <div class="iconWrapper">
                    <asp:ImageButton ID="imgBtnPicks" runat="server" ImageUrl="~/images/picks.svg" CssClass="icon" OnClick="imgBtnPicks_Click" />
                </div>
                <p>Picks</p>
            </div>
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanelProducts" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div id="productList">
                    <asp:Repeater ID="rptProducts" runat="server">
                        <ItemTemplate>
                            <div class="productCard">
                                <img src="images/agnas.png" style="align-self: center; width: 3.5em;" />
                                <h2><%# Eval("ProductName") %></h2>
                                <p>$<%# Eval("Price") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="imgBtnSnacks" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="imgBtnDrinks" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="imgBtnDesserts" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="imgBtnPicks" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

    </div>

</asp:Content>