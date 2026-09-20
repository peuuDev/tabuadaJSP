<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
<title>Tabuadas JSP</title>
</head>
<body>
    <header>
        <div class="apresentacao">
            <h1><b>Tabuadas</b></h1>
        </div>
    </header>

    <main>
            <%
            int r = 0;
            for(int i = 1; i < 11; i++){
                if(i != 7){
                %> 
                <section>
                    <h1>Tabuada do <%= i %></h1>
                        <%
                        for(int j = 1; j < 11; j++){
                            r = i * j;
                        %>
                            <h2>
                                <%=i + " x " + j + " = " + r %>
                            </h2>

                            <%
                        }
                            %>
                </section>
                <%
                }else{
                    %> 
                    <section id="tab7">
                        <h1>Tabuada do <%= i %></h1>
                        <%
                        for(int j = 1; j < 11; j++){
                            r = i * j;
                        %>
                            <h2>
                                <%=i + " x " + j + " = " + r %>
                            </h2>

                            <%
                        }
                            %>
                    </section>
                    <%
                }
            }
            %>
             <div id="doItYrslf">
            <h1>Faça você mesmo!</h1>
            <h2>Digite um número e descubra sua tabuada!</h2>
            <input type="number" name="" id="boxNumber">

            <input id="verTabuada" type="button" value="Ver tabuada">

            <div id="resultadoTabuada" aria-live="polite"></div>
        </div>
    </main>

    <footer>
        <h3>Pedro Ramos Filgueiras</h3>
        <h4>PROGRAMAÇÃO WEB - 2026/2 ADS-MAT-PIT-3S-T1 - 54910</h4>
    </footer>
    <script src="${pageContext.request.contextPath}/script.js"></script>
</body>
</html>