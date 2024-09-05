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
      'en': 'User name',
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
    'sb7n8mo2': {
      'tr':
          '                               MSCColor Mixing System\n                                mobile v1.0 çıktı',
      'en': '',
    },
    'utxcf0ac': {
      'tr':
          '                                Mixing sistem mobil uygulama ISO ve\n                                 Android\'de kullanıma sunuldu.',
      'en': '',
    },
    'd13xe2yp': {
      'tr': '\n\n\n\n3 day ago',
      'en': '',
    },
    'blreehw5': {
      'tr': 'MSC News',
      'en': '',
    },
    '76hkpb0i': {
      'tr': 'Anasayfa',
      'en': 'Home',
    },
    'eygjzh5z': {
      'tr': '',
      'en': '',
    },
    'fxkx02oo': {
      'tr': 'Standart Renkler',
      'en': 'Standard Colors',
    },
    'juaui4hv': {
      'tr': '',
      'en': '',
    },
    'm0n02liw': {
      'tr': 'Özel Renkler',
      'en': 'Custom Colors',
    },
    'xddftb4u': {
      'tr': '',
      'en': '',
    },
    '7fn174i2': {
      'tr': 'Ayarlar',
      'en': 'Settings',
    },
    'q780wei2': {
      'tr': '',
      'en': '',
    },
    'dtswkd2g': {
      'tr': '[KullanıcıAdı]',
      'en': '[Username]',
    },
    'd8enq7z2': {
      'tr': 'Home',
      'en': '',
    },
  },
  // CustomColor
  {
    'uan4uyki': {
      'tr': 'Özel Renkler',
      'en': 'Custom Colors',
    },
    '87wcrt4d': {
      'tr': '',
      'en': '',
    },
    '4z8hznt1': {
      'tr': 'Ara',
      'en': 'Search',
    },
    '3aej2m03': {
      'tr': 'Home',
      'en': 'Anasayfa',
    },
  },
  // StandardColor
  {
    'o8d07xyj': {
      'tr': 'Standart Renkler',
      'en': 'Standard Colors',
    },
    't4pva9wm': {
      'tr': 'Ara',
      'en': 'Search all colors',
    },
    'yxlq2urv': {
      'tr': 'Home',
      'en': '',
    },
  },
  // SettingsPage
  {
    '3zfe1qs7': {
      'tr': '[Kullanıcı Adı]',
      'en': '[Username]',
    },
    '5wpba3c2': {
      'tr': '[Müşteri Kodu]',
      'en': '[Customer Code]',
    },
    'tdkmavic': {
      'tr': 'Profil düzenle',
      'en': 'Edit Profile',
    },
    '5v5f3inr': {
      'tr': 'Şifremi değiştir',
      'en': 'Change Password',
    },
    'jfr5rx16': {
      'tr': 'Bildirim ayarları',
      'en': 'Notification Settings',
    },
    'n21flqau': {
      'tr': 'Hizmet Şartları',
      'en': 'Terms of Services',
    },
    '6aasd9y5': {
      'tr': 'Çıkış yap',
      'en': 'Log Out',
    },
    'bwa6to3v': {
      'tr': 'Ayarlar',
      'en': 'Settings',
    },
  },
  // ForgotPasswordPage
  {
    'tqm4a4cc': {
      'tr': 'Geri',
      'en': 'Back',
    },
    'kib64831': {
      'tr': 'Şifremi unuttum',
      'en': 'I forgot my password',
    },
    '2u3k6tbf': {
      'tr':
          'Şifrenizi sıfırlamanız için bir bağlantı içeren bir e-posta göndereceğiz. Lütfen aşağıya hesabınızla ilişkili e-postayı girin.',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
    },
    'dp9s7twx': {
      'tr': 'E-posta adresiniz',
      'en': 'Your email address...',
    },
    'y9vos5zw': {
      'tr': 'E-posta adresinizi girin',
      'en': 'Enter your email...',
    },
    '4zg7opxn': {
      'tr': 'Şifremi sıfırla',
      'en': 'Send Link',
    },
    'ckhwxdk4': {
      'tr': 'Anasayfa',
      'en': 'Home',
    },
  },
  // FormulaPage
  {
    '3v9p6yok': {
      'tr': 'DPL_PRODUCT_NAME',
      'en': 'DPL_PRODUCT_NAME',
    },
    '01aistke': {
      'tr': 'PRODUCT_NAME',
      'en': 'PRODUCT_NAME',
    },
    'vjyd1p8g': {
      'tr': 'Datasheets',
      'en': 'Datasheets',
    },
    'fyqh5ww0': {
      'tr': 'Miktar',
      'en': 'Amount',
    },
    'x7s1wpku': {
      'tr': 'Miktar giriniz',
      'en': 'Enter Amount',
    },
    '5a3k6cdo': {
      'tr': '',
      'en': '',
    },
    's0t96w52': {
      'tr': 'KG',
      'en': 'KG',
    },
    '1qorb323': {
      'tr': 'Hesapla',
      'en': 'Calculate',
    },
    'bg9nwycu': {
      'tr': 'Edit Column 1',
      'en': '',
    },
    'zz9musda': {
      'tr': 'Edit Column 2',
      'en': '',
    },
    '5k68lppz': {
      'tr': 'Edit Column 3',
      'en': '',
    },
    '7ljywiey': {
      'tr': 'Edit Column 4',
      'en': '',
    },
    'adcasttq': {
      'tr': 'Yazdır',
      'en': 'Print',
    },
    'esxk6fms': {
      'tr': 'Temizle',
      'en': 'Clean',
    },
    'h75hn13i': {
      'tr': 'Etiket',
      'en': 'Label',
    },
    'sn1g5lbf': {
      'tr': 'Toplam Ağırlık',
      'en': 'Total Weight',
    },
    'jp4zckf9': {
      'tr': ' 0.00 KG',
      'en': ' 0.00 KG',
    },
    'xwyb0h53': {
      'tr': 'Toplam Tutar',
      'en': 'Total Price',
    },
    'eqdwuxwk': {
      'tr': '\$ 0.00',
      'en': '\$ 0.00',
    },
    'eb9ygqtr': {
      'tr': 'Formül',
      'en': 'Formula',
    },
  },
  // productColorRow
  {
    'tjhtzy4g': {
      'tr': 'PRODUCT CODE (RAL CODE)',
      'en': '',
    },
    'ji9dqywf': {
      'tr': 'PRODUCT NAME (COLOR NAME)',
      'en': '',
    },
  },
  // productCustomColorRow
  {
    'lmepxjjy': {
      'tr': 'PRODUCT CODE (RAL CODE)',
      'en': '',
    },
    '81y78k9a': {
      'tr': 'PRODUCT NAME (COLOR NAME)',
      'en': '',
    },
  },
  // ListTileProductColorRow
  {
    'mjwtu5vg': {
      'tr': 'DPL_PRODUCT_NAME',
      'en': 'PRODUCT_CODE(RAL)',
    },
    'lkgsgmjr': {
      'tr': 'PRODUCT_NAME',
      'en': 'PRODUCT_NAME',
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
