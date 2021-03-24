/// ====================================================
/// @Annotation BootContext
///
/// !!! Inner use only! Do not use this annotation !!!
///
/// 框架内部(dartboot_core)使用！
/// 用于扫描 [ApplicationContext] 类生成 [application_context.g.dart] 文件
///
/// @author luodongseu
/// ====================================================
///
///
class DartBootApplication {
  /// No any args.
  const DartBootApplication();
}

/// The const global variable for quickly use.
const dba = DartBootApplication();