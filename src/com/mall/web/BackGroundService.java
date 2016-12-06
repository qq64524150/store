/**
 * 本例程演示了通过Web上传文件过程中的进度显示。您可以对本例程进行任何修改和使用。
 * 如果需要转载本例程，请您注明作者。
 *
 * 作者： 刘作晨
 * EMail:liuzuochen@gmail.com
 */

package com.mall.web;

/**
 * <p>Title: 后台服务</p>
 *
 * <p>Description: 为客户端提供上传及文件传输状态查询服务</p>
 *
 */

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mall.util.BeanControler;
import com.mall.util.FileUploadListener;
import com.mall.util.FileUploadStatus;


public class BackGroundService extends javax.servlet.http.HttpServlet implements
        javax.servlet.Servlet {

    public static final String UPLOAD_DIR = "/upload";
    public static final String DEFAULT_UPLOAD_FAILURE_URL = "index2.jsp";

    public BackGroundService() {
        super();
    }


    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException,
            IOException {
        doPost(request, response);
    }

    /**
     * 从文件路径中取出文件名
     */
    private String takeOutFileName(String filePath) {
        int pos = filePath.lastIndexOf(File.separator);
        if (pos > 0) {
            return filePath.substring(pos + 1);
        } else {
            return filePath;
        }
    }

    /**
     * 从request中取出FileUploadStatus Bean
     */
    public static FileUploadStatus getStatusBean(
            HttpServletRequest request) {
        BeanControler beanCtrl = BeanControler.getInstance();
        return beanCtrl.getUploadStatus(request.getRemoteAddr());
    }

    /**
     * 把FileUploadStatus Bean保存到类控制器BeanControler
     */
    public static void saveStatusBean(
            HttpServletRequest request,
            FileUploadStatus statusBean) {
        statusBean.setUploadAddr(request.getRemoteAddr());
        BeanControler beanCtrl = BeanControler.getInstance();
        beanCtrl.setUploadStatus(statusBean);
    }

    /**
     * 删除已经上传的文件
     */
    private void deleteUploadedFile(HttpServletRequest request) {
        FileUploadStatus satusBean = getStatusBean(request);
        for (int i = 0; i < satusBean.getUploadFileUrlList().size(); i++) {
            File uploadedFile = new File(request.getRealPath(UPLOAD_DIR) +
                                         File.separator +
                                         satusBean.getUploadFileUrlList().
                                         get(i));
            uploadedFile.delete();
        }
        satusBean.getUploadFileUrlList().clear();
        satusBean.setStatus("删除已上传的文件");
        saveStatusBean(request, satusBean);
    }

    /**
     * 上传过程中出错处理
     */
    private void uploadExceptionHandle(
            HttpServletRequest request,
            String errMsg) throws ServletException, IOException {
        //首先删除已经上传的文件
        deleteUploadedFile(request);
        FileUploadStatus satusBean = getStatusBean(request);
        satusBean.setStatus(errMsg);
        saveStatusBean(request, satusBean);
    }

    /**
     * 初始化文件上传状态Bean
     */
    private FileUploadStatus initStatusBean(HttpServletRequest
            request) {
        FileUploadStatus satusBean = new FileUploadStatus();
        satusBean.setStatus("正在准备处理");
        satusBean.setUploadTotalSize(request.getContentLength());
        satusBean.setProcessStartTime(System.currentTimeMillis());
        satusBean.setBaseDir(request.getContextPath() + UPLOAD_DIR);
        return satusBean;
    }

    /**
     * 处理文件上传
     */
    private void processFileUpload(HttpServletRequest request,
                                   HttpServletResponse response) throws
            ServletException, IOException {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        //设置内存缓冲区，超过后写入临时文件
        factory.setSizeThreshold(10240000);
        //设置临时文件存储位置
        factory.setRepository(new File(request.getRealPath("/upload/temp")));
     
        ServletFileUpload upload = new ServletFileUpload(factory);
        //设置单个文件的最大上传值
        upload.setFileSizeMax(5*102400000);
        //设置整个request的最大值
        upload.setSizeMax(10*102400000);
        upload.setProgressListener(new FileUploadListener(request));
        //保存初始化后的FileUploadStatus Bean
        saveStatusBean(request, initStatusBean(request));
        FileUploadStatus satusBean =
            getStatusBean(request);
        String forwardURL = "";
        int flag=1;
        try {
            List items = upload.parseRequest(request);
            //获得返回url
            for (int i = 0; i < items.size(); i++) {
                FileItem item = (FileItem) items.get(i);
                if (item.isFormField()) {
                    forwardURL = item.getString();
                    break;
                }
            }
           
            //处理文件上传
            for (int i = 0; i < items.size(); i++) {
                FileItem item = (FileItem) items.get(i);

                //取消上传
                if (getStatusBean(request).getCancel()) {
                    deleteUploadedFile(request);
                    break;
                }
                //保存文件
                else if (!item.isFormField() && item.getName().length() > 0) {
                    String fileName = takeOutFileName(item.getName());
                    File uploadedFile = new File(request.getRealPath(UPLOAD_DIR) +
                                                 File.separator + fileName);
                    item.write(uploadedFile);
                    flag++;
                    //更新上传文件列表
                   
                    satusBean.getUploadFileUrlList().add(fileName);
                    saveStatusBean(request, satusBean);
                    //Thread.sleep(500);
                }
            }
       
        } catch (FileUploadException e) {
            uploadExceptionHandle(request, "上传文件时发生错误:" + e.getMessage());
        } catch (Exception e) {
            uploadExceptionHandle(request, "保存上传文件时发生错误:" + e.getMessage());
        }
        if (forwardURL.length() == 0) {
            forwardURL = DEFAULT_UPLOAD_FAILURE_URL;
        }
        request.setAttribute("msg", "<font size=2><b>文件上传成功!</b></font>");
        request.getRequestDispatcher("admin/index.jsp").forward(request, response);
    }

    /**
     * 回应上传状态查询
     */
    private void responseStatusQuery(HttpServletRequest request,
                                              HttpServletResponse response) throws
            IOException {
        response.setContentType("text/xml");
        response.setHeader("Cache-Control", "no-cache");
        FileUploadStatus satusBean = getStatusBean(request);
        response.setCharacterEncoding("gbk");
        response.getWriter().write(satusBean.toJSon());
    }

    /**
     * 处理取消文件上传
     */
    private void processCancelFileUpload(HttpServletRequest request,
                                         HttpServletResponse response) throws
            IOException {
        FileUploadStatus satusBean = getStatusBean(request);
        satusBean.setCancel(true);
        saveStatusBean(request, satusBean);
        responseStatusQuery(request, response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException,
            IOException {
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            processFileUpload(request, response);
        } else {
            request.setCharacterEncoding("gbk");

            if (request.getParameter("uploadStatus") != null) {
                responseStatusQuery(request, response);
            }
            if (request.getParameter("cancelUpload") != null) {
                processCancelFileUpload(request, response);
            }

        }
    }
}
