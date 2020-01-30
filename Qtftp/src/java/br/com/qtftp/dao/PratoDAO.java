package br.com.qtftp.dao;

import br.com.qtftp.model.Prato;

import conexao.Conexao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import org.springframework.web.bind.annotation.RequestParam;

public class PratoDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("QtftpPU");
        return factory.createEntityManager();
    }
    
    public void adiciona(Prato prato) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(prato);
        em.getTransaction().commit();
        em.close();
    } 
   
    public List<Prato> busca() throws SQLException{
        EntityManager em = getEM();
        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Prato.class));
        List<Prato> lista = em.createQuery(criteria).getResultList();
        return lista;
    }
    
    public int remover(int id) {
        EntityManager em = getEM();
        try {
            Prato prato = em.find(Prato.class, id);
            em.getTransaction().begin();
            em.remove(prato);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return id;
    }

    public void editar(Prato prato, @RequestParam("nomePrato") String nomePrato, @RequestParam("descricaoPrato") String descricaoPrato, @RequestParam("valorPrato") double valorPrato) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        List<Prato> lista = busca();
        for (int i = 0; i < lista.size(); i++) {
            if (prato.getIdPrato() == lista.get(i).getIdPrato()) {
                prato = em.find(Prato.class, lista.get(i).getIdPrato());
                prato.setNomePrato(nomePrato);
                prato.setDescricaoPrato(descricaoPrato);
                prato.setValorPrato(valorPrato);
            }
        }
        em.getTransaction().commit();
    }
}


