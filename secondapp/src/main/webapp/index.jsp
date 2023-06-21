<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="./layout/head.jsp"/>
</head>
<body>


<div class="container-fluid vh-100">
    <div class="row">
        <div class="col">
            <div class="card position-absolute top-50 start-50 translate-middle" style="width: 18rem;">
                <div class="card-body text-center">
                    <img style="height: 200px; width: 200px;" src="https://i.imgflip.com/7gy03n.jpg?a467976" alt="Logo login">
                    <h3>Iniciar sesion</h3>
                    <form id="loginForm" action="/api/auth" class="needs-validation" novalidate method="post">
                        <div class="form-group mb-3">
                            <label for="username"> Usuario: </label>
                            <input class="form-control" type="text" name="username" id="username" required/>
                            <div class="invalid-feedback">Campo obligatorio</div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="password"> Contraseña: </label>
                            <input class="form-control" type="password" name="password" id="password" required/>
                            <div class="invalid-feedback">Campo obligatorio</div>
                            </div>
                        <div class="form-group mb-3">
                            <button id ="login" class="btn btn-primary btn-sm" type="submit">
                                <i data-feather="log-in"></i>INICIAR SESION
                            </button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="./layout/footer.jsp"/>
<script>
    window.addEventListener("DOMContentLoaded", ()=>{
      feather.replace();

        const form=document.getElementById("loginForm");
        const btn=document.getElementById("login");
            form.addEventListener('submit', event => {
                btn.innerHTML=`<div class="d-flex justify-content-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>`;
                btn.classList.add("disable");
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                    btn.innerHTML = `<i data-feather="log-in"></i>INICIAR SESION`;
                }
                form.classList.add('was-validated')
    }, false);
    }, false);


</script>
</body>
</html>