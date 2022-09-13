<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plataforma Unam</title>
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/myEstilo.css" rel="stylesheet">

</head>
<body>
    <!--Se coloca imagen y formulario-->
    <div class="container mt-5">
        <!--fila-->
        <div class="row align-items-stretch">
            <!--columna-->
            <!--Se hace el breakpoint de la imagen-->
            <div class="col bg d-none d-lg-block"></div>
            <div class="col">
                <h2 class="fw-bold text-center py-5">Bienvenido Alumno</h2>
                <!--Formulario login-->
                <form action="php/loginProfesor.php" method="post" action>
                    <!--Campos a Rellenar-->
                    <div class="mb-4">
                        <label for="email" class="form-label">Correo</label>
                        <input type="email" class="form-control" name="email" required> 
                    </div>
                    <div class="mb-4">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" name="password" maxlength="8" minlength="2" required> 
                    </div>

                    <!--Boton-->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary" name="login" value="login" >Iniciar Sesión</button>
                    </div>

                    <!--Link Registro-->
                    <div class="my-3">
                        <span>No tienes cuenta? <a class="a" href="registroProfesores.html">Registro Profesor</a> </span> 
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="JS/bootstrap.bundle.min.js" ></script>
    <script src="JS/bootstrap.min.js" ></script>
</body>
</html>