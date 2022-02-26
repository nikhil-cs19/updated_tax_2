
// import '../tax_saving_pages/intrest_80TTA.dart';
// import 'package:tax_manager/tax_saving_pages/Sectio-n_main.dart';
import './Widgets/drawer.dart';
import 'package:flutter/material.dart';
import './user/login.dart';
import 'package:firebase_core/firebase_core.dart';
import './tax_saving_pages/Section_main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:testing_app/pages/login_page.dart';
// import 'package:testing_app/utils/routes.dart';
// import 'pages/home_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
        "/":(context)=>Login_page(),

      },
      );
  }
}


