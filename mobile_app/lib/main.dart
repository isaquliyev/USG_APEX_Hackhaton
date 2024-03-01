import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Presentation/Routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NodeX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
          displayMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
          displaySmall: GoogleFonts.poppins(),
        )
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}