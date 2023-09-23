import 'package:currency/view/home.dart';
import 'package:flutter/material.dart';
import 'package:currency/model/styles/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:customThemes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", ""), // Persian ,Farsi
      ],
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
