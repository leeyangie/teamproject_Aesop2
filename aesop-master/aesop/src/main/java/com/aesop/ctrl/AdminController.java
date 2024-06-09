package com.aesop.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	private static final Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@GetMapping("testadmin.do") // 관리자메인페이지 테스트
    public String myPage() {
        return "admin/adminMain"; 
    }

    /* 관리자 메인 페이지 이동 */
    @RequestMapping(value="main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception{
    
    
        
        
    }
}
