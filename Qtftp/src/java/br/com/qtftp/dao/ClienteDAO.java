package br.com.qtftp.dao;

import br.com.qtftp.model.Cliente;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ClienteDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("QtftpPU");
        return factory.createEntityManager();
    }
    
    public void adiciona(Cliente cliente) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(cliente);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Cliente> listaCliente() {
        EntityManager em = getEM();
        List<Cliente> cliente = null;
        try {
            cliente = em.createQuery("from Cliente c").getResultList();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return cliente;
    }
}
