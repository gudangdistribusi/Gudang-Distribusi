import 'package:flutter/material.dart';
import 'package:gudang_distribusi/auth/login.dart';
import 'package:gudang_distribusi/screens/bottomnav.dart';
import 'package:gudang_distribusi/widgets/chats.dart';
import 'package:gudang_distribusi/widgets/create_post.dart';
import 'package:gudang_distribusi/styles.dart';

void main() {
  runApp(
    
    const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.brown 
        ),floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.brown,foregroundColor: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', routes: {
      '/': (context) => const Splash(),
      '/login': (context) => const Login(),
      '/bottomnav':(context)=> const BottomNav(),
      '/post':(context)=>const CreatePost(),
      '/chats':(context)=>const Chats()
    });
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final style = Styles();
  final String title = 'Gudang Distribusi';

  void start() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushNamedAndRemoveUntil(context, '/bottomnav', (route) => false);
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: style.white,
          child: Center(
        child: Text(title),
      )),
    );
  }
}
