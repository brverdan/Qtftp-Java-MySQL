<%@page import="br.com.qtftp.model.Prato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel ="stylesheet" type="text/css" media="screen" href="resources/css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Efetue seu Login!</title>
    </head>
    <body id="login-page">
        <!--NAVBAR-->
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="index">
              <img id="foto" src="resources/fotos/logoQTFTP.png" width="90" height="50" alt="">
            </a>
            
            <button id="btnEntrar" onclick="window.location.href='index';">Logout</button>
        </nav>
        <br>
        <br>
        <br>
        <!--Cadastro Prato-->
        <div id="telaCadPrato">
            <form action="adicionar" method="post">
                <div class="form-group">
                    <label for="exampleInputNome1">Nome do Prato</label>
                    <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Nome do Prato" name="nomePrato">
                </div>
                <div class="form-group">
                    <label for="exampleInputPreco1">Preço</label>
                    <input type="number" class="form-control" id="exampleInputPreco1" placeholder="Preço" name="valorPrato">
                </div>
                <div>
                    <label for="exampleInputPreco1">Descrição</label>
                    <input type="text" class="form-control" id="exampleInputDescricao1" placeholder="Adicione Descricao Aqui..." name="descricaoPrato">
                <button type="submit" class="btn btn-primary">Adicionar Prato</button>
                </div>
            </form>
        </div>
        <br>
        <br>
    <center>
        <label for="exampleInputPreco1">Insira o ID do prato que deseja remover:</label>
        <form action="remover">
            <input type="number" name="id" placeholder="Insira o id aqui...">
                   <button type="submit" > remover </button>
        </form>
    </center>
    <br>
    <br>
    <center>
    <div class="btn-group">
  <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Editar
  </button>
  <div class="dropdown-menu">
    <label for="exampleInputPreco1">Insira o ID do prato que deseja editar, e os novos atributos:</label>
        <form action="editar">
            <input type="number" name="idPrato" placeholder="Insira o id aqui...">
            <label for="exampleInputNome1">Nome do Prato</label>
            <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Nome do Prato" name="nomePrato">
            <label for="exampleInputPreco1">Preço</label>
            <input type="number" class="form-control" id="exampleInputPreco1" placeholder="Preço" name="valorPrato">
            <label for="exampleInputPreco1">Descrição</label>
            <input type="text" class="form-control" id="exampleInputDescricao1" placeholder="Adicione Descricao Aqui..." name="descricaoPrato">
            
            <button type="submit"> Editar </button>
        </form>
  </div>
    </div></center>
    <br>
    <br>
        <!--Lista de Pratos-->
        <div class="list-group container">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID:</th>
                        <th>Nome:</th>
                        <th>valor:</th>
                        <th>Descrição:</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listaPratos}" var="atributo">
                        <tr>
                            <td>${atributo.idPrato}</td>
                            <td>${atributo.nomePrato}</td>
                            <td>${atributo.valorPrato}</td>
                            <td>${atributo.descricaoPrato}</td>
                    </c:forEach>
                </tbody>
            </table>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

