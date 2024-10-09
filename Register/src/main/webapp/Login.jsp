<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>

  *
  {
   padding: 0;
   margin: 0;
   box-sizing: border-box;
   font-family: sans-serif;
   font-weight: lighter;
   color: white;
  }
  
  .main
  {
    min-width: 400px;
    display: flex;
    flex-direction: column;
    gap:2.5rem;
  }
  .container
  {
    width: 100vw;
    height: 100vh;
    display:flex;
    flex-direction:column;
    justify-content: center;
    align-items: center;
    background-color: #1A2742;
  }
  
   .container .kunni
   {
     text-align:center;
     letter-spacing: 0.3rem;
     padding: 0.8rem;
     font-family: sans-serif;
     box-shadow:1px 1px white , -1px -1px white;
   }
  
  form
  {
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;
   gap:2rem;
   padding: 0.8rem;
   box-shadow:1px 1px white , -1px -1px white; 
  }
  
  input
  {
    font-size: 1.2rem;
    padding: 0.8rem;
    width: 100%;
    letter-spacing: 0.1rem;
    background: transparent;
    border: 1px white solid;
  }
  
  form label
  {
    align-self: flex-start;
    letter-spacing: 0.1rem;
  }
  
  form > div
  {
   display:flex;
   gap:0.5rem;
  }
  
  input
  {
   outline: none;

  }
  
 .email,.pass
    {
     position: relative;
     font-size: 1rem;
     width: 100%;
     letter-spacing: 0.1rem;
     display: flex;
     flex-direction: column;
    }
    
    .email label ,.pass label
    {
      position: absolute;
      top:50%;
      transform: translateY(-50%);
      left: 0.5rem;
      transition :all 0.3s;
      z-index:0;
    }
    
    .email input:focus, .pass input:focus
    {
    color: #66ff00;
    border: 1px solid #66ff00;	
    }
    
.email input:focus + label, email input:not(:placeholder-shown) + label,
.pass input:focus + label, .pass input:not(:placeholder-shown),.email input:valid + label, .pass input:valid + label
    {
      color: #66ff00;
      top:0%;
      font-size: 0.8rem;
      z-index: 100;
      background-color: #1A2742;

    }
   
    
    .aha
    {
	 	font-size: 1rem;
	    padding: 0.8rem;
	    width: 100%;
	    letter-spacing: 0.1rem;
	    background: transparent;
	    border: 1px white solid;
	    text-decoration: none;
	    text-align: center;
	    transition:all 0.3s;
	    cursor: pointer;
	    z-index: 2;
    }

    
    .lol
    {
    width: 100%;
    position: relative;
    overflow: hidden;
    }
.lol:after {
    content: " ";
    background-color: #66ff00;
    position: absolute;
    bottom: 0%;
    left: 50%;
    transform: translateX(-50%); /* TYPO */
    height: 1%;
    width: 1%;
    z-index: 1;
    transition: all 0.4s;
    border-radius: 50%;
}
    
 .lol:hover:after {
    height: 7rem;
    width: 100%;
    border-radius: 0;    
}
.fg{
font-size: 0.8rem;
}

.fg:hover
{
color: purple;
}

</style>
</head>
<body>
      <div class="container">
            <div class="main">
              <h2 class="kunni">LOGIN</h2>
       		   <form action="hitler" method="post">
       		    
              <%
                 String name = (String) request.getAttribute("errorMessage");
              
                 if(name!=null)
                 {
                	 out.write("<p style='color:red;text-align:center;'>"+name+"</p>");
                 }
              %>
<div class="email">
    <input type="email" name = "email" id="email" placeholder=" " required>
    <label for="email">Email</label>
</div>

<div class="pass">
    <input type="password" name="pswd" id="password" placeholder=" " required>
    <label for="password">Password</label>
</div>

				<div class="lol">
       		 	<input class="aha" type="submit" value="Login">
       		 	</div>	
       		 	<div class="lol">
       		 	<a class="aha" href="SignUp.jsp">Sign Up</a>	
       		 	</div>		
       		 	<a class="fg" href="Forgotpswd.jsp">Forgot Password</a>
       		    </form>
             </div>
       </div>
</body>
</html>