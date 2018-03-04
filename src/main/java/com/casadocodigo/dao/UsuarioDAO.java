package com.casadocodigo.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;


@Repository
public class UsuarioDAO implements UserDetailsService {

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		try {
			UserDetails usuario = manager.createQuery("from Usuario where login = :login", UserDetails.class)
					.setParameter("login", username)
					.getSingleResult();
			
			return usuario;
		} catch (NoResultException e) {
			throw new UsernameNotFoundException("Usuário não encontrado");
		}
	}

}
