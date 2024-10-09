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
   font-weight: bold;
  }
  
  .main
  {
    min-width: 400px;
    display: flex;
    flex-direction: column;
    gap:1rem;
     
  }
  .container
  {
    width: 100vw;
    height: 100vh;
    background-color: yellow;
    display:flex;
    flex-direction:column;
    justify-content: center;
    align-items: center;
  }
  
   .container .kunni
   {
     text-align:center;
     letter-spacing: 0.3rem;
     color: black;
     background-color:yellow ;
     padding: 0.8rem;
     border-radius: 0.5rem;
     font-family: sans-serif;
     border:0.1rem solid black;
   }
  
  form
  {
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;
   gap:0.5rem;
   padding: 0.8rem;
   border-radius: 0.5rem;
   background-color:yellow ;
   border-radius: 0.5rem;
   font-family: sans-serif;
   border:0.1rem solid black;
  }
  
  input
  {
    font-size: 1.2rem;
    padding: 0.5rem;
    width: 100%;
    border:solid 0.08rem black;
    letter-spacing: 0.1rem;
    border-radius: 0.4rem;
    
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
  
  .cunni
  {
	background-color: yellow;
    color: black;
	padding: 10px;
	border: none;
	margin-top: 10px;
	letter-spacing: 0.1rem;
	width: 100%;
	text-align: center;
  }
  
  input:nth-child(10),input:nth-child(12),.aha {
			    color: black;
			    padding: 10px;
			    border: none;
			    cursor: pointer;
			    margin-top: 10px;
			    letter-spacing: 0.1rem;
				border-radius: 0.5rem;
			   	background-color:yellow ;
			   	border-radius: 0.5rem;
			   	font-family: sans-serif;
			   	border:0.1rem solid black;
			   	transition:0.3s all;
			   	width: 100%;
			   	text-align: center;
			   	text-decoration: none;
			   	font-size: 1.2rem;
        }
       
        input:nth-child(10):hover,input:nth-child(12):hover,.aha:hover {
               background-color: white;
               scale:1.05;
        }
        
        input:nth-child(10):active,input:nth-child(12):active,.aha:active {
               background-color: white;
               scale:1.05;
        }
</style>
</head>
<body>
       <div class="container">
            <div class="main">
              <h2 class="kunni">SIGN UP</h2>
       		   <form action="smash" method="post">
       		 	<label>FirstName:</label><input type="text" name="first">
       		 	<label>LastName:</label><input type="text" name="last">
       		 	<label>E-mail:</label><input type="email" name="email">
       		 	<label>Password:</label><input type="password" name="pswd">
       		 	<div>
       		 	<label>Gender:</label><input type="radio" name="gender" value="Male">MALE <input type="radio" name="gender" value="FeMale" >FEMALE
       		 	</div>
       		 	<input type="submit" value="Sign Up">
       		 	<h3 class="cunni">OR</h3>
       		 	<a class="aha" href="Login.jsp">Login</a>
       		    </form>
             </div>
       </div>
</body>
</html>
