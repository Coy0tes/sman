/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.code.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.code.entity.Code;
import com.jeeplus.modules.code.dao.CodeDao;
import com.jeeplus.modules.member.entity.Member;

/**
 * codeService
 * @author mxc
 * @version 2017-10-14
 */
@Service
@Transactional(readOnly = true)
public class CodeService extends CrudService<CodeDao, Code> {

	public Code get(String id) {
		return super.get(id);
	}
	
	public List<Code> findList(Code code) {
		return super.findList(code);
	}
	
	public Page<Code> findPage(Page<Code> page, Code code) {
		return super.findPage(page, code);
	}
	
	@Transactional(readOnly = false)
	public void save(Code code) {
		
		// 根据是否设置领用人赋值兑换码使用状态，如果设置领用人，状态为已领用，同时赋值使用时间；如果没有赋值，状态为未领用
		if(code.getMember().getId().equals("")){
			code.setStatus("0");
		}else{
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			code.setStatus("1");
			code.setLysj(df.format(new Date()));
		}
		super.save(code);
	}
	
	@Transactional(readOnly = false)
	public void delete(Code code) {
		super.delete(code);
	}

	public int findCode(Code code) {
		return dao.findCode(code);
	}

	public Page<Code> findPageByCode(Page<Code> page, Code code) {
		code.setPage(page);
		page.setList(dao.findListByCode(code));
		return page;
	}

	public Page<Member> findPageBymember(Page<Member> page, Member member) {
		member.setPage(page);
		page.setList(dao.findListBymember(member));
		return page;
	}

	@Transactional(readOnly = false)
	public String saveAddCode(Code code) {
		String msg = "";
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		for(int i = 0; i < Integer.valueOf(code.getCodenum()); i++){
			String codes = df.format(new Date());
			
			// 兑换码重复效验
			int num = 0;
			code.setCode(df.format(new Date()));
			num = dao.findCode(code);
			if(num>0){
				codes = df.format(new Date());
			}
			
			Code c = new Code();
			c.setFfrqq(code.getFfrqq());
			c.setFfrqz(code.getFfrqz());
			c.setYxrqq(code.getYxrqq());
			c.setYxrqz(code.getYxrqz());
			c.setCode(codes);
			c.setStatus("0");
			super.save(c);
		}
		return msg;
	}
	
}