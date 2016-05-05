package com.cbi.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.cbi.dao.PestDAO;
import com.cbi.entity.Pest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ClientAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {
	
	HttpServletRequest request;
	HttpServletResponse response;
	private JSONObject json;
	
	// ------------------------------------------
//	Map<String, Object> tRequest;
//	Map<String, Object> tSession;
//	Map<String, Object> tApplication;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
//		json=JSONObject.fromObject(readRequestString(request));
//		System.out.println(request);
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
	}
	
	/**
	 * 处理字符串
	 * 
	 * @param str
	 * @return
	 */
	private String changeCharSet(String str) {
		// System.out.println("接受到得字节数组:"+str);
		String[] strs = str.split(";");
		byte[] bs = new byte[strs.length];
		for (int i = 0; i < strs.length; i++) {
			bs[i] = (byte) Integer.parseInt(strs[i]);
		}
		try {
			str = new String(bs, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}
	
	/**
	 * 读取json字符串
	 * 
	 * @param request
	 * @return
	 */

	private String readRequestString(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = request.getReader();
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return sb.toString();
	}
	
	/**
	 * 返回客户端数据
	 * 
	 * @param root
	 */
	private void responseToClient(JSONObject root) {
		try {
			byte[] jsonBytes = root.toString().getBytes("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
//			response.setContentLength(jsonBytes.length);
//			response.getOutputStream().write(jsonBytes);
//			response.getOutputStream().flush();
//			response.getOutputStream().close();
//			response.
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 用户登录
	 * @throws IOException 
	 */
	public String login() throws IOException{
//		System.out.println("用户登录:"+json);
//		UserDao ud=new UserDao();
//		User user=ud.login(json.getString("name"), json.getString("password"));
//		JSONObject root=new JSONObject();
//		if(user!=null){
//			root.put("ret", "登录成功");
//			root.put("me", user.toString());
//			ArrayList<User> list=ud.getFriends(user.getId());
//			if(list==null){
//				list=new ArrayList<User>();
//			}
//			JSONUtil.composeClientJSON(root, "friends", list);
//		}else{
//			root.put("ret", "登录失败");
//		}
//		System.out.println(root);
//		responseToClient(root);
		System.out.println("this is log in action!!!!");
//		response.getWriter().write("success");
		return "success";
	}
	
	
	public String getAllPest() throws IOException{
		ActionContext actionContext = ActionContext.getContext(); 
		Map<String, Object> tRequest = (Map) actionContext.get("request");
		PestDAO pd = new PestDAO();
		List<Pest> plist = pd.findAllPest();
		for(Pest p : plist)
			System.out.println(p);
		tRequest.put("pestList", plist);
//		tRequest.put("a", "AAAAAAAAAA");
		return "PestControl";
//		return "test";
	}
	

}
