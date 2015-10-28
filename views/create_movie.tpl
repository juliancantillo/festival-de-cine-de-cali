<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Movie</title>

    <!-- Bootstrap CSS -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div class="content">
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <form action="/new" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
          <div class="form-group">
            <legend>New Movie</legend>
          </div>
          <div class="form-group">
            <label for="inputTitle" class="col-sm-2 control-label">Title:</label>
            <div class="col-sm-10">
              <input type="text" name="title" id="inputTitle" class="form-control" required="required">
            </div>
          </div>

          <div class="form-group">
            <label for="inputYear" class="col-sm-2 control-label">Year:</label>
            <div class="col-sm-10">
              <input type="number" name="year" id="inputYear" class="form-control" required="required">
            </div>
          </div>

          <div class="form-group">
            <label for="inputRuntime" class="col-sm-2 control-label">Runtime:</label>
            <div class="col-sm-10">
              <input type="number" name="runtime" id="inputRuntime" class="form-control" required="required">
            </div>
          </div>

          <div class="form-group">
            <label for="inputCategory" class="col-sm-2 control-label">Category:</label>
            <div class="col-sm-10">
              <select name="category" id="inputCategory" class="form-control" required="required">
                <option value="">None</option>
                <option value="Inauguración">Inauguración</option>
                <option value="Selección Oficial Internacional">Selección Oficial Internacional</option>
                <option value="Selección Oficial Colombia">Selección Oficial Colombia</option>
                <option value="Selección Oficial Cortometrajes">Selección Oficial Cortometrajes</option>
                <option value="Primer Plano">Primer Plano</option>
                <option value="Plano General">Plano General</option>
                <option value="Cinema Expandido">Cinema Expandido</option>
                <option value="Cali Ciudad Abierta">Cali Ciudad Abierta</option>
                <option value="Nosotros El Jurado">Nosotros El Jurado</option>
                <option value="Descentralizados">Descentralizados</option>
                <option value="Enseñe A Ver">Enseñe A Ver</option>
                <option value="Exposiciones ">Exposiciones </option>
                <option value="Muestra De Muestras">Muestra De Muestras</option>
                <option value="Patrimonio">Patrimonio</option>
                <option value="Clausura">Clausura</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="inputPoster" class="col-sm-2 control-label">Poster:</label>
            <div class="col-sm-10">
              <input type="file" name="poster" id="inputPoster" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <label for="textareaComment" class="col-sm-2 control-label">Comment:</label>
            <div class="col-sm-10">
              <textarea name="comment" id="textareaComment" class="form-control" rows="3"></textarea>
            </div>
          </div>
      
          <div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>


    <!-- jQuery -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>