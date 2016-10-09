package com.lol.controller.admin;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lol.entity.Skin;
import com.lol.service.SkinService_admin;
import com.opensymphony.xwork2.ActionSupport;

@Controller(value = "addSkinAction")
@Scope("prototype")
public class AddSkinAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	private SkinService_admin skinService_admin;

	private File file;
	private String fileFileName;
	private Skin skin;

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

	public Skin getSkin() {
		return skin;
	}

	public void setSkin(Skin skin) {
		this.skin = skin;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(skin.getSkinName());
		String path = "images/" + fileFileName;
		File saveFile = new File(path);
		FileUtils.copyFile(file, saveFile);

		skin.setSkinPicture(path);
		skinService_admin.addSkin(skin);
		int result = 1;
		HttpServletResponse re=ServletActionContext.getResponse();
		re.setCharacterEncoding("UTF-8");
		PrintWriter pw=re.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		return null;
	}

}
