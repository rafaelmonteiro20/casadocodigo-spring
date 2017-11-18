package com.casadocodigo.storage;

import org.springframework.web.multipart.MultipartFile;

public interface FileSaver {

	String write(MultipartFile file);
	
}
