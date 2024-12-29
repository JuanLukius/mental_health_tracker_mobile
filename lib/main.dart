import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:toko_barang_gak_guna_mobile/screens/login.dart';
import 'package:toko_barang_gak_guna_mobile/screens/menu.dart';
=======
import 'package:mental_health_tracker/screens/login.dart';
import 'package:mental_health_tracker/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
<<<<<<< HEAD
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
       primarySwatch: Colors.deepPurple,
 ).copyWith(secondary: Colors.deepPurple[400]),
      ),
      home:  const LoginPage(),
      ),
=======
        title: 'Mental Health Tracker',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ).copyWith(secondary: Colors.deepPurple[400]),
        ),
        home: const LoginPage(),
      ),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
    );
  }
}


