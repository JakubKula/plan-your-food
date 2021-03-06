<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Zaplanuj Jedzonko</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>
<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-between">
        <a href="/" class="navbar-brand main-logo main-logo-smaller">
            Zaplanuj <span>Jedzonko</span>
        </a>
        <div class="d-flex justify-content-around">
            <h4 class="text-light mr-3">${firstName}</h4>
            <div class="circle-div text-center"><i class="fas fa-user icon-user"></i></div>
        </div>
    </nav>
</header>

<section class="dashboard-section">

    <%@include file="../dashboard.jsp"%>

        <div class="m-4 p-3 width-medium">
            <div class="dashboard-content border-dashed p-3 m-4 view-height">
                <div class="row border-bottom border-3 p-1 m-1">
                    <div class="col noPadding"><h3 class="color-header text-uppercase">Lista Przepisów</h3></div>
                    <div class="col noPadding d-flex justify-content-end mb-2"><a href="/app/recipe/add" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Dodaj przepis</a></div>
                </div>
                <table class="table border-bottom schedules-content">
        <thead>
        <tr class="d-flex text-color-darker">
            <th scope="col" class="col-1">ID</th>
            <th scope="col" class="col-4">NAZWA</th>
            <th scope="col" class="col-5">OPIS</th>
            <th scope="col" class="col-2">AKCJE</th>
        </tr>
        </thead>
        <c:forEach var="list" items="${list}" >
        <tbody class="text-color-lighter">
            <tr class="d-flex">
                <th scope="row" class="col-1">${list.id}</th>
                <c:set var="name" value="${list.id}" scope="session" />
                <td class="col-4">
                    ${list.name}
                </td>
                <td class="col-5">
                    ${list.description}
                </td>
                <td class="col-2"><a href="/app/recipe/details?id=${list.id}" class="btn btn-info rounded-0 text-light">Szczegóły</a>
                <a href="/app/recipe/edit?id=${list.id}" class="btn btn-info rounded-0 text-light">Edycja</a>
                    <a onclick="javascript:confirmDelete(${list.id});" class="btn btn-info rounded-0 text-light" style="background: red">Usuń</a>
                    <script type="text/javascript">
                        function confirmDelete(id) {
                            var status = confirm("Are you sure you want to delete?");
                            if(status)
                            {
                                parent.location.replace("/app/recipe/remove?identity="+id);}
                        }
                    </script>
                </td>
            </tr>
        </tbody>
        </c:forEach>
    </table>

            </div>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>