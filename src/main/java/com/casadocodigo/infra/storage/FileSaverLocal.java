package com.casadocodigo.infra.storage;

import static java.nio.file.FileSystems.getDefault;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import org.springframework.web.multipart.MultipartFile;

public class FileSaverLocal implements FileSaver {

	private Path baseFolder;

	public FileSaverLocal(Path baseFolder) {
		this.baseFolder = baseFolder;
		createDirectories();
	}

	@Override
	public String write(MultipartFile file) {
		try {
			String caminho = file.getOriginalFilename();
			file.transferTo(createFile(caminho));
			return caminho;
		} catch (Exception e) {
			throw new RuntimeException("Erro ao salvar o arquivo", e);
		}
	}
	
	private File createFile(String nome) {
		return new File(baseFolder.toAbsolutePath().toString() + getDefault().getSeparator() + nome);
	}
	
	private void createDirectories() {
		try {
			Files.createDirectories(baseFolder);
		} catch (IOException e) {
			throw new RuntimeException("Erro ao criar pasta para salvar os arquivos", e);
		}
	}

}
