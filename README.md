devoxx hello app
================

This is a demo app of forcemvc that I created to show how easily it is to copy java spring mvc code and translate it into dart code.

This is the java controller code:

  @Controller
  public class HomeController {
  	
  	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
  	
  	// Simply selects the home view to render by returning its name.
  	@RequestMapping(value = "/", method = RequestMethod.GET)
  	public String home(Locale locale, Model model) {
  		logger.info("Welcome home! The client locale is {}.", locale);
  		
  		Date date = new Date();
  		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
  		
  		String formattedDate = dateFormat.format(date);
  		
  		model.addAttribute("serverTime", formattedDate );
  		
  		return "home";
  	}
  	
  }
  
And in this example you see the resembling dart code of it!
