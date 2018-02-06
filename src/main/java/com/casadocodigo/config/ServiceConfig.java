package com.casadocodigo.config;

import java.nio.file.Paths;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.casadocodigo.infra.storage.FileSaver;
import com.casadocodigo.infra.storage.FileSaverLocal;
import com.casadocodigo.service.ShoppingCard;

@Configuration
@ComponentScan(basePackageClasses = ShoppingCard.class)
public class ServiceConfig {

	@Bean
	public FileSaver fileSaver() {
		return new FileSaverLocal(Paths.get("C:/casadocodigo"));
	}
	
}