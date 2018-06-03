package cn.yanshu.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.org.apache.xpath.internal.operations.Mod;

import cn.yanshu.service.IReportService;
import cn.yanshu.service.IXiaomiServie;

@Controller
@RequestMapping("/report")
public class ReportAction {
	@Resource
   private IReportService  reportService;
	
	@Resource
	private  IXiaomiServie  xiaomiServie;
	
	@RequestMapping("/getline")
	public @ResponseBody Object  getline(){
		return reportService.smtline_getline();
	}
	
	@RequestMapping("/linetomo")
	public  String  smtline_linetomo(String moname,String workcenterid,Model model){
		model.addAttribute("moname", moname);
		model.addAttribute("workcenterid", workcenterid);
		return "/WEB-INF/report/smtline_mo.jsp";
	}
	
	@RequestMapping("/smtline_mo")
	public @ResponseBody Object  smtline_mo(String moname,String workcenterid){
		return reportService.smtline_mo(moname, workcenterid);
	}
	
	
	@RequestMapping("/smtline_third_para")
	public  String  smtline_third_para(String moname,String workcenterid,Model model){
		model.addAttribute("moname", moname);
		model.addAttribute("workcenterid", workcenterid);
		return "/WEB-INF/report/smtline_third.jsp";
	}
	
	
	@RequestMapping("/smtline_third")
	public  @ResponseBody Object  smtline_third(String moname,String workcenterid){
		return reportService.smtline_mz(moname, workcenterid);
	}
	
	/**
	 * 通过1B-3FA获取所有的实际线体
	 * */
	@RequestMapping("/zbsite_getworkcenter")
	public @ResponseBody  Object   zbsite_getworkcenter (String site){
		return reportService.zbsite_getworkcenter(site);
		
	}
	@RequestMapping("/zbsite_getresult")
	public @ResponseBody  Object   zbsite_getresult (String site,String workcenter,String adate,String bdate,String banci){
		return  reportService.zbsite_getresult(site, workcenter, adate, bdate, banci);
	}
	
	
	@RequestMapping("/smtopc_example")
	public @ResponseBody  Object   smtopc_example (String moid,String moname,String lotsn){
		return  reportService.smtopc_example(moid, moname, lotsn);
	}
	
	/**
	 * 小米 smt  贴片机数据
	 * 
	 * */
	@RequestMapping("/getXiaomiline")
	public @ResponseBody Object getXiaomiline(String line,String page,String rows){
		Map<String,Object>  paramap=new HashMap<String, Object>();
		paramap.put("line",line);
		paramap.put("page",page);
		paramap.put("rows",rows);
		paramap.put("count",0);//输出参数
		
		List<Map<String, Object>> slots = xiaomiServie.getLineinfo(paramap);
		Map<String,Object>  res=new  HashMap<String,Object>();
		res.put("total",paramap.get("count"));
		res.put("rows", slots);
		return res;
	}
	
	
	/**
	 * 小米 smt  贴片机数据machine
	 * 
	 * */
	@RequestMapping("/getXiaomiMachine")
	public @ResponseBody Object getXiaomiMachine(String line,String page,String rows){
		Map<String,Object>  paramap=new HashMap<String, Object>();
		paramap.put("line",line);
		paramap.put("page",page);
		paramap.put("rows",rows);
		paramap.put("count",0);//输出参数
		
		List<Map<String, Object>> slots = xiaomiServie.getMachineinfo(paramap);
		Map<String,Object>  res=new  HashMap<String,Object>();
		res.put("total",paramap.get("count"));
		res.put("rows", slots);
		return res;
	}
	
	
}
