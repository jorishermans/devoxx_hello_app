part of hello;

@Controller
class HomeController {
  
  static final Logger logger = new Logger('HomeController');
  
  /**
   * Simply selects the home view to render by returning its name.
   */
  @RequestMapping(value: "/", method: RequestMethod.GET)
  String home(Locale locale, Model model) {
    logger.info("Welcome home! The client locale is ${locale}.");
    
    DateTime date = new DateTime.now();
    DateFormat dateFormat = new DateFormat("yyyy-MM-dd", locale.toString());
    
    String formattedDate = dateFormat.format(date);
    
    model.addAttribute("serverTime", formattedDate );
    
    return "home";
  }
  
}
