import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color primaryColor = const Color(0xFF911C21);
Color primaryColor = const Color(0xFFF1F3F2); // สีขาว/เทาอ่อน
Color LightBgColor = const Color(0xFF911C21); // สีแดงเข้ม
Color LightBgColor2 = const Color(0xFFE63946); // สีแดงสว่าง
Color secondaryColor = Colors.green;

TextStyle headerStyle = TextStyle(
  fontFamily: GoogleFonts.oswald().fontFamily,
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

TextStyle bodyStyle = TextStyle(
  fontFamily: GoogleFonts.oswald().fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Color(0xFFF1F3F2), // ปรับให้เหมาะกับพื้นหลังขาว
);
