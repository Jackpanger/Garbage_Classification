import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'pages/routes/Routes.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        LanguageChange.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: LanguageChange.delegate.supportedLocales,
      localeListResolutionCallback: (locales, supportedLocales) {
        print(locales);
        return;
      },

      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}

