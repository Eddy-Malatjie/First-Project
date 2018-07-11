<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html ng-app ="mrDelApp">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <%--  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>--%>
    <script type="text/javascript">
        var app = angular.module("mrDelApp", []);
        app.controller("myCtrl", function ($scope) {
            $("#btnRegister").click(function () {
             
                var fname = $("InputFirstName1").val();
                var lname = $("#InputLastName1").val();
                var email = $("#InputEmail1").val();
                var pwd = $("#id").val();
                var cellNo = $("#InputCellNumber1").val();
                var phoneNo = $("#InputPhoneNumber1").val();
                var ext = $("#InputExt1").val();
                var cellCarrier = $("#InputSelectCarrier1").val();
                var company = $("#idInputCompany1").val();
                var bDay = $("#InputBirthday1").val();
                var survey = $("#InputSurvey1").val();
                var chkEmail = $("#inputCheckBoxEmail1").val();
                var chkText = $("#inputCheckBoxText1").val();
                var DataString = $("#myForm").serialize();

                if (fname == '' || lname == '' || email == '' || pwd == ''
                   || phoneNo == '' )
                {
                    $("#msg").html("please fill all details")
                }
                else {
                    $.ajax({
                        type: 'POST',
                        url: 'http//127.0.0.1/angularSignUp/Webservice/save.cs',
                        data: DataString,
                        cache: false,
                        success: function (response) {
                            $("#msg").html(response);
                            var fname = $("InputFirstName1").val("");
                            var lname = $("#InputLastName1").val("");
                            var email = $("#InputEmail1").val("");
                            var pwd = $("#id").val("");
                            var cellNo = $("#InputCellNumber1").val("");
                            var phoneNo = $("#InputPhoneNumber1").val("");
                            var ext = $("#InputExt1").val("");
                            var cellCarrier = $("#InputSelectCarrier1").val("");
                            var company = $("#idInputCompany1").val("");
                            var bDay = $("#InputBirthday1").val("");
                            var survey = $("#InputSurvey1").val("");
                            var chkEmail = $("#inputCheckBoxEmail1").val("");
                            var chkText = $("#inputCheckBoxText1").val("");

                        }
                    });
                }
                return false;
            });
        });
    </script>
    
    <link href="customStyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>

   

     <form id="form1" runat="server">
    <div>
        
        <div class="container-fluid">
            <div class="row">


            </div>
                    
        <header class="navbar navbar-inverse navbar-fixed-top" role="banner"> 

<div class="container">

    <div class="navbar-header">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Sign In
  </button>  
    </div>
</div>    
           
 </header>
            </div>
   
     
     <div class="modal  fade in " id="myModal"  tabindex="-1" role="dialog"  >
        <div class="modal-dialog modalLogin">
            <div class="modal-content">
                <div class="container">
                <!--Modal header-->
                <div class="modal-header ">
                    <h4 class="col-12 modal-title text-center " style="text-align:center">Login or Continue</h4>
                   <!-- <button type="button" class="close" data-dismiss="Modal">&times;</button> -->
                    <a href="#" class="close" data-dismiss="modal" aria-label="close">&times;</a>
                </div>
                <!-- Modal Body-->
                <div class="modal-body">
                    
                 				 <br />
                        <div class ="row">
                        <ul class="nav nav-pills list-inline ">
                    <li >
                        <a data-toggle="tab" href="#">Login</a> </li>
                     <li>   <a data-toggle="tab" href="#">Create Account</a> </li>
                </ul>
                        </div>
               

<div class="row"> 
                  <br />
            </div>

 

               <div class="row" ">
                   <h3 class="col-12 text-center" >Create an account</h3>
               </div>

 <div class="alert alert-info">
                    "fields marked with * are required" 
               </div>

 <div class="row">

           <div class="col-sm-6 col-md-6  col-lg-6">
                <input type="email" class="form-control" id="InputEmail1" placeholder="*Email"/>
             </div>
          <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="password" class="form-control for" id="InputPassword1" placeholder="*Password"/>
                 
              
               </div>

                  </div>

 <div class="row"> 
                  <br />
            </div>
                    
<div class="row">

           <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="text" class="form-control" id="InputFirstName1" placeholder="*First Name"/>
             </div>
          <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="text" class="form-control" id="InputLastName1" placeholder="*Last Name"/>
                  </div>

                  </div>

                    
 <div class="row"> 
                  <br />
            </div>
                    

             <div class="row">

           <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="tel" class="form-control" id="InputCellNumber1" placeholder="Cell Number"/>
             </div>
          <div class="col-sm-3 col-md-3">
                <input type="tel" class="form-control" id="InputPhoneNumber1" placeholder="*Phone Number"/>
                 </div>
               <div class="col-sm-3 col-md-3">
                <input type="text" class="form-control" id="InputExt1" placeholder="*Ext"/>
                  </div>

                  </div>
                          
 <div class="row"> 
                  <br />
            </div>

                <div class="row">

           <div class="col-sm-6 col-md-6 col-lg-6">
                <select  id="InputSelectCarrier1"  class="form-control"> 

                <option value="" selected="selected">Select Cell Carrier</option>
                <option value="5">Alltell</option>
                <option value="4">AT&amp;T</option>
                <option value="14">Boost Mobile</option>
                <option value="64">C Spire</option>
                <option value="9">Cingular</option>
                <option value="13">Cricket</option>
                <option value="6">Metro PCS</option>
                <option value="12">Nextel</option>
                <option value="3">Powertel</option>
                <option value="10">Sprint</option>
                <option value="2">SunCom</option>
                <option value="7">T-Mobile</option>
                <option value="1">US Cellular</option>
                <option value="11">Verizon</option>
                <option value="8">Virgin Mobile</option>
                 </select>
             </div>
          <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="text" class="form-control" id="InputCompany1" placeholder="Company"/>
                  </div>

                  </div>


 <div class="row"> 
                  <br />
            </div>


                <div class="row">


            <div class="col-sm-6 col-md-6 col-lg-6">
                <input type="text" class="form-control" id="InputBirthday1" placeholder="Company"/>
                  </div>


           <div class="col-sm-6 col-md-6 col-lg-6">
                <select  id="InputSurvey1"  class="form-control"> 
                                                                          
<option value="" selected="selected">How did you hear about us?</option>
<option value="TV_COMMERCIAL">TV Commercial</option>
<option value="RADIO_AD">Radio Ad</option>
<option value="FRIEND">Friend</option>
<option value="FACEBOOK">FaceBook</option>
<option value="TWITTER">Twitter</option>
<option value="EMAIL">Email</option>
<option value="WEB_SEARCH">Web Search</option>
<option value="OTHER">Other</option>
 </select>
             </div>

 </div>
           

          <div class="row"> <br /></div>
               
 
                          <div class="row">

<div class="col-sm-12 col-md-12 col-lg-12">

    <fieldset class="checkbox">
<label > <input id="inputCheckBoxEmail1" type="checkbox" class="form-check-input" />I would like to receive status notification emails for my orders.</label>
    </fieldset>
    
     </div>
  </div>
 

<div class="row">
                        <br />
                </div>



 <div class="row">
                              

<div class="col-sm-12 col-md-12 col-lg-12">
<fieldset class="checkbox">
<label > <input id="inputCheckBoxText1" type="checkbox" class="form-check-input" />I would like to receive status notification texts for my orders.</label>
    </fieldset>
    
     </div>
                        </div>

     


 <div class="row"> <br />

     <span id="msg"></span>


     <div class="row">
 <div class="col-sm-12 col-md-12 col-lg-12 " >

     <div class="container">

 <button type="submit" id="btnRegister" class="btn btn-primary btn-block" ;">Submit</button>
     </div>
   


     </div>
        </div>                </div>

                   <%-- </div> --%>


</div><!--end of modal-body-->
</div> 

           </div> <!--end of modal-content-->

                </div><!--end of modal-dialog-->

            

         </div><!--end of modal-->

   
   
        </div>
       

    




        
    </form>
</body>
</html>
