import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/home_page.dart';
import 'package:theme_app/root_app_service.dart';

void main() {
  runApp(const _SimpleThemeApp());
}

class _SimpleThemeApp extends StatelessWidget {
  const _SimpleThemeApp();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootAppService(),
      child: Consumer<RootAppService>(
        builder: (context, service, child) {
          return MaterialApp(
            theme: service.currentTheme,
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
