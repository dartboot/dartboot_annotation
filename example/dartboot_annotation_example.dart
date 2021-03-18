import 'package:dartboot_annotation/annotation.dart';

void main(args) {
  /// Don't use any annotations directly.
  /// Please use annotations with dartboot_core library.
}

@Bean()
class TestBean {

  static var globalValue = '';

  TestBean() {
    globalValue = 'Test';
  }
}