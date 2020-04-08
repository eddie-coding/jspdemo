<%@ page import="java.net.URLEncoder" %>
<html>

<head>

<title>Confirmation</title>

</head>

<%
        // read form data
        String favLang = request.getParameter("favouriteLanguage");

        //encode cookie data....handle case of languages names with spaces in them
        favLang = URLEncoder.encode(favLang, "UTF-8");

       // create the cookie
       Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
       
       //set the life span... total number of seconds
       theCookie.setMaxAge(60*60*24*365);  // one year
       
       // send cookie to browser
       response.addCookie(theCookie);
%>
<body>

          Thanks! We set your favourite language to: ${param.favoriteLanguage} 
          
          <br/><br/>
          
          <a href="cookies-homepage.jsp">Return to homepage.</a>
          
</body>


       
</html>
