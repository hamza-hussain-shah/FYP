import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_flutter/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flash_chat_flutter/screens/login_page.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/chat_screen.dart';
import 'package:flash_chat_flutter/screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(FlashChat());runApp(FlashChat());
}


class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id, // Set the initial route

      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        LoginPage.id: (context) => LoginPage(),
        ChatScreen.id: (context) => ChatScreen(),
        HomePage.id: (context) => HomePage(),
      },


    );
  }
}
