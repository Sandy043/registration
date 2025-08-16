<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<div id="login-box">
  <div class="left">
    <h1>Registration</h1>

    <!-- Spring Form Binding -->
    <form:form action="/next" method="post" modelAttribute="m1">

      <form:input path="mname" placeholder="Username" />
      <form:errors path="mname" cssClass="error"/>

      <form:input path="memail" placeholder="E-mail" />
      <form:errors path="memail" cssClass="error"/>

      <form:password path="mpass" placeholder="Password" />
      <form:errors path="mpass" cssClass="error"/>

      <form:password path="Rtypass" placeholder="Retype password" />
      <form:errors path="Rtypass" cssClass="error"/>

      <input type="submit" name="signup_submit" value="Register" />

    </form:form>
  </div>

  <!-- Only ONE right-side panel -->
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    <button class="social-signin facebook">Log in with Facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>

  <div class="or">OR</div>
</div>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);
*:focus { outline: none; }

body {
  margin: 0;
  padding: 0;
  background: #DDD;
  font-size: 16px;
  color: #222;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
}

#login-box {
  position: relative;
  margin: 5% auto;
  width: 600px;
  height: 500px;
  background: #FFF;
  border-radius: 2px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
}

.error {
   color: red;
   font-size: 12px;
   margin: -10px 0 10px;
   display: block;
}

.left {
  position: absolute;
  top: 0;
  left: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
}

h1 {
  margin: 0 0 20px 0;
  font-weight: 300;
  font-size: 28px;
}

input[type="text"],
input[type="password"],
form input {
  display: block;
  box-sizing: border-box;
  margin-bottom: 20px;
  padding: 4px;
  width: 220px;
  height: 32px;
  border: none;
  border-bottom: 1px solid #AAA;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
  font-size: 15px;
  transition: 0.2s ease;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-bottom: 2px solid #16a085;
  color: #16a085;
}

input[type="submit"] {
  margin-top: 20px;
  width: 120px;
  height: 30px;
  background: #16a085;
  border: none;
  border-radius: 2px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  text-transform: uppercase;
  cursor: pointer;
  transition: 0.1s ease;
}

input[type="submit"]:hover {
  opacity: 0.8;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
}

.or {
  position: absolute;
  top: 180px;
  left: 280px;
  width: 40px;
  height: 40px;
  background: #DDD;
  border-radius: 50%;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  line-height: 40px;
  text-align: center;
}

.right {
  position: absolute;
  top: 0;
  right: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
  background: url('https://goo.gl/YbktSj');
  background-size: cover;
  background-position: center;
  border-radius: 0 2px 2px 0;
}

.right .loginwith {
  display: block;
  margin-bottom: 40px;
  font-size: 28px;
  color: #FFF;
  text-align: center;
}

button.social-signin {
  margin-bottom: 20px;
  width: 220px;
  height: 36px;
  border: none;
  border-radius: 2px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  cursor: pointer;
  transition: 0.2s ease;
}

button.social-signin.facebook { background: #32508E; }
button.social-signin.twitter { background: #55ACEE; }
button.social-signin.google { background: #DD4B39; }

button.social-signin:hover { box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4); }
</style>
</body>
</html>
