<%-- 20240852 컴퓨터학과 황지희 --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%! 
	String[] mChoices = {"hobby"};
    String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
    String[] telCompany = {"010", "011", "017", "070"};
    String[] gNames = {"남", "여"};
    
    ArrayList<String> getParameterNames(HttpServletRequest request) {
        Enumeration<String> e = request.getParameterNames();
        ArrayList<String> list = new ArrayList<String>();
        while (e.hasMoreElements()) {
            list.add(e.nextElement());
        }
        return list;
    }

    boolean isMultipleChoice(String paramName) {
        for (String s : mChoices) {
            if (s.equals(paramName))
                return true;
        }
        return false;
    }
%>
<html>
<head>
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); 
    
        Enumeration<String> paraNames1 = request.getParameterNames();
        while (paraNames1.hasMoreElements()) {
            String name = paraNames1.nextElement();
            out.print(name + ": ");
            String[] values = request.getParameterValues(name);

            if (values != null && values.length > 1) { 
                for (int i = 0; i < values.length; i++) {
                    out.print(values[i]);
                    out.print("/");  
                }
            } else {
                out.print(request.getParameter(name));
            }
            out.print("<br>");
        }
    %>
    <hr>
    <br>
    <h2>Processing Parameters</h2>
    <br>
    <%
        Enumeration<String> paraNames2 = request.getParameterNames();
        while (paraNames2.hasMoreElements()) {
        	String name = paraNames2.nextElement();
            out.print(name + ": ");
            String[] values = request.getParameterValues(name);

            if (name.equals("gender")) {
                int idx = Integer.parseInt(values[0]);
                out.print(gNames[idx]);
            } 
            else if(name.equals("phone1")) { 
                int idx = Integer.parseInt(values[0]);
                out.print(telCompany[idx]);
            } 
            else if (name.equals("hobby")) {
                for (int i = 0; i < values.length; i++) {
                    int idx = Integer.parseInt(values[i]);
                    out.print(hobbyNames[idx]);
                }
            } else {  
                out.print(request.getParameter(name));
            }
            out.print("<br>");
        }
    %>
</body>
</html>