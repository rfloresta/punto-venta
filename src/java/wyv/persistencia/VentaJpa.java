/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wyv.persistencia;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import wyv.persistencia.exceptions.IllegalOrphanException;
import wyv.persistencia.exceptions.NonexistentEntityException;
import wyv.persistencia.exceptions.PreexistingEntityException;

/**
 *
 * @author Romario
 */
public class VentaJpa implements Serializable {
    
    public VentaJpa() {
           this.emf= Persistence.createEntityManagerFactory("W_VPU");
    }
    public VentaJpa(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Venta venta) throws PreexistingEntityException, Exception {
        if (venta.getDetalleList() == null) {
            venta.setDetalleList(new ArrayList<Detalle>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Cliente idcli = venta.getIdcli();
            if (idcli != null) {
                idcli = em.getReference(idcli.getClass(), idcli.getIdcli());
                venta.setIdcli(idcli);
            }
            Usuario dniUsu = venta.getDniUsu();
            if (dniUsu != null) {
                dniUsu = em.getReference(dniUsu.getClass(), dniUsu.getDni());
                venta.setDniUsu(dniUsu);
            }
            List<Detalle> attachedDetalleList = new ArrayList<Detalle>();
            for (Detalle detalleListDetalleToAttach : venta.getDetalleList()) {
                detalleListDetalleToAttach = em.getReference(detalleListDetalleToAttach.getClass(), detalleListDetalleToAttach.getDetallePK());
                attachedDetalleList.add(detalleListDetalleToAttach);
            }
            venta.setDetalleList(attachedDetalleList);
            em.persist(venta);
            if (idcli != null) {
                idcli.getVentaList().add(venta);
                idcli = em.merge(idcli);
            }
            if (dniUsu != null) {
                dniUsu.getVentaList().add(venta);
                dniUsu = em.merge(dniUsu);
            }
            for (Detalle detalleListDetalle : venta.getDetalleList()) {
                Venta oldVentaOfDetalleListDetalle = detalleListDetalle.getVenta();
                detalleListDetalle.setVenta(venta);
                detalleListDetalle = em.merge(detalleListDetalle);
                if (oldVentaOfDetalleListDetalle != null) {
                    oldVentaOfDetalleListDetalle.getDetalleList().remove(detalleListDetalle);
                    oldVentaOfDetalleListDetalle = em.merge(oldVentaOfDetalleListDetalle);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findVenta(venta.getNum()) != null) {
                throw new PreexistingEntityException("Venta " + venta + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Venta venta) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Venta persistentVenta = em.find(Venta.class, venta.getNum());
            Cliente idcliOld = persistentVenta.getIdcli();
            Cliente idcliNew = venta.getIdcli();
            Usuario dniUsuOld = persistentVenta.getDniUsu();
            Usuario dniUsuNew = venta.getDniUsu();
            List<Detalle> detalleListOld = persistentVenta.getDetalleList();
            List<Detalle> detalleListNew = venta.getDetalleList();
            List<String> illegalOrphanMessages = null;
            for (Detalle detalleListOldDetalle : detalleListOld) {
                if (!detalleListNew.contains(detalleListOldDetalle)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Detalle " + detalleListOldDetalle + " since its venta field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (idcliNew != null) {
                idcliNew = em.getReference(idcliNew.getClass(), idcliNew.getIdcli());
                venta.setIdcli(idcliNew);
            }
            if (dniUsuNew != null) {
                dniUsuNew = em.getReference(dniUsuNew.getClass(), dniUsuNew.getDni());
                venta.setDniUsu(dniUsuNew);
            }
            List<Detalle> attachedDetalleListNew = new ArrayList<Detalle>();
            for (Detalle detalleListNewDetalleToAttach : detalleListNew) {
                detalleListNewDetalleToAttach = em.getReference(detalleListNewDetalleToAttach.getClass(), detalleListNewDetalleToAttach.getDetallePK());
                attachedDetalleListNew.add(detalleListNewDetalleToAttach);
            }
            detalleListNew = attachedDetalleListNew;
            venta.setDetalleList(detalleListNew);
            venta = em.merge(venta);
            if (idcliOld != null && !idcliOld.equals(idcliNew)) {
                idcliOld.getVentaList().remove(venta);
                idcliOld = em.merge(idcliOld);
            }
            if (idcliNew != null && !idcliNew.equals(idcliOld)) {
                idcliNew.getVentaList().add(venta);
                idcliNew = em.merge(idcliNew);
            }
            if (dniUsuOld != null && !dniUsuOld.equals(dniUsuNew)) {
                dniUsuOld.getVentaList().remove(venta);
                dniUsuOld = em.merge(dniUsuOld);
            }
            if (dniUsuNew != null && !dniUsuNew.equals(dniUsuOld)) {
                dniUsuNew.getVentaList().add(venta);
                dniUsuNew = em.merge(dniUsuNew);
            }
            for (Detalle detalleListNewDetalle : detalleListNew) {
                if (!detalleListOld.contains(detalleListNewDetalle)) {
                    Venta oldVentaOfDetalleListNewDetalle = detalleListNewDetalle.getVenta();
                    detalleListNewDetalle.setVenta(venta);
                    detalleListNewDetalle = em.merge(detalleListNewDetalle);
                    if (oldVentaOfDetalleListNewDetalle != null && !oldVentaOfDetalleListNewDetalle.equals(venta)) {
                        oldVentaOfDetalleListNewDetalle.getDetalleList().remove(detalleListNewDetalle);
                        oldVentaOfDetalleListNewDetalle = em.merge(oldVentaOfDetalleListNewDetalle);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = venta.getNum();
                if (findVenta(id) == null) {
                    throw new NonexistentEntityException("The venta with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(String id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Venta venta;
            try {
                venta = em.getReference(Venta.class, id);
                venta.getNum();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The venta with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Detalle> detalleListOrphanCheck = venta.getDetalleList();
            for (Detalle detalleListOrphanCheckDetalle : detalleListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Venta (" + venta + ") cannot be destroyed since the Detalle " + detalleListOrphanCheckDetalle + " in its detalleList field has a non-nullable venta field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Cliente idcli = venta.getIdcli();
            if (idcli != null) {
                idcli.getVentaList().remove(venta);
                idcli = em.merge(idcli);
            }
            Usuario dniUsu = venta.getDniUsu();
            if (dniUsu != null) {
                dniUsu.getVentaList().remove(venta);
                dniUsu = em.merge(dniUsu);
            }
            em.remove(venta);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Venta> findVentaEntities() {
        return findVentaEntities(true, -1, -1);
    }

    public List<Venta> findVentaEntities(int maxResults, int firstResult) {
        return findVentaEntities(false, maxResults, firstResult);
    }

    private List<Venta> findVentaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Venta.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Venta findVenta(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Venta.class, id);
        } finally {
            em.close();
        }
    }

    public int getVentaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Venta> rt = cq.from(Venta.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
