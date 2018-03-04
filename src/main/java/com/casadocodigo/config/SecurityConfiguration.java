package com.casadocodigo.config;

import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/produtos/form").hasAnyRole("ADMIN")
			.antMatchers("/carrinho/**").permitAll()
			.antMatchers(HttpMethod.POST, "/produtos").hasAnyRole("ADMIN")
			.antMatchers(HttpMethod.GET,  "/produtos").hasAnyRole("ADMIN")
			.antMatchers("/produtos/**").permitAll()
			.antMatchers("/home").permitAll()
			.anyRequest().authenticated()
		.and()
			.formLogin();
	}
	
}
