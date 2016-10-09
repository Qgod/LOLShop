package com.lol.controller.admin;

import java.io.File;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.lol.entity.Banner;
import com.lol.service.viewBannerService;
import com.opensymphony.xwork2.ActionSupport;

@Controller(value="addBannerAction")
@Scope("prototype")

public class AddBannerAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private viewBannerService bannerService_admin;
	
	
	private File file;
	private String fileFileName;
	private Banner banner;
	

	


	public Banner getBanner() {
		return banner;
	}


	public void setBanner(Banner banner) {
		this.banner = banner;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}


	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		String path="images/"+fileFileName;
		File saveFile=new File(path);
		FileUtils.copyFile(file, saveFile);
		
		banner.setBannerPicture(path);
		bannerService_admin.saveBanner(banner);
		
		return SUCCESS;
	}
	
	

}
