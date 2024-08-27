import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['tr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? trText = '',
    String? enText = '',
  }) =>
      [trText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    '883p5081': {
      'tr': 'TR',
      'en': 'EN',
    },
    'dt0flzde': {
      'tr': 'MSC Mixing System',
      'en': 'MSC Mixing System',
    },
    'lz1sgzkx': {
      'tr': 'Müşteri Kodu',
      'en': 'Customer Code',
    },
    '3yqikr54': {
      'tr': 'Kullanıcı adı',
      'en': 'Username',
    },
    'vmphk4gp': {
      'tr': 'Parola',
      'en': 'Password',
    },
    '0swpkm39': {
      'tr': 'Giriş',
      'en': 'Login',
    },
    'bpxncwmb': {
      'tr': 'Şifremi unuttum',
      'en': 'Forgot Password',
    },
    '7n53u0kk': {
      'tr': 'Anasayfa',
      'en': 'Home',
    },
  },
  // HomePage
  {
    'r3e69avs': {
      'tr': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'n1agidf5': {
      'tr': '',
      'en': '',
    },
    '06uabxod': {
      'tr': '',
      'en': '',
    },
    'mhju1182': {
      'tr': '',
      'en': '',
    },
    'z8t9gtwl': {
      'tr': '',
      'en': '',
    },
    'wt1fzwn7': {
      'tr': '',
      'en': '',
    },
    'd5bkbjka': {
      'tr': '',
      'en': '',
    },
    '6wev5yns': {
      'tr': '',
      'en': '',
    },
    'wm5v4jay': {
      'tr': '',
      'en': '',
    },
    'li44a2kt': {
      'tr': '',
      'en': '',
    },
    'gdmvkoz3': {
      'tr': '',
      'en': '',
    },
    't066ycb0': {
      'tr': '',
      'en': '',
    },
    'qt2axjyo': {
      'tr': '',
      'en': '',
    },
    'gp66q2cu': {
      'tr': '',
      'en': '',
    },
    '0s8wlfzf': {
      'tr': '',
      'en': '',
    },
    'uwpo8k64': {
      'tr': '',
      'en': '',
    },
    'kqsme6nu': {
      'tr': '',
      'en': '',
    },
    'gc79fj3a': {
      'tr': '',
      'en': '',
    },
    'sq9c2vf8': {
      'tr': '',
      'en': '',
    },
    'muusql4q': {
      'tr': '',
      'en': '',
    },
    'uph6ajmm': {
      'tr': '',
      'en': '',
    },
    '9pzm9knw': {
      'tr': '',
      'en': '',
    },
    'fvcdy5mw': {
      'tr': '',
      'en': '',
    },
    'i8xn3q2r': {
      'tr': '',
      'en': '',
    },
    '9vv52jsz': {
      'tr': '',
      'en': '',
    },
    'brvv57ya': {
      'tr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
