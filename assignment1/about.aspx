<%@ Page Language="C#" MasterPageFile="~/Game.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="assignment1.about" %>

<asp:Content ID="Game" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="jumbotron">
        <div class="container">
            <h2><%: Title %>.</h2>
            <h3>The game provides: </h3>
            <ul class="list-group">
                <li class="list-group-item">1) Numbers of games won</li>
                <li class="list-group-item">2) Numbers of games lost</li>
                <li class="list-group-item">3) Winning Percentage</li>
                <li class="list-group-item">4) Total points scored</li>
                <li class="list-group-item">5) Total pointes allowed</li>
                <li class="list-group-item">6) Point Differential</li>
                <li class="list-group-item">7) Total Spectators</li>
                <li class="list-group-item">8) Average Spectators</li>
            </ul>
        </div>
        </div>
    <div class="jumbotron">
           <div class="container-fluid">
            <p><a href="http://www.nikunjvala.com/" target="_blank">Click Here</a> to view my portfolio</p>
        </div>
    </div>
</asp:Content>


