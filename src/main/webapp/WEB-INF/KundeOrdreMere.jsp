<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>CupcCake</title>
</head>
<body>

<div class="container">
    <div class="row">
        <img src="../images/olskercupcakes.png" class="img-fluid">

        <div class="col-lg"></div>
        <ul class="nav navbar justify-content-end mt-2 w-100" style="background-color: #eee;">

            <li class="nav-item">
                <a class="nav-link" href="#">Logind</a>
            </li>
            <li class="nav-item mr-lg-5">
                <a class="nav-link" href="#">Kurv</a>
            </li>
        </ul>
        <div class="col-lg-12 w-100 h-100 p-3 mt-2" style="background-color: #eee;">
            <form action="FrontController" method="post">
                <input type="hidden" name="target" value="addCupCake">
                <h4>Indkøbskurv</h4>
                <div class="row">
                    <div class="col-sm">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="text-center">OrdreID</th>
                                <th scope="col" class="text-center">Bund</th>
                                <th scope="col" class="text-center">Top</th>
                                <th scope="col" class="text-center">Antal</th>
                                <th scope="col" class="text-center">Pris</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="element" items="${applicationScope.kurvListe}">
                                <tr>
                                    <th scope="row"></th>
                                    <td class="text-center">${element.bund}</td>
                                    <td class="text-center">${element.top}</td>
                                    <td class="text-center">${element.antal}</td>
                                    <td class="text-center">${element.pris}</td>
                                    <td>
                                        <butto type="submit" class="btn btn-primary"> Mere Info</butto>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-sm">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Bund</th>
                                <th scope="col">Top</th>
                                <th scope="col">Antal</th>
                                <th scope="col">Pris</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="element" items="${applicationScope.kurvListe}">
                                <tr>
                                    <th scope="row"></th>
                                    <td>${element.bund}</td>
                                    <td>${element.top}</td>
                                    <td>${element.antal}</td>
                                    <td>${element.pris}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="col-lg"></div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>