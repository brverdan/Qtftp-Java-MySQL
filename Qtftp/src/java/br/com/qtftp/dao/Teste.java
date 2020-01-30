package br.com.qtftp.dao;

import br.com.qtftp.model.Cliente;
import br.com.qtftp.model.Restaurante;
import java.sql.SQLException;

public class Teste {
    public static void main(String[] args) {
//        Cliente cliente = new Cliente();
//        ClienteDAO dao = new ClienteDAO();
//        
//        cliente.setNome("Bruno");
//        cliente.setCpf("12345678912");
//        cliente.setEndereco("rua trinta de setembro");
//        cliente.setEmail("eusoulindo@gmail.com");
//        cliente.setTelefone("123456789");
//        cliente.setSenha("852134679");
//        try {
//            dao.adiciona(cliente);
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
        
        Restaurante restaurante = new Restaurante();
        RestauranteDAO dao = new RestauranteDAO();
        
        restaurante.setRazaoSocial("Bruno");
        restaurante.setCnpj("12345678912");
        restaurante.setEndereco("rua trinta de setembro");
        restaurante.setOpcaoPagamento("dinheiro");
        restaurante.setSenha("123456789");
        try {
            dao.adiciona(restaurante);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
