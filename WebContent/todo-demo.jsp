<%@ page import="java.util.*" %>

<html>
<body>

<!--  Create HTML form -->
<form action= "todo-demo.jsp">               
  Add new item: <input type="text" name="theItem"/>  
  
  <input type="submit" value="Submit" />
  
</form>

<!-- Add new item to "TO DO" List -->

<%
    List<String> items=(List<String>) session.getAttribute("myToDoList"); // get the TO DO items from the session

    if(items==null)                                      // if the TO DO items doesn't exist, then create a new one
    {
    	items=new ArrayList<String>();
    	session.setAttribute("myToDoList",items);
    }
    
    String theItem= request.getParameter("theItem");     // see if there is form data to add
    if(theItem!=null && (!theItem.trim().equals("")))
    {
    	items.add(theItem);
    	response.sendRedirect("todo-demo.jsp");
    	
    }


%>

<!-- Display all TO DO item from session -->
<br>
<b>To List Items:</b> <br/>

<ol>
<%

   for(String temp : items) {
	   out.println("<li>" + temp + "</li>");
   }
   
 %>
</ol>
</body>
</html>