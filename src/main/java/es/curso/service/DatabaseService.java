package es.curso.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import es.curso.entity.Email;
import es.curso.entity.Web;

public class DatabaseService {

	private static EntityManager entityManager;

	public static void init() {
		System.out.println("*** start create test database ***");
		entityManager = Persistence.createEntityManagerFactory("example-contact-form").createEntityManager();
		{
			Email email = new Email("from@email.com", "to1@email.com", "hello", "yo, wassup?");
			insert(email);
		}
		{
			Email email = new Email("from@email.com", "to2@email.com", "hello again", "yo, wassup?");
			insert(email);
		}
		{
			Email email = new Email("from@email.com", "to3@email.com", "hello yet again", "yo, wassup?");
			insert(email);
		}
		{
			Web web = new Web("meme.com", "Página web con memes");
			insert(web);
		}
		{
			Web web = new Web("marca.com", "Página web de prensa deportiva");
			insert(web);
		}
		{
			Web web = new Web("google.com", "Buscador");
			insert(web);
		}
		System.out.println("*** finish create test database ***");
	}

	public static void insert(Email email) {
		entityManager.getTransaction().begin();
		entityManager.persist(email);
		entityManager.getTransaction().commit();
	}
	
	public static void insert(Web web) {
		entityManager.getTransaction().begin();
		entityManager.persist(web);
		entityManager.getTransaction().commit();
	}

	public static List<Email> listEmails() {
		return entityManager.createQuery("select e from Email e", Email.class).getResultList();
	}
	
	public static List<Web> listWebs() {
		return entityManager.createQuery("select e from Web e", Web.class).getResultList();
	}

	public static Email getEmail(int emailId) {
		return entityManager.find(Email.class, emailId);
	}
	
	public static Web getWeb(int webId) {
		return entityManager.find(Web.class, webId);
	}

	public static void deleteEmail(int emailId) {
		entityManager.getTransaction().begin();
		entityManager.remove(entityManager.find(Email.class, emailId));
		entityManager.getTransaction().commit();
	}
	
	public static void deleteWeb(int webId) {
		entityManager.getTransaction().begin();
		entityManager.remove(entityManager.find(Web.class, webId));
		entityManager.getTransaction().commit();
	}
}
