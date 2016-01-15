package org.cw.group.servlet;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.cw.group.bean.Produce;
import org.cw.group.dao.OrderItemDao;
import org.cw.group.dao.produceDao;
import org.cw.group.util.Page;

public class produceservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gbk");
		request.setCharacterEncoding("gbk");

		String action = request.getParameter("action");
		if (action.equals("insert"))
			try {
				insert(request, response);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		else if (action.equals("list") || action.equals("list1"))
			list(request, response);
		else if (action.equals("saveupdate"))
			try {
				saveupdate(request, response);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		else if (action.equals("query"))
			query(request, response);
		else if (action.equals("query1"))
			query1(request, response);
		else if (action.equals("update"))
			update(request, response);
		else if (action.equals("delete"))
			delete(request, response);
		else if (action.equals("listformer"))
			listformer(request, response);

		else if (action.equals("selectcity")) {
			selectcity(request, response);
		}
		else if (action.equals("successPro")) {
			successPro(request, response);
		}else if (action.equals("tradeOK")){
			updateBuyAmount(request, response);
		}
	}
	
	private void updateBuyAmount(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		produceDao dao = new produceDao();
	}
	
	private void successPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		produceDao dao = new produceDao();
		List<Produce> list = dao.successPro();
		if (list == null) {

		} else {
			request.setAttribute("list", list);
			request.getRequestDispatcher("oktuangou.jsp").forward(request,
					response);
		}
	}

	private void selectcity(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String currentPage = request.getParameter("currentPage");
//		String city = request.getParameter("city");
		String city = "tianjin";
		produceDao pdao = new produceDao();
		List<Produce> plist = pdao.listtoday(city,"");
		if (plist != null) {
//			request.setAttribute("city", city);
			request.setAttribute("plist", plist);
			request.getRequestDispatcher("totalindex.jsp").forward(request,
					response);
		} else {
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		}

	}

	private void listformer(HttpServletRequest request,	HttpServletResponse response) throws ServletException, IOException {
//		String city = request.getParameter("city");
		String city = "tianjin";
		String username = (String) request.getAttribute("userName");
		produceDao dao = new produceDao();
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		String sql="select count(pro_id) as rn from produce where pro_endtime <'"+datetime+"'";
//		+"' and pro_city='"+city+"'";
		Page page = new Page(20,sql);
		//System.out.println(sql);
		page.setPageCurrent(request.getParameter("pageCurrent"));
		List<Produce> list = dao.listformer(page, city);
		if (list == null)
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		else {
			request.setAttribute("city", city);
			request.setAttribute("page", page);
			request.setAttribute("userName", username);
			request.setAttribute("List", list);
            System.out.print(list.size());
			request.getRequestDispatcher("wqtg.jsp").forward(request, response);
		}

	}

	private void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		response.setContentType("text/html;charset=gbk");
		request.setCharacterEncoding("gbk");
		
//		 //获得磁盘文件条目工厂  
//        DiskFileItemFactory factory = new DiskFileItemFactory();  
//        //获取文件需要上传到的路径  
//        String path = request.getRealPath("/images");  
//          
//        //如果没以下两行设置的话，上传大的 文件 会占用 很多内存，  
//        //设置暂时存放的 存储室 , 这个存储室，可以和 最终存储文件 的目录不同  
//        /** 
//         * 原理 它是先存到 暂时存储室，然后在真正写到 对应目录的硬盘上，  
//         * 按理来说 当上传一个文件时，其实是上传了两份，第一个是以 .tem 格式的  
//         * 然后再将其真正写到 对应目录的硬盘上 
//         */  
//        factory.setRepository(new File(path));  
//        //设置 缓存的大小，当上传文件的容量超过该缓存时，直接放到 暂时存储室  
//        factory.setSizeThreshold(1024*1024) ;  
//          
//        //高水平的API文件上传处理  
//        ServletFileUpload upload = new ServletFileUpload(factory);  
//        
//        try {  
//            //可以上传多个文件  
//            List<FileItem> list = (List<FileItem>)upload.parseRequest(request);  
//              
//            for(FileItem item : list)  
//            {  
//                //获取表单的属性名字  
//                String name = item.getFieldName();  
//                  
//                //如果获取的 表单信息是普通的 文本 信息  
//                if(item.isFormField())  
//                {                     
//                    //获取用户具体输入的字符串 ，名字起得挺好，因为表单提交过来的是 字符串类型的  
//                    String value = item.getString() ;  
//                      
//                    request.setAttribute(name, value);  
//                }  
//                //对传入的非 简单的字符串进行处理 ，比如说二进制的 图片，电影这些  
//                else  
//                {  
//                    /** 
//                     * 以下三步，主要获取 上传文件的名字 
//                     */  
//                    //获取路径名  
//                    String value = item.getName() ;  
//                    //索引到最后一个反斜杠  
//                    int start = value.lastIndexOf("\\");  
//                    //截取 上传文件的 字符串名字，加1是 去掉反斜杠，  
//                    String filename = value.substring(start+1);  
//                      
//                    request.setAttribute(name, filename);  
//                      
//                    //真正写到磁盘上  
//                    //它抛出的异常 用exception 捕捉  
//                      
//                    //item.write( new File(path,filename) );//第三方提供的  
//                      
//                    //手动写的  
//                    OutputStream out = new FileOutputStream(new File(path,filename));  
//                      
//                    InputStream in = item.getInputStream() ;  
//                      
//                    int length = 0 ;  
//                    byte [] buf = new byte[1024] ;  
//                      
//                    System.out.println("获取上传文件的总共的容量："+item.getSize());  
//  
//                    // in.read(buf) 每次读到的数据存放在   buf 数组中  
//                    while( (length = in.read(buf) ) != -1)  
//                    {  
//                        //在   buf 数组中 取出数据 写到 （输出流）磁盘上  
//                        out.write(buf, 0, length);  
//                          
//                    }  
//                      
//                    in.close();  
//                    out.close();  
//                }  
//            }  
//              
//              
//              
//        } catch (FileUploadException e) {  
//            // TODO Auto-generated catch block  
//            e.printStackTrace();  
//        }  
//        catch (Exception e) {  
//            // TODO Auto-generated catch block  
//              
//            //e.printStackTrace();  
//        }  
//        request.getRequestDispatcher("filedemo.jsp").forward(request, response);  
        
//		String proCity = request.getParameter("proCity");
		String proCity = "tianjin";
		String proType = request.getParameter("proType");
		String proTitle = request.getParameter("proTitle");
		String proMPrice = request.getParameter("proMPrice");
		String proTPrice = request.getParameter("proTPrice");
		String proLowAmount = request.getParameter("proLowAmount");
//		String proHighAmount = request.getParameter("proHighAmount");
		String proHighAmount = "1000";
		@SuppressWarnings("unused")
		String proStartTime = request.getParameter("proStartTime");
//		String proEndTime = request.getParameter("proEndTime");
//		String proCloseTime=request.getParameter("proCloseTime");
		String proIntroduce = request.getParameter("proIntroduce");
		String proPrompt = request.getParameter("proPrompt");
		String proProducer = request.getParameter("proProducer");
		String proName = request.getParameter("proName");
		String proImg1 = request.getParameter("proImg1");
		String proImg2 = request.getParameter("proImg2");
		String proImg3 = request.getParameter("proImg3");
		String proIndent = request.getParameter("proIndent");
		Produce p = new Produce();
		p.setProCity(proCity);
		p.setProType(proType);
		p.setProTitle(proTitle);
		p.setProMprice(Double.parseDouble(proMPrice));
		p.setProTprice(Double.parseDouble(proTPrice));
		p.setProLowAmount(Integer.parseInt(proLowAmount));
		p.setProHighAmount(Integer.parseInt(proHighAmount));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DAY_OF_MONTH, -4);
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());
		p.setProStartTime(sdf.parse(datetime));
		c.add(Calendar.DAY_OF_MONTH, +20);
		String datetime2 = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());
		p.setProEndTime(sdf.parse(datetime2));
		p.setProCloseTime(sdf.parse(datetime2));
		p.setProIntroduce(proIntroduce);
		p.setProPrompt(proPrompt);
		p.setProProducer(proProducer);
		p.setProName(proName);
		p.setProImg1(proImg1);
		p.setProImg2(proImg2);
		p.setProImg3(proImg3);
		p.setProIndent(proIndent);
		p.setProBuyAmount(0);
		produceDao dao = new produceDao();
		boolean result = dao.insert(p);
		if (result) {
			request.setAttribute("flag", "3");
			list(request, response);
		} else
			request.getRequestDispatcher("fail.jsp").forward(request, response);

	}


	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String proId = request.getParameter("proId");
		produceDao dao = new produceDao();
		boolean result = dao.delete(proId);
		if (result) {
			list(request, response);
		} else
			request.getRequestDispatcher("fail.jsp").forward(request, response);

	}

	private void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = (String) request.getAttribute("userName");
		String flag = request.getParameter("flag");
		if(flag==null){
			flag =  (String) request.getAttribute("flag");
		}
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); 
		String sql1="select count(pro_id) as rn from produce where pro_buyamount>=pro_lowamount";
		String sql2="select count(pro_id) as rn from produce where pro_buyamount<pro_lowamount and pro_closetime<'"+datetime+"'";
		String sql3="select count(*) as rn from produce where pro_closetime>='"+datetime+"'";
		
		produceDao dao = new produceDao();
		List<Produce> list = dao.list(flag);
		request.setAttribute("userName", username);
		
		if (list == null) {
			
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		else if (flag.equals("0")) {
			Page page = new Page(10,sql1);
			page.setPageCurrent(request.getParameter("pageCurrent"));
			request.setAttribute("List", list);
			request.getRequestDispatcher("oktuangou.jsp").forward(request,response);
		} else if (flag.equals("1")) {
			Page page = new Page(10,sql2);
			page.setPageCurrent(request.getParameter("pageCurrent"));
			request.setAttribute("List", list);
			request.getRequestDispatcher("failTuangou.jsp").forward(request,response);
		} else {
			Page page= new Page(10,sql3);
			page.setPageCurrent(request.getParameter("pageCurrent"));
			request.setAttribute("List", list);
			request.getRequestDispatcher("dangqian.jsp").forward(request,response);
		}

	}

	private void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String proId = request.getParameter("proId");
//		String city=request.getParameter("city");
		String city = "tianjin";
		OrderItemDao odao = new OrderItemDao();
		int produceId = Integer.parseInt(proId);
		int proNumInOrder = odao.queryProNumInOrder(produceId);
		produceDao dao = new produceDao();
		Produce p = dao.query(proId);
		SimpleDateFormat formatter =new SimpleDateFormat("yyyy/MM/dd");
		String ctime = formatter.format(p.getProEndTime());
		if (p == null)
			request.getRequestDispatcher("error.jsp").forward(request, response);
		else {
			request.setAttribute("proNumInOrder", proNumInOrder);
			request.setAttribute("produce", p);
			request.setAttribute("endTime", ctime);
			request.getRequestDispatcher("producedetail.jsp").forward(request, response);
		}

	}

	private void query1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String proId = request.getParameter("proId");
//		String city=request.getParameter("city");
		String city= "tianjin";
		String userName = request.getParameter("userName");
		
		OrderItemDao odao = new OrderItemDao();
		int produceId = Integer.parseInt(proId);
		int proNumInOrder = odao.queryProNumInOrder(produceId);
		
		produceDao dao = new produceDao();
		Produce p = dao.query(proId);
		if (p == null)
			request.getRequestDispatcher("error.jsp").forward(request, response);
		else {
			request.setAttribute("userName", userName);
			request.setAttribute("city",city);
			request.setAttribute("proNumInOrder", proNumInOrder);
			request.setAttribute("produce", p);
			request.getRequestDispatcher("tijiaodingdan.jsp").forward(request,response);
		}

	}

	private void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String proId = request.getParameter("proId");
		produceDao dao = new produceDao();
		Produce p = dao.query(proId);
		if (p == null) {

			request.getRequestDispatcher("fail.jsp").forward(request, response);
		} else {
			request.setAttribute("produce", p);
			request.getRequestDispatcher("produceupdate.jsp").forward(request,
					response);

		}
	}

	private void saveupdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			ParseException {
		response.setContentType("text/html;charset=gbk");
		request.setCharacterEncoding("gbk");
		String proId = request.getParameter("proId");
//		String proCity = request.getParameter("proCity");
		String proCity= "tianjin";//
		String proType = request.getParameter("proType");
		String proTitle = request.getParameter("proTitle");
		String proMPrice = request.getParameter("proMPrice");
		String proTPrice = request.getParameter("proTPrice");
		String proLowAmount = request.getParameter("proLowAmount");
		String proHighAmount = request.getParameter("proHightAmount");
		String proStartTime = request.getParameter("proStartTime");
		String proEndTime = request.getParameter("proEndTime");
		String proCloseTime = request.getParameter("proCloseTime");
		String proIntroduce = request.getParameter("proIntroduce");
		String proPrompt = request.getParameter("proPrompt");
		String proProducer = request.getParameter("proProducer");
		String proName = request.getParameter("proName");
		String proImg1 = request.getParameter("proImg1");
		String proImg2 = request.getParameter("proImg2");
		String proImg3 = request.getParameter("proImg3");
		String proIndent = request.getParameter("proIndent");
		Produce p = new Produce();
		p.setProCity(proCity);
		p.setProType(proType);
		p.setProTitle(proTitle);
		p.setProMprice(Double.parseDouble(proMPrice));
		p.setProTprice(Double.parseDouble(proTPrice));
		p.setProLowAmount(Integer.parseInt(proLowAmount));
		p.setProHighAmount(Integer.parseInt(proHighAmount));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		p.setProStartTime(sdf.parse(datetime));
		p.setProEndTime(sdf.parse(datetime));
		p.setProCloseTime(sdf.parse(datetime));
		p.setProIntroduce(proIntroduce);
		p.setProPrompt(proPrompt);
		p.setProProducer(proProducer);
		p.setProName(proName);
		p.setProImg1(proImg1);
		p.setProImg2(proImg2);
		p.setProImg3(proImg3);
		p.setProIndent(proIndent);
		produceDao dao = new produceDao();
		boolean result = dao.saveupdate(p);
		if (result) {
			list(request, response);
		} else
			request.getRequestDispatcher("fail.jsp").forward(request, response);

	}

}
