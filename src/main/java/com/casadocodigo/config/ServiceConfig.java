package com.casadocodigo.config;

import java.nio.file.Paths;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.casadocodigo.service.ShoppingCard;
import com.casadocodigo.storage.FileSaver;
import com.casadocodigo.storage.FileSaverLocal;

@Configuration
@ComponentScan(basePackageClasses = ShoppingCard.class)
public class ServiceConfig {

	@Bean
	public FileSaver fotoStorage() {
		return new FileSaverLocal(Paths.get("C:/casadocodigo"));
	}
	
}