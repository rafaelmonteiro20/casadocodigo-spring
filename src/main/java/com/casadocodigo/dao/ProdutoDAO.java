package com.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.casadocodigo.model.Produto;

@Repository
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;
	
	
	@Transactional
	public void salvar(Produto produto) {
		manager.merge(produto);
	}
	
	public List<Produto> listar() {
		return manager.createQuery("select distinct(p) from Produto p "
				+ "join fetch p.precos", Produto.class).getResultList();
	}
	
	public Produto buscarPorId(Long produtoID) {
		return manager.createQuery("select p from Produto p join fetch p.precos where p.id = :id", Produto.class)
					  .setParameter("id", produtoID)
					  .getSingleResult();
	}
	
	public List<Produto> ultimosLancamentos() {
		return manager.createQuery("from Produto where dataLancamento <= now() order by id desc", Produto.class)
				.setMaxResults(5)
				.getResultList();
	}
	
	public List<Produto> produtosMaisAntigos() {
		return manager.createQuery("from Produto", Produto.class)
				.getResultList();
	}
	
}
