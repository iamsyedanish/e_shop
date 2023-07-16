import 'package:e_shop/screens/product_detail_screen.dart';
import 'package:e_shop/screens/product_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Shop',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(
          secondary: Colors.deepOrange,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductOverviewScreen(),
        ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
      },
    );
  }
}
