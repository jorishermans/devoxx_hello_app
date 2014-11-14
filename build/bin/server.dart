library hello;

import 'package:logging/logging.dart';
import 'package:forcemvc/force_mvc.dart';
import 'package:intl/intl.dart';

import 'package:intl/date_symbol_data_local.dart';
  

part 'controllers/hello_controller.dart';

void main() { 
  
  initializeDateFormatting("nl_NL", null).then((_) {

  // Create a force server 
  WebServer server = new WebServer(port: 3030,
                                   clientFiles: '../build/web/',
                                   views: "views/");
  
  // Set up logger.
  server.setupConsoleLog(Level.FINEST);
  
  // Start serving force 
  server.start();
  });
}

