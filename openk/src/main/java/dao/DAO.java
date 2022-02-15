package dao;

import java.util.HashMap;

/**
 * étape 1 : le patron de conception DAO
 *
 * @param <T> pour sérialisation d'objets de type T
 */
public abstract class DAO<T> {
	
	protected final HashMap<Integer, T> donnees = new HashMap<Integer, T>();
	
	
	/**
	 * Méthode de création d'un objet de type "T",
	 * peut être amené à injecter l'id créé dans le programme
	 * @param obj
	 * @return boolean si la création a été effective, on traite les exceptions dans la fonction
	 */
	public abstract boolean create(T obj);

	/**
	 * Méthode pour effacer selon l'id de l'objet
	 * @param obj
	 * @return boolean 
	 */
	public abstract boolean delete(T obj);

	/**
	 * Méthode de mise à jour selon l'id de l'objet
	 * @param obj
	 * @return boolean
	 */
	public abstract boolean update(T obj);

	/**
	 * Méthode de recherche des informations qui retourne un objet T
	 * @param id on simplifie avec une clé sur un seul champs entier
	 * @return T
	 */
	public abstract T read(int id);



}