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
public class FaqController {
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/faq/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		return "/faq/list";
	}
	
	@RequestMapping(value = "/faq/create", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		return "/faq/create";
	}
	
	@RequestMapping(value = "/faq/read", method = RequestMethod.GET)
	public String read(Locale locale, Model model) {
		return "/faq/read";
	}
	
	@RequestMapping(value = "/faq/read1", method= RequestMethod.GET)
	public String read1(Locale locale, Model model) {
		return "/faq/read1";
	}
	
	@RequestMapping(value = "/faq/update", method = RequestMethod.GET)
	public String update(Locale locale, Model model) {
		return "/faq/update";
	}
	
	@RequestMapping(value = "/faq/delete", method = RequestMethod.GET)
	public String delete(Locale locale, Model model) {
		return "/faq/delete";
	}
}
