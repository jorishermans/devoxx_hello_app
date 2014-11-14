part of hello;

/**
 * Handles requests for the application home page.
 */
@Controller
class HomeController {
  
  static final Logger logger = new Logger("hello");
  
  /**
   * Simply selects the home view to render by returning its name.
   */
  @RequestMapping(value: "/", method: RequestMethod.GET)
  String home(Locale locale, Model model) {
    logger.info("Welcome home! The client locale is {}.", locale);
    
    DateTime date = new DateTime.now();
    DateFormat dateFormat = new DateFormat("yyyy-MM-dd", locale.toString());
    String formattedDate = dateFormat.format(date);
    
    model.addAttribute("serverTime", formattedDate );
    
    return "home";
  }
  
}
