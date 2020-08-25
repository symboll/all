import 'package:flutter/material.dart';
import './native_localizations.dart';

class I18nDemo extends StatefulWidget {
  @override
  _I18nDemoState createState() => _I18nDemoState();
}

class _I18nDemoState extends State<I18nDemo> {
  
  @override
  Widget build(BuildContext context) {
    Locale _locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_locale.languageCode}'),
            Text(_locale.toString()),
            Text(
              Localizations.of(context, NativeLocalizations).title,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              NativeLocalizations.of(context).title,
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}