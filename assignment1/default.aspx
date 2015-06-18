<%@ Page Title="GameCalculator" Language="C#" MasterPageFile="~/Game.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="assignment1._default" %>

<asp:Content ID="Game" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="jumbotron">
        <div class="container">
            <div class="alert alert-info">
                All Fields are required.
            </div>

            <div class="row">
                <!--Game 1 section-->
                <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <h3>Game 1</h3>
                    <!--Game 1 controls-->
                    <!--create radio button for win and lost selection, Set require field validator-->
                    <div>
                        <asp:label id="lblResult1" associatedcontrolid="rblResult1" runat="server">Result 1:</asp:label>
                        <asp:radiobuttonlist id="rblResult1" cssclass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:radiobuttonlist>
                        <asp:requiredfieldvalidator controltovalidate="rblResult1" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please select result" runat="server"></asp:requiredfieldvalidator>
                    </div>
                    <!--create lable and text input for point scored, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPScored1" associatedcontrolid="txtPScored1" runat="server">Points Scored:</asp:label>
                        <asp:textbox id="txtPScored1" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPScored1" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter scored points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPScored1" controltovalidate="txtPScored1" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Points Scored must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create compare validator for point scored vs point allowed-->
                    <div class="alert-warning text-warning">
                        <asp:comparevalidator id="cvPoints1" controltocompare="txtPAllowed1" controltovalidate="txtPScored1" display="Dynamic" errormessage="Points Scored and Points Allowed must be different." operator="NotEqual" runat="server"></asp:comparevalidator>
                    </div>
                    <!--create lable and text input for point allowed, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPAllowed" associatedcontrolid="txtPAllowed1" runat="server">Points Allowed:</asp:label>
                        <asp:textbox id="txtPAllowed1" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPAllowed1" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter allowed points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPAllowed1" controltovalidate="txtPAllowed1" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Points Allowed must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create lable and text input for Spectator, Set require field and range validator-->
                    <div>
                        <asp:label id="lblSpec1" associatedcontrolid="txtSpec1" runat="server">Number of Spectator:</asp:label>
                        <asp:textbox id="txtSpec1" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtSpec1" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter numbers of Spectators" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvSpec1" controltovalidate="txtSpec1" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Enter No. of Spectators between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>

                    </div>
                </div>
                <!--Game 2 section-->
                <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <h3>Game 2</h3>
                    <!--Game 2 controls-->
                    <!--create radio button for win and lost selection, Set require field validator-->
                    <div>
                        <asp:label id="lblResult2" associatedcontrolid="rblResult2" runat="server">Result 2:</asp:label>
                        <asp:radiobuttonlist id="rblResult2" cssclass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:radiobuttonlist>
                        <asp:requiredfieldvalidator controltovalidate="rblResult2" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please select result." runat="server"></asp:requiredfieldvalidator>
                    </div>
                    <!--create lable and text input for point scored, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPScored2" associatedcontrolid="txtPScored2" runat="server">Points Scored:</asp:label>
                        <asp:textbox id="txtPScored2" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPScored2" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter scored points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPScored2" controltovalidate="txtPScored2" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Points Scored must be between 0 to 15." maximumvalue="15" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create compare validator for point scored vs point allowed-->
                    <div>
                        <asp:comparevalidator id="cvPoints2" controltocompare="txtPAllowed2" cssclass="alert-warning text-warning" controltovalidate="txtPScored2" display="Dynamic" errormessage="Points Scored and Points Allowed must be different." operator="NotEqual" runat="server"></asp:comparevalidator>
                    </div>
                    <!--create lable and text input for point allowed, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPAllowed2" associatedcontrolid="txtPAllowed2" runat="server">Points Allowed:</asp:label>
                        <asp:textbox id="txtPAllowed2" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPAllowed2" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter allowed points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPAllowed2" controltovalidate="txtPAllowed2" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Points Allowed must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create lable and text input for Spectator, Set require field and range validator-->
                    <div>
                        <asp:label id="lblSpec2" associatedcontrolid="txtSpec2" runat="server">Number of Spectator:</asp:label>
                        <asp:textbox id="txtSpec2" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtSpec2" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter numbers of Spectators." runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvSpec2" controltovalidate="txtSpec2" cssclass="alert-warning text-warning" display="Dynamic" errormessage="Enter No. of Spectators between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                </div>
                <!--Game 3 section-->
                <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <h3>Game 3</h3>
                    <!--Game 3 controls-->
                    <!--create radio button for win and lost selection, Set require field validator-->
                    <div>
                        <asp:label id="lblResult3" associatedcontrolid="rblResult3" runat="server">Result 3:</asp:label>
                        <asp:radiobuttonlist id="rblResult3" cssclass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:radiobuttonlist>
                        <asp:requiredfieldvalidator controltovalidate="rblResult3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please select result." runat="server"></asp:requiredfieldvalidator>
                    </div>
                    <!--create lable and text input for point scored, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPScored3" associatedcontrolid="txtPScored3" runat="server">Points Scored:</asp:label>
                        <asp:textbox id="txtPScored3" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPScored3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter scored points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPScored3" controltovalidate="txtPScored3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Scored must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create compare validator for point scored vs point allowed-->
                    <div>
                        <asp:comparevalidator id="cvPoints3" controltocompare="txtPAllowed3" controltovalidate="txtPScored3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Scored and Points Allowed must be different." operator="NotEqual" runat="server"></asp:comparevalidator>
                    </div>
                    <!--create lable and text input for point allowed, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPAllowed3" associatedcontrolid="txtPAllowed3" runat="server">Points Allowed:</asp:label>
                        <asp:textbox id="txtPAllowed3" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPAllowed3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter allowed points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPAllowed3" controltovalidate="txtPAllowed3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Allowed must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create lable and text input for Spectator, Set require field and range validator-->
                    <div>
                        <asp:label id="lblSpec3" associatedcontrolid="txtSpec3" runat="server">Number of Spectator:</asp:label>
                        <asp:textbox id="txtSpec3" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtSpec3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter numbers of Spectators." runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvSpec3" controltovalidate="txtSpec3" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Enter No. of Spectators between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                </div>
                <!--Game 4 section-->
                <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <h3>Game 4</h3>
                    <!--Game 4 controls-->
                    <!--create radio button for win and lost selection, Set require field validator-->
                    <div>
                        <asp:label id="lblResult4" associatedcontrolid="rblResult4" runat="server">Result 4:</asp:label>
                        <asp:radiobuttonlist id="rblResult4" cssclass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:radiobuttonlist>
                        <asp:requiredfieldvalidator controltovalidate="rblResult4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please select result." runat="server"></asp:requiredfieldvalidator>
                    </div>
                    <!--create lable and text input for point scored, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPScored4" associatedcontrolid="txtPScored4" runat="server">Points Scored:</asp:label>
                        <asp:textbox id="txtPScored4" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPScored4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter scored points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPScored4" controltovalidate="txtPScored4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Scored must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create compare validator for point scored vs point allowed-->
                    <div>
                        <asp:comparevalidator id="cvPoints4" controltocompare="txtPAllowed4" controltovalidate="txtPScored4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Scored and Points Allowed must be different." operator="NotEqual" runat="server"></asp:comparevalidator>
                    </div>
                    <!--create lable and text input for point allowed, Set require field and range validator-->
                    <div>
                        <asp:label id="lblPAllowed4" associatedcontrolid="txtPAllowed4" runat="server">Points Allowed:</asp:label>
                        <asp:textbox id="txtPAllowed4" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtPAllowed4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter allowed points value" runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvPAllowed4" controltovalidate="txtPAllowed4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Points Allowed must be between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                    <!--create lable and text input for Spectator, Set require field and range validator-->
                    <div>
                        <asp:label id="lblSpec4" associatedcontrolid="txtSpec4" runat="server">Number of Spectator:</asp:label>
                        <asp:textbox id="txtSpec4" textmode="Number" cssclass="form-control" runat="server"></asp:textbox>
                        <asp:requiredfieldvalidator controltovalidate="txtSpec4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Please enter numbers of Spectators." runat="server"></asp:requiredfieldvalidator>
                        <asp:rangevalidator id="rvSpec4" controltovalidate="txtSpec4" cssclass="alert-danger text-danger" display="Dynamic" errormessage="Enter No. of Spectators between 0 to 20." maximumvalue="20" minimumvalue="0" type="Integer" runat="server"></asp:rangevalidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <asp:button class="btn btn-primary" runat="server" text="Calculate" onclick="btnSubmit_Click" />
        </div>
        <div class="container well center-block" id="summary" runat="server" visible="false">
            <h2>Summary:</h2>
            <div>
                <label>Number of Games won: </label>
                <asp:label id="lblGW" runat="server"></asp:label>
            </div>
            <div>
                <label>Number of Games Lost: </label>
                <asp:label id="lblGL" runat="server"></asp:label>
            </div>
            <div>
                <label>Winning %: </label>
                <asp:label id="lblWP" runat="server"></asp:label>
            </div>
            <div>
                <label>Total Points Scored: </label>
                <asp:label id="lblTPS" runat="server"></asp:label>
            </div>
            <div>
                <label>Total Point Allowed: </label>
                <asp:label id="lblTPA" runat="server"></asp:label>
            </div>
            <div>
                <label>Differential of Points: </label>
                <asp:label id="lblDOP" runat="server"></asp:label>
            </div>
            <div>
                <label>Total Spectators: </label>
                <asp:label id="lblTS" runat="server"></asp:label>
            </div>
            <div>
                <label>Average Spectators: </label>
                <asp:label id="lblAS" runat="server"></asp:label>
            </div>
        </div>
    </div>
</asp:Content>
