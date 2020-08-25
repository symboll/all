import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class NativeLocalizations {
  final Locale locale;

  NativeLocalizations(this.locale);

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    }
  };
  static NativeLocalizations of(BuildContext context) {
    return Localizations.of<NativeLocalizations>(
      context,
      NativeLocalizations
    );
  }
  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class NativeLocalizationsDelegate extends LocalizationsDelegate<NativeLocalizations> {
    NativeLocalizationsDelegate();
    
    @override
    Future<NativeLocalizations> load(Locale locale) {
      return SynchronousFuture<NativeLocalizations>(
        NativeLocalizations(locale)
      );
    }

    @override
    bool isSupported(Locale locale) {
      return true;
    }

    @override
    bool shouldReload(LocalizationsDelegate<NativeLocalizations> old) {
      return false;
    }
  
}
