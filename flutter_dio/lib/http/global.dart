/// 全局配置
class Global {
  /// token
  static String accessToken = "";
  static bool retryEnable = true;

  /// 是否 release
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");
}
