/**
 * 本例程演示了通过Web上传文件过程中的进度显示。您可以对本例程进行任何修改和使用。
 * 如果需要转载本例程，请您注明作者。
 *
 * 作者： 刘作晨
 * EMail:liuzuochen@gmail.com
 */

package com.mall.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.ProgressListener;

import com.mall.web.BackGroundService;

public class FileUploadListener implements ProgressListener{
	private HttpServletRequest request=null;

	public FileUploadListener(HttpServletRequest request){
		this.request=request;
	}
    public static int currentFileNum=0;
    public static long totalFileSize=0;
	/**
	 * 更新状态
	 */
	public void update(long pBytesRead, long pContentLength, int pItems){
		FileUploadStatus statusBean= BackGroundService.getStatusBean(request);
		
		
		//long ftpreadSize=EventListenerImpl.getTransferedbyte();
		//if((Long)ftpreadSize==null)ftpreadSize=0l;
		
		statusBean.setUploadTotalSize(pContentLength);
		EventListenerImpl.setTotalSize(pContentLength);
		/*//读取完成
	    if (pContentLength == -1) {
	       statusBean.setStatus("完成对" + pItems +"个文件的读取:读取了 " + pBytesRead + " bytes.");
	       statusBean.setReadTotalSize(pBytesRead);
	       statusBean.setSuccessUploadFileCount(pItems);
	       statusBean.setProcessEndTime(System.currentTimeMillis());
	       statusBean.setProcessRunningTime(statusBean.getProcessEndTime());
	    //读取中
	    } else {
	       statusBean.setStatus("当前正在处理第" + pItems +"个文件:已经读取了 " + pBytesRead + " / " + pContentLength+ " bytes.");
	       statusBean.setReadTotalSize(pBytesRead);
	       statusBean.setCurrentUploadFileNum(pItems);
	       statusBean.setProcessRunningTime(System.currentTimeMillis());
	    }*/
	    
        //读取完成
	    if (pContentLength == -1) {
	       statusBean.setStatus("完成对" + pItems +"个文件的读取:读取了 " + pBytesRead + " bytes.");
	       statusBean.setReadTotalSize(pBytesRead);
	       statusBean.setSuccessUploadFileCount(pItems);
	       statusBean.setProcessEndTime(System.currentTimeMillis());
	       statusBean.setProcessRunningTime(statusBean.getProcessEndTime());
	       statusBean.setUploadFlag("http");
	    //读取中
	    } else {
	       statusBean.setStatus("当前正在处理第" +(pItems+1)/3 +"个文件的客户端上传:已经读取了 " + pBytesRead + " / " + pContentLength+ " bytes.");
	       statusBean.setReadTotalSize(pBytesRead);
	       statusBean.setCurrentUploadFileNum((pItems+1)/3);
	       statusBean.setProcessRunningTime(System.currentTimeMillis());
	       statusBean.setUploadFlag("http");
	    }
	   this.currentFileNum=(pItems+1)/3;
	    this.totalFileSize=pContentLength;
            BackGroundService.saveStatusBean(request,statusBean);
	}
	public static void main(String[] args) {
		System.out.println((int)Double.parseDouble(String.valueOf(Math.log10(8)/Math.log10(2))));
	}
}