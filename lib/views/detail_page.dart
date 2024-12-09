import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DetailPage extends StatelessWidget {
  final String link;

  DetailPage({required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: InAppWebView(
        // 웹뷰 초기 설정 추가
        initialSettings: InAppWebViewSettings(
          mediaPlaybackRequiresUserGesture: true, // 미디어 재생 시 사용자 제스처 필요 여부
          javaScriptEnabled: true,                // 자바스크립트 활성화
          userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 '
              '(KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', // 사용자 에이전트 설정
        ),
        // URLRequest 설정
        initialUrlRequest: URLRequest(
          url: WebUri(Uri.parse(link).toString()), // WebUri를 사용하여 링크를 처리
        ),
      ),
    );
  }
}
