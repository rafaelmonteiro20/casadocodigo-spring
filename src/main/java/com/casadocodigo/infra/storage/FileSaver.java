package com.casadocodigo.infra.storage;

import org.springframework.web.multipart.MultipartFile;

public interface FileSaver {

	String write(MultipartFile file);
	
}
