import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'auth/register.dart';
import 'auth/dashboard.dart';
import 'dashboard/home.dart';
import 'dashboard/product.dart';
import 'dashboard/promotion.dart';
import 'dashboard/order.dart';
import 'dashboard/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweetTreatsApps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/home': (context) => const HomePage(),
        '/products': (context) => const ProductPage(),
        '/promotions': (context) => const PromotionPage(),
        '/orders': (context) => const OrderPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
