package br.com.qtftp.dao;

import br.com.qtftp.model.Prato;
import br.com.qtftp.model.Restaurante;
import conexao.Conexao;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;

public class RestauranteDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("QtftpPU");
        return factory.createEntityManager();
    }
    
    public void adiciona(Restaurante restaurante) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(restaurante);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Restaurante> busca() throws SQLException{
        EntityManager em = getEM();
        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Restaurante.class));
        List<Restaurante> lista = em.createQuery(criteria).getResultList();
        return lista;
    }
    
    public List<Restaurante> listaRestaurante() {
        EntityManager em = getEM();
        List<Restaurante> restaurante = null;
        try {
            restaurante = em.createQuery("from Restaurante r").getResultList();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return restaurante;
    }
}
