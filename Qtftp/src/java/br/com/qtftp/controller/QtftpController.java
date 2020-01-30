package br.com.qtftp.controller;

import br.com.qtftp.dao.ClienteDAO;
import br.com.qtftp.dao.PratoDAO;
import br.com.qtftp.dao.RestauranteDAO;
import br.com.qtftp.model.Cliente;
import br.com.qtftp.model.Prato;
import br.com.qtftp.model.Restaurante;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller 
public class QtftpController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }
    
    @RequestMapping("/index")
    public String indexLink() {
        return "index";
    }
    
    @RequestMapping("/opcao") 
    public String opcao() {
        return "opcaoCadastro";
    }
    
    @RequestMapping("/cadastroRestaurante") 
    public String cadastroRestaurante() {
        return "cadastroRestaurante";
    }
    
    @RequestMapping("/cadastroCliente") 
    public String cadastroCliente() {
        return "cadastroCliente";
    }
    
    @RequestMapping("/CadastroRealizadoRestaurante") 
    public String CadastroRealizado(Model model, Restaurante restaurante) {
        RestauranteDAO dao = new RestauranteDAO();
        try {
            dao.adiciona(restaurante);
            model.addAttribute("nome", restaurante.getRazaoSocial());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "cadastroSucesso";
    }
    
    @RequestMapping("/CadastroRealizadoCliente")
    public String CadastroRealizado(Model model, Cliente cliente) {
        ClienteDAO dao = new ClienteDAO();
        try {
            dao.adiciona(cliente);
            model.addAttribute("nome", cliente.getNome());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "cadastroSucesso";
    }
    
    @RequestMapping("/opcaoLogin")
    public String login() throws SQLException {
        return "opcaoLogin";
    }
    
    @RequestMapping("/loginCliente")
    public String loginCliente() throws SQLException {
        return "loginCliente";
    }
    
    @RequestMapping("/loginRestaurante")
    public String loginRestaurante() throws SQLException {
        return "loginRestaurante";
    }
    
    @RequestMapping("/cliente")
    public String cliente(Model model,Restaurante restaurante, Cliente cliente) {
        ClienteDAO daoCliente = new ClienteDAO();
        List<Cliente> clientes = daoCliente.listaCliente();
        for (int i = 0; i < clientes.size(); i++) {
            if ((clientes.get(i).getCpf().equals(cliente.getCpf()))&&(clientes.get(i).getSenha().equals(cliente.getSenha()))) {
                RestauranteDAO daoRestaurante = new RestauranteDAO();
                try {
                    model.addAttribute("listaRestaurante", daoRestaurante.busca());
                } catch (SQLException e) {
                    System.out.println(e);
                }
                return "cliente";
            }
        }
        return "loginCliente";
    }
    
    @RequestMapping("/restaurante")
    public String restaurante(Model model, Prato prato, Restaurante restaurante) {
        RestauranteDAO daoRestaurante = new RestauranteDAO();
        List<Restaurante> restaurantes = daoRestaurante.listaRestaurante();
        for (int i = 0; i < restaurantes.size(); i++) {
            if ((restaurantes.get(i).getCnpj().equals(restaurante.getCnpj()))&&(restaurantes.get(i).getSenha().equals(restaurante.getSenha()))) {
                PratoDAO dao = new PratoDAO();
                try {
                    model.addAttribute("listaPratos", dao.busca());
                } catch (SQLException e) {
                System.out.println(e);
                }
                return "restaurante";
            }
        }
        return "loginRestaurante";
    }
    
    @RequestMapping("/adicionar")
    public String adicionar(Model model, Prato prato) {
        PratoDAO dao = new PratoDAO();
        try {
            dao.adiciona(prato);
            model.addAttribute("listaPratos", dao.busca());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "restaurante";
    }
    
    @RequestMapping("/remover")
    public String remover(Model model,int id) throws SQLException {
        PratoDAO dao = new PratoDAO();

        try {
            dao.remover(id);
            model.addAttribute("listaPratos", dao.busca());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "restaurante";
    }
    
    @RequestMapping("/editar")
    public String editar(Model model, Prato prato, @RequestParam("nomePrato") String nomePrato, @RequestParam("descricaoPrato") String descricaoPrato, @RequestParam("valorPrato") double valorPrato) throws SQLException {
        PratoDAO dao = new PratoDAO();
        
        try {
            dao.editar(prato, nomePrato, descricaoPrato, valorPrato);
            model.addAttribute("listaPratos", dao.busca());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "restaurante";
    }
}
