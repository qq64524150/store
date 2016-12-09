package com.mall.web;

import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
@Controller
@RequestMapping("/go")
public class UploadAction {
	@RequestMapping("/addUser")
	@ResponseBody
	public void addUser(String uname, HttpServletRequest request, HttpServletResponse response, PrintWriter out
			) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		System.out.println("添加的用户名是:" + uname);

		// 多内容请求对象
		MultipartHttpServletRequest mulreq=(MultipartHttpServletRequest)request;
		List<MultipartFile> file = mulreq.getFiles("file");
		FileOutputStream fos = null;
		String fileName = null;
		for (int i = 0; i < file.size(); i++) {
			if (!file.get(i).isEmpty()) {
				fileName = file.get(i).getOriginalFilename();

				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
				fos = new FileOutputStream(request.getServletContext().getRealPath("/upload") + "/"
						+ sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.')));
				fos.write(file.get(i).getBytes());
				fos.flush();
				fos.close();

			}

		}

		out.print("要上传的文件名:" );
		// return fileName ;
	}
}
