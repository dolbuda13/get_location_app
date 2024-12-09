import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'views/home_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp())); //providerscope을 사용하여 riverpod이 viewmodel 관리 가능
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '위치 기반 검색 앱',
      //home: HomePage(),
    );
  }
}  
