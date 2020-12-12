abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_EN': Locales.en_EN,
    'zh_CN': Locales.zh_CN,
    'fr_CA': Locales.zh_CN,
  };
}

abstract class LocaleKeys {
  static const buttons_login = 'buttons_login';
  static const buttons_sign_in = 'buttons_sign_in';
  static const buttons_logout = 'buttons_logout';
  static const buttons_change_zh = 'change_zh-CN';
  static const buttons_change_en = 'change_en_EN';
}

abstract class Locales {
  static const en_EN = {
    LocaleKeys.buttons_login: 'Login',
    LocaleKeys.buttons_sign_in: 'Sign-in',
    LocaleKeys.buttons_logout: 'Logout',
    LocaleKeys.buttons_change_zh: 'change Chinese',
    LocaleKeys.buttons_change_en: 'change English',
  };
  static const zh_CN = {
    LocaleKeys.buttons_login: '登录',
    LocaleKeys.buttons_sign_in: '注册',
    LocaleKeys.buttons_logout: '退出',
    LocaleKeys.buttons_change_zh: '切换中文',
    LocaleKeys.buttons_change_en: '切换英文',
  };

  static const fr_CA = {};
}
