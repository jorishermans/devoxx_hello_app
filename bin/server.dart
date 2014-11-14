library hello;

import 'package:logging/logging.dart';
import 'package:wired/wired.dart';
import 'package:forcemvc/force_mvc.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

part 'controllers/home_controller.dart';

main() {
  initializeDateFormatting("nl_NL", null).then((_) { 
  WebApplication app = new WebApplication();
     
  app.setupConsoleLog(Level.FINEST);
     
  app.start(); 
  });
}

