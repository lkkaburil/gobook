package spring.sts.ltj;

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
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value ="/reservation", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();	
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/home";
	}
	
	
	@RequestMapping(value="/reservation/reservation",method=RequestMethod.GET)
  	public String service() {
  		return "/reservation/reservation";
  	}
	
	@RequestMapping(value="/reservation/reservation2",method=RequestMethod.GET)
  	public String service2() {
  		return "/reservation/reservation2";
  	}
	
	@RequestMapping(value="/reservation/reservation3",method=RequestMethod.GET)
  	public String service3() {
  		return "/reservation/reservation3";
  	}
	
}
