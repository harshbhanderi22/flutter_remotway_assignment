import 'package:flutter/material.dart';
import 'package:remotway_login_assignment/Screen/home_screen.dart';
import 'package:remotway_login_assignment/Screen/on_boarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:remotway_login_assignment/google_sign_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)=> ChangeNotifierProvider(
      create: (context) => GoogleSingInProivder(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            }
            else if(snapshot.hasError){
              return Center(child: Text("Something Went Wrong"),);
            }
            else if(snapshot.hasData)
              {
                return Center(child: HomePage(),);
              }
            else {
              return OnBoarding();
            }
          }
        ),
      )
      ),
  );
  }

