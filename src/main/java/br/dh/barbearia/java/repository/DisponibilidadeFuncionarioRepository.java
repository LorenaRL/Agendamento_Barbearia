package br.dh.barbearia.java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.dh.barbearia.java.entity.DisponibilidadeFuncionario;

@Repository
public interface DisponibilidadeFuncionarioRepository extends JpaRepository<DisponibilidadeFuncionario, Long>{

	List<DisponibilidadeFuncionario> findAll();
	
	List<DisponibilidadeFuncionario> findByFuncionarioAndDataAndHora(String funcionario, String data, Integer hora);
	

}