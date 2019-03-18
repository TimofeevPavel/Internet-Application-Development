<%@ page import="model.Result" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=Cp1251"  %>
<html lang="ru">
<head>
    <link rel="stylesheet" href="styles/styles.css" type="text/css">
    <meta charset="UTF-8">
    <title>Lab #2</title>
</head>
<body>
    <header> �������� �����, ������ P3202, ������� 541852</header>
    <div class="main">
        <div class="form">
            <form id="form" method="get">
                <label for="x">
                    �������� X: (-3...3)
                    <input id="x" type="text">
                </label>
                <br>
                <br>
                <div class="checkbox">
                    �������� Y: <span> -2 </span>
                         <input id="-2" class="Y" type="checkbox"><br>
                    -1.5 <input id ="-1.5" class = "Y" type="checkbox"><br>
                    -1   <input id ="-1" class = "Y" type="checkbox"><br>
                    -0.5 <input id ="-0.5" class = "Y" type="checkbox"><br>
                    0    <input id ="-0" class = "Y" type="checkbox"><br>
                    0.5  <input id ="0.5" class = "Y" type="checkbox"><br>
                    1  <input id ="1" class = "Y" type="checkbox"><br>
                    1.5  <input id ="1.5" class = "Y" type="checkbox"><br>
                    2    <input id ="2" class = "Y" type="checkbox"><br>
                </div>

                <br>
                �������� R:
                <input type="hidden" id="R_value" name="R_value">
                <input type="button" class = "R" value="1">
                <input type="button" class = "R" value="2">
                <input type="button" class = "R" value="3">
                <input type="button" class = "R" value="4">
                <input type="button" class = "R" value="5">
                <br>
                <br>
                <input id="submitButton" type="submit" value="���������">
                <br>
                <p id="error"> </p>
            </form>
        </div>


        <div class="area">
            <canvas id="area" width="450" height="450"> </canvas>
            <canvas id="points" width="450" height="450"></canvas>
        </div>

        <table id="result" border="1">
            <thead>
                <tr>
                    <th> X </th>
                    <th> Y </th>
                    <th> R </th>
                    <th> Result </th>
                </tr>
            </thead>
            <tbody>

                   <%

                       List<Result> results = (List<Result>) request.getAttribute("Results");
                       if(results != null && !results.isEmpty()){

                           for (Result result: results){
                               System.out.println("X = " + result.getX());
                               System.out.println("Y = " + result.getY());
                               System.out.println("R = " + result.getR());
                               System.out.println("Result = " + result.isResult());
                           }

                           for(Result result : results){
                               out.println("<tr>");
                               out.println("<td>" + result.getX() + "</td>");
                               out.println("<td>" + result.getY() + "</td>");
                               out.println("<td>" + result.getR() + "</td>");
                               out.println("<td>" + result.isResult() + "</td>");
                               out.print("</tr>");
                           }
                       }else {
                           System.out.println(results);
                       }
                   %>



            </tbody>


        </table>

    </div>

    <script src="JS/area.js" charset="UTF-8"> </script>
    <script src="JS/validations.js" charset="UTF-8" ></script>
</body>
</html>
