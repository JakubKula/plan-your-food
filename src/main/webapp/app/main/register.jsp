<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<%@include file="/header.jsp"%>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <!-- add name attribute for all inputs -->
                <form class="padding-small text-center" action="/register" method="post">
                    <h1 class="text-color-darker">Rejestracja</h1>
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="podaj imię" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="surname" name="surname" placeholder="podaj nazwisko" required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" id="email" name="email" placeholder="podaj email" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="password" name="password" placeholder="podaj hasło" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="repassword" name="password2" placeholder="powtórz hasło" required >
                    </div>
                    <button class="btn btn-color rounded-0" type="submit">Zarejestruj</button>
                    <p>${message}</p>
                </form>
            </div>
        </div>
    </div>
</section>
<%@include file="/footer.jsp"%>
</body>
</html>
