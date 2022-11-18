import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wa_clone/colors.dart';
import 'package:wa_clone/features/screens/landing_screen.dart';
import 'package:wa_clone/firebase_options.dart';
import 'package:wa_clone/router.dart';
import 'package:wa_clone/screens/mobile_layout_screen.dart';
import 'package:wa_clone/screens/web_layout_screen.dart';
import 'package:wa_clone/utils/responsive_layout.dart';

 void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options : DefaultFirebaseOptions.currentPlatform,
   );
  runApp(const ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor
        )
      ),
      onGenerateRoute: (settings)=>generateRoute(settings),
      home: const LandingScreen(),
    );
  }
}