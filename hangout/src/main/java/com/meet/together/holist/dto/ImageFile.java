package com.meet.together.holist.dto;

import org.springframework.stereotype.Component;

@Component
public class ImageFile {
	public static final String IMAGE_DIR = "C:\\Users\\im\\study\\git\\meetus\\hangout\\src\\main\\webapp\\resources\\client_img\\";
//	public static final String IMAGE_DIR = "\\resources\\client_img\\"; 
 
	private String imageId;
	private String contentType;
	private int contentLength;
	private String fileName;
	
	public ImageFile(String imageId, String contentType, int contentLength, String fileName) {
		this.imageId = imageId;
		this.contentType = contentType;
		this.contentLength = contentLength;
		this.fileName = fileName;
	}
	
	public ImageFile(){
		
	}

	@Override
	public String toString() {
		return "ImageFile [imageId=" + imageId + ", contentType=" + contentType + ", contentLength=" + contentLength
				+ ", fileName=" + fileName + "]";
	}

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public int getContentLength() {
		return contentLength;
	}

	public void setContentLength(int contentLength) {
		this.contentLength = contentLength;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public static String getImageDir() {
		return IMAGE_DIR;
	}
}
