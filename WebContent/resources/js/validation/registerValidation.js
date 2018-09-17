function regValidate()                                   
{
    var regUsername = document.forms["regForm"]["regUsername"];              
    var regEmail = document.forms["regForm"]["regEmail"];  
    var regConfirmEmail = document.forms["regForm"]["regConfirmEmail"];  
    var regPassword = document.forms["regForm"]["regPassword"]; 
    var regConfirmPassword = document.forms["regForm"]["regConfirmPassword"]; 
  
    if (regUsername.value == "")                                 
    {
        window.alert("Please enter a username.");
        regUsername.focus();
        return false;
    }
      
    if (regEmail.value == "")                                  
    {
        window.alert("Please enter an e-mail address.");
        regEmail.focus();
        return false;
    }
  
    if (regEmail.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        regEmail.focus();
        return false;
    }
  
    if (regEmail.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        regEmail.focus();
        return false;
    }
  
    if (regEmail != regConfirmEmail)                          
    {
        window.alert("Email does not match.");
        regConfirmEmail.focus();
        return false;
    }
  
    if (regPassword.value == "")                       
    {
        window.alert("Please enter your password");
        regPassword.focus();
        return false;
    } 
    if (regPassword != regConfirmPassword)                       
    {
        window.alert("Password does not match");
        regPassword.focus();
        return false;
    } 
    return true;
}

function logValidate()                                   
{          
    var logEmail = document.forms["logForm"]["logEmail"];    
    var logPassword = document.forms["logForm"]["logPassword"]; 
  
    if (logUsername.value == "")                                 
    {
        window.alert("Please enter a username.");
        logUsername.focus();
        return false;
    }
      
    if (logEmail.value == "")                                  
    {
        window.alert("Please enter an e-mail address.");
        logEmail.focus();
        return false;
    }
  
    if (logEmail.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        logEmail.focus();
        return false;
    }
  
    if (logEmail.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        logEmail.focus();
        return false;
    }
  
    if (logPassword.value == "")                       
    {
        window.alert("Please enter your password");
        logPassword.focus();
        return false;
    } 

}

