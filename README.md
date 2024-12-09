위치 검색 앱
=============
Naver Open API를 활용하여 사용자가 위치를 검색하고, 각 위치에 대한 자세한 정보를 볼 수 있는 Flutter 애플리케이션입니다.     

주요 기능
-----------
1. 위치 검색: 검색 창에 키워드를 입력하여 네이버 지도 검색 api를 통해 위치를 검색합니다.
2. 검색 결과가 제목, 카테고리, 주소로 함께 표시됨.
3. 검색 결과를 클릭하면 해당 위치의 url로 이동합니다.

실행 예시
-------------
홈화면   
>![image](https://github.com/user-attachments/assets/1ba468d6-7ee8-4b8e-bcf0-18d6b78f0c2c)

디테일 페이지
>![image](https://github.com/user-attachments/assets/9189d245-9258-4289-be51-d199b9d758ff)

사용된 패키지
----------------
*flutter_riverpod: 상태 관리.    
*dio: HTTP 요청 처리.    
*flutter_inappwebview: 인앱 웹뷰 제공.   

사용된 버전
--------------

<pre>
<code>
environment:
  sdk: ^3.5.4
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.6.1
  dio: ^5.0.0
  flutter_inappwebview: ^6.1.5
  http: ^1.2.2
  cupertino_icons: ^1.0.8
</code>
</pre>
