<div class="signin-sec cart-shadow">
				<div class="see-full">
					<div class="see-full title see-text-center">
						<h5>Login to <?php if(!empty($domainname)){ echo $domainname; } ?></h5>
						<!--<p>- OR USING EMAIL -</p>-->
					</div>
					<div class="see-full">
					<p><?php if(isset($see_error)){ echo $see_error; } ?></p>
					<p class="see-red see-full see-padding-12 see-center ajaxErr"></p>
						<form id="loginAjax" method="post">
						    <div class="see-full ">
								<div class="see-full see-margin-bottom">
									<label class="see-full">Mobile or Email</label>
									<span class="input see-full">
										<input type="text" id="m_phone"  name="username" placeholder="Enter Mobile or Email" required="">
									</span>
								</div>
								
							</div>
							<div class="see-full btn">
							    <button id="see_cont"  class="theme-third-color see-full theme-second-color see-padding-16 see-cursor see-padding-left-right-16 see-border-0 theme-white-text">Continue</button>
							</div>
						</form>
   
					</div>
					<div class="otpSystem see-dp-none">
	                       	<div class="see-full see-padding-8 see-padding-left-right-8" id="passSection">
		                        <!-- <label>Enter Password<em>*</em> </label> -->
		                        <div class="see-full" id="oldPassSection">
		                        	<input type="password" id="m_pwd" name="m_pwd" placeholder="Enter Password" class="see-full see-padding-8 see-padding-left-right-12 see-border-bottom" required="">
		                        	<div class="input-option">
		                            	<span class="no-change-btn theme-first-text" id="forgotPass">Forgot?</span>
		                            </div>
		                        </div>
		                    </div>
	                        <div class="see-full" id="otpSection">
	                            <span class="see-full see-padding-4 see-padding-left-right-16 theme-gray-color">
	                            <button id="otpAjax" class="see-full theme-second-color see-padding-16 see-cursor see-padding-left-right-16 see-border-0 theme-white-text">Login</button>
	                            </span>
	                        </div>
	                        <div class="see-full" id="otpSection2">
	                            <span class="see-full see-padding-4 see-padding-left-right-16 theme-gray-color">
	                            <button id="see_nextotp" class="see-full theme-second-color see-padding-16 see-cursor see-padding-left-right-16 see-border-0 theme-white-text">Login with OTP</button>
	                            </span>
	                        </div>
                    	</div>
						<div id="enterOTP" class="see-dp-none">                            
	                        <div class="see-full ">
	                            <!-- <label>Enter OTP<em>*</em> </label> -->
                                <div class="see-full see-full see-padding-8 see-padding-left-right-8">
                                	<input type="text" id="m_otp" name="m_otp" placeholder="Enter OTP" class="see-full see-padding-8 see-padding-left-right-12 see-border-bottom" required>
                                	<div class="input-option" id="resendReq">
		                            </div>
                            	</div>
                            	
                                <div class="see-full see-full see-padding-8 see-padding-left-right-8 see-dp-none" id="setPassSection">
                                	<input type="text" id="set_pass" name="set_pass" placeholder="Set Password" class="see-full see-padding-8 see-padding-left-right-12 see-border-bottom" required>
                                </div>
                                
	                            <span class="see-full see-padding-4 see-padding-left-right-8 theme-gray-color">
	                                <button id="verifyLogin" class="see-full theme-second-color see-padding-16 see-cursor see-padding-left-right-16 see-border-0 theme-white-text">Verify & Login</button>
	                            </span>
	                        </div>
        				</div>
					<div class="see-full link">
						<span><a class="theme-third-text" href="forgot.php">Recover password</a></span>
						<span>New to <?php if(!empty($domainname)){ echo $domainname; } ?>? <a class="theme-third-text" href="signup.php">Create Account</a></span>
					</div>
				</div>
			</div>
			<div id="overlay"></div> 

<script>
function on() {
  document.getElementById("overlay").style.display = "block";
}

function off() {
  document.getElementById("overlay").style.display = "none";
} 
                
              function sendIT(){
                var sendOtp = $('#m_phone').val();
                    if(sendOtp.length == 10){
                        on();
                            $('#stresend').removeAttr("onclick");
                            $('#stresend').text("Sending..");
                        
                        // Send the data for validation....
                            $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            sendOtp: sendOtp
                                        },
                                  success:function(data) {
                                      off();
                                          if(data == "TR"){
                                            $('#stresend').text("Failed! Send Again");
                                          }else if(data == "VF"){
                                            $('#oldPassSection').fadeOut();
                                            $('#otpSection').fadeOut();
                                            $('#enterOTP').fadeIn();
                                            $('.otpSystem').hide();
                                            rsTimer();
                                        }
                                    }
                            });

                    }else{
                        alert("Invalid Mobile Number");
                    }
            
        }
        

        
$('#login_signup').click(function(e){
	e.preventDefault();
	var user_val = $('#user_login').val();
	on();
	$.ajax({
			type:'POST',
			url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
			data:{
			user_name:user_val
			},
			success:function(data) {
				$('#new_form').html(data);
				off();
			}
	});
});


        
$('input[name="user_email"]').change(function(){
        on();
     var usrMail = $(this).val();
    $.ajax({
      type:'POST',
      url:'<?php echo SITE_URL; ?>ajax/see_validation.php',
      data:{
        mchk:usrMail,
      },
      success:function(data) {
          off();
        $('.error').html(data);
      }
    });   
    

});
        
$('input[name="username"]').change(function(){
	
    $("#see_cont").hide();
	 var usrPhonez = $(this).val();
     on();
    $.ajax({
      type:'POST',
      url:'<?php echo SITE_URL; ?>ajax/see_validation.php',
      data:{
        motp:usrPhonez,
      },
      success:function(data) {
          off();
        if(data == "XZ"){
            $('.otpSystem').fadeIn();
            $('input[name="username"]').attr('value', usrPhonez);
            
        }else if(data == "MZ"){
            $('.regFormC').fadeOut();
            $('.otpSystem').fadeIn();
        }
      }
    });   
    

});


$('input[name="user_pin"]').change(function(){
     var pinCodez = $(this).val();
        seePinCheck(pinCodez);
});
        
function seePinCheck(encodedPin){
    $.ajax({
          type:'POST',
          url:'<?php echo SITE_URL; ?>ajax/pinCheck.php',
          data:{
            pinCode:encodedPin,
          },
          success:function(data) {
            if(data == 1){
                    $('.codtext').html("<b>COD Orders - Ship in 2-3 Days</b>");
                    $('.codfield').show();
            }else{
                    $('.codtext').html("<b>COD Not Available for your PIN</b>");
                    $('.codfield').hide();
            }
          }
    });
}

$('input[name="Selected_Address"]').click(function(){   
    var LocalPins = $(this).attr('pindata');
    if(LocalPins != ""){
        return seePinCheck(LocalPins);
    }  
}); 
    
$('.loginPopup').click(function(){
    
    on();
                       
    $("#loginPopupForm").fadeIn();
    $("#loginPopupForm").css("background", "#fff");
            
    $('#closePopup').click(function(){
       
        $("#loginPopupForm").fadeOut();
        off();
    });
        
    
});  
        
$("#overlay").click(function(){
    off();
    $("#loginPopupForm").fadeOut();
});
        

        $('#otpAjax').click(function(){
                    // Default Login Variable
                    loginData = [];
                    loginData["num"] =  $('#m_phone').val();
                    loginData["pwd"] =  $('#m_pwd').val();

                    if(loginData["num"].length > 9 && loginData["pwd"].length > 0){
                        $('.theme-third-color').fadeOut();
                        on();
                        // Send the data for validation....
                            $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            nmb: loginData["num"],
                                            pwd: loginData["pwd"]
                                        },
                                  success:function(data) {
                                      off();
                                      if(data == "WC"){
                                          $('.errorz').html("Password Invalid, Please try again...");
                                          $('#otpAjax').fadeIn();
                                          $('#see_nextotp').fadeIn();
                                          
                                      }else if(data == "MWC"){
                                          $('.errorz').html("Mobile Number Not Found.."); 
                                          $('#otpAjax').fadeIn();
                                          $('#see_nextotp').fadeIn();
                                      }else{
										location.assign("<?php echo SITE_URL;?>user/user-dashboard.php");
                                    }
                                  }
                            });

                    }
            });
        
                $('#see_nextotp').click(function(){
                    // Default Login Variable
                    
                    var sendOtp = $('#m_phone').val();
                    if(sendOtp.length == 10){
                        $(this).css('background', '#3a4b66');
                        $(this).attr("disabled", true);
                        on();
                        // Send the data for validation....
                            $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            sendOtp: sendOtp
                                        },
                                  success:function(data) {
                                      off();
                                          if(data == "TR"){
                                            $(this).attr("disabled", false);
                                            $(this).text("Send Again");

                                          }else if(data == "VF"){
                                            $('#oldPassSection').fadeOut();
                                            $('#otpSection').fadeOut();
                                            $('#enterOTP').fadeIn();
                                
                                            $('.otpSystem').hide();
                                            rsTimer();
                                         
                                        }
                                    }
                            });

                    }else{
                        alert("Invalid Mobile Number");
                    }
            });

        
        
        function rsTimer(){
            var counter = 60;
            var interval = setInterval(function() {
                counter--;
                $('#resendReq').html('<span class="theme-dgray-text">Wait  ' + counter + '</span>');
                if (counter == 0) {
                clearInterval(interval);
                $('#resendReq').html('<a href="javascript:void(0);" onclick="sendIT();" class="no-change-btn theme-first-text" id="stresend">Resend?</a>');
                }
            }, 1000);
            
        }
        
 
        
        
        $('#verifyLogin').click(function(){
           var otpnum = $('#m_phone').val(); 
           var otpcode = $('#m_otp').val(); 
           var otppass = $('#set_pass').val();
           if(otpnum.length == 10 && otpcode.length == 6){
               on();
               $(this).css('background', '#3a4b66');
               $('#verifyLogin').text("Loggin you..");
               
                 // Send the data for validation....
                            $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            verifyOTP: otpcode,
                                            otpnum: otpnum,
                                            otppass: otppass
                                        },
                                  success:function(data) {
                                            off();
                                          if(data == "INV"){
                                            $('.errorz').html("Invalid OTP, Try Again..");
                                            $(this).attr("disabled", false);
                                            $('#verifyLogin').text("Verify Agan");
                                            $('#verifyLogin').css('background', '#2874f0');
                                            alert("Invalid OTP, Try Again..");
                                          }else if(data == "DO"){
                                            $('#verifyLogin').text("Success");
                                            $('#see_nextotp').hide();
											location.assign("<?php echo SITE_URL;?>user/user-dashboard.php");
                                        }
                                    }
                            });
               
           }else{
               alert("Invalid OTP");
           }
        });
        
        $('#forgotPass').click(function(){
           
            var forgetPhone = $('#m_phone').val();
            
            if(forgetPhone.length == 10){
                on();
                // Check if mobile number is valid..
                        $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            sendOtp: forgetPhone
                                        },
                                  success:function(data) {
                                            off();
                                          if(data == "TR"){
                                              alert("Your Number is not registered with us.");
                                          }else if(data == "VF"){
                                            $('#passSection').fadeOut();
                                            $('#otpSection').fadeOut();
                                            $('#otpSection2').fadeOut(); 
                                            $('#enterOTP').fadeIn();
                                            $('#setPassSection').show(); 
                                            $('#verifyLogin').show();
                                            rsTimer();
                                        }
                                    }
                            });
                
            }
            
        });
        
        $('input[name="pay_mode"]').change(function(){
           var currentVal = $(this).val();
           if(currentVal == 'cod'){
               
               $('#cod_charge').fadeIn(function(){
                   $('.totval').html("<?php echo $helper->get_session('payble_amt') + $helper->get_session('cod_charge'); ?>");
                   
                $('.paymsg').html("Place Order ₹<?php echo $helper->get_session('payble_amt') + $helper->get_session('cod_charge'); ?>");
               });
           }else{
               
           $('#cod_charge').fadeOut(function(){
                   $('.paymsg').html("Place Order ₹<?php echo $helper->get_session('payble_amt'); ?>");
                   $('.totval').html("<?php echo $helper->get_session('payble_amt'); ?>");
                    
               });  
           }
		});
		
		$('#loginAjax').submit(function(e){
                    e.preventDefault();
                    // Default Login Variable
                    loginData = [];
                    loginData["email"] =  $('#m_phone').val();
                    loginData["pwd"] =  $('#m_pwd').val();

                    if(loginData["email"].length > 0 && loginData["pwd"].length > 0){
                        $('.theme-third-color').fadeOut();
                        // Send the data for validation....
                            $.ajax({
                                  type:'POST',
                                  url:'<?php echo SITE_URL; ?>ajax/ajax_login.php',
                                  data:{
                                            usr: loginData["email"],
                                            pwd: loginData["pwd"]
                                        },
                                  success:function(data) {
                                      if(data == "WC"){
                                          $('.ajaxErr').html("Wrong Credentials, Try Again..");
                                          $('.theme-third-color').fadeIn();
                                      }else{
                                      location.assign("<?php echo SITE_URL;?>user/user-dashboard.php");
                                    }
                                  }
                            });

                    }
            });
        
</script>		
		
	<style>
	.see-dp-none {display: none;}
.see-dp-block {display: block;}
.see-dp-inline {display: inline;}
.see-dp-inblock {display: inline-block;}
.see-dp-intable {display: inline-table;}
.see-dp-table {display: table;}
.see-dp-table-cell {display: table-cell;}
.see-dp-inherit {display: inherit;}
.see-verticale-top{vertical-align: top;}
.see-verticale-middle{vertical-align: middle;}
.see-verticale-bottom{vertical-align: bottom;}

.see-overflow-hide {overflow: hidden;}
.see-overflow-show {overflow: visible;}
.see-overflow-auto {overflow: auto;}
.see-overflow-scroll {overflow: scroll;}

.see-td-none {text-decoration: none;}
.see-uppercase {text-transform: uppercase;}
.see-lowercase {text-transform: lowercase;}
.see-cut-line {text-decoration: line-through;}
.see-text-cap , .see-t-cap{text-transform: capitalize;}


	</style>	