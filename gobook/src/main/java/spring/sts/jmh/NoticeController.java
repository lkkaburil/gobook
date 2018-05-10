package spring.sts.jmh;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NoticeController {
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		return "/notice";
	}
	
	@RequestMapping(value = "/notice/create", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		return "/notice/create";
	}
	
	@RequestMapping(value = "/notice/read", method = RequestMethod.GET)
	public String read(Locale locale, Model model) {
		return "/notice/read";
	}
	
	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
	public String update(Locale locale, Model model) {
		return "/notice/update";
	}
	
	@RequestMapping(value = "/notice/delete", method = RequestMethod.GET)
	public String delete(Locale locale, Model model) {
		return "/notice/delete";
	}
}
