import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_messenger/common/routes/routes.dart';
import 'package:whatsapp_messenger/common/theme/dark_theme.dart';
import 'package:whatsapp_messenger/common/theme/light_theme.dart';
import 'package:whatsapp_messenger/feature/auth/pages/user_info_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp X',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const UserInfoPage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
