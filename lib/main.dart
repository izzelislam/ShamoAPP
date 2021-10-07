import 'package:flutter/material.dart';
import 'package:shamo/pages/cart_page.dart';
import 'package:shamo/pages/checkout_page.dart';
import 'package:shamo/pages/checkout_success.dart';
import 'package:shamo/pages/detail_chat_page.dart';
import 'package:shamo/pages/edit_profile_page.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/login_page.dart';
import 'package:shamo/pages/product_page.dart';
import 'package:shamo/pages/register_page.dart';
import 'package:shamo/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/'         : (context) => SplashPage(),
        '/login'    : (context) => LoginPage(),
        '/register' : (context) => RegisterPage(),
        '/home'     : (context) => MainPage(),
        '/detail-chat'     : (context) => DetailChatPage(),
        '/edit-profile'    : (context) => EditProfilePage(),
        '/product'    : (context) => ProductPage(),
        '/cart'    : (context) => CartPage(),
        '/checkout' : (context) => CheckoutPage(),
        '/checkout-success' : (context) => CheckoutSuccess()
      },
    );
  }
}

