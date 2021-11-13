<%-- 
    Document   : publish_bd
    Created on : 2/05/2021, 07:52:03 PM
    Author     : Algentem Inc
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="connection.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String rol = request.getParameter("rol");
            int category = Integer.parseInt(request.getParameter("category"));
            String text = request.getParameter("text");
            System.out.println(text);
            String[] references = new String[5];
            for(int i = 0; i < 5; i++) {
                    references[i] = request.getParameter("reference" + i);
            }
            
            //String link = "QuantumXD/publish_bd.jsp?category="+category+"&text="+text+"&reference0="+referencia[0]+"&reference1="+referencia[1]+"&reference2="+referencia[2]+"&reference3="+referencia[3]+"&reference4="+referencia[4];
            if(!text.equals("") && !references[0].equals("")) {
                base db = new base();
                //LocalDate date = LocalDate.now();
                DateFormat dtf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date a = new Date();
                String date = dtf.format(a);
                try {
                    db.connect();
                    
                    String strQry = "insert into post(post_content, post_date, id_user, id_category, approved) value('"+text+"', '"+date+"', '"+user+"', '"+category+"', 0);";
                    db.insert(strQry);
                    
                    String strCons = "select LAST_INSERT_ID();";
                    ResultSet rs = null;
                    rs = db.consult(strCons); 
                    
                    String idPost = "";
                    if(rs.next()){
                       idPost  = rs.getString(1);
                    }
                    
                    //String[] id_reference = new String[5];
                    for (int i = 0; i < 5; i++) {
                        if(!references[i].equals("")){
                            db.insert("insert into post_reference(link, id_post) value('"+references[i]+"', '"+idPost+"');"); 
                            //rs = null;
                            //rs = db.consult(strCons);
                            //if(rs.next()){
                            //    id_reference[i] = rs.getString(1);
                            //}
                            //rs.close();
                        }
                    }
                    rs.close();
                    
                    //for (int i = 0; i < 5; i++) {
                    //    if(!references[i].equals("")){
                    //        String strQry2= "insert into post_reference(link, id_post) value('"+id_reference[i]+"', '"+idPost+"');";
                    //        db.insert(strQry2);
                    //    }
                    //}
                    //String strQry3 = "insert into post(id_user, id_) value('"+user+"','"+idPost+"');";
                    //int insertValue3 = db.insert(strQry3);
                    //String strQry4 = "insert into category value('"+idPost+"',(select id_category from category where category_name='"+category+"'));";
                    //int insertValue4 = db.insert(strQry4);
                    response.sendRedirect("home.jsp?category="+category+"&id="+user+"&rol="+rol);
                } catch (Exception e) {
                    // response.sendRedirect("home.jsp?id="+user);
                }
            } 
        %>
    </body>
</html>
