import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlankPage(),
    );
  }
}

class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIVE NEWS'),
      ),
      body: WebView(
        initialUrl: 'https://ksfmr4.csb.app/',
        javascriptMode: JavaScriptMode.unrestricted,
      ),
    );
  }
}

WebView({required String initialUrl, required JavaScriptMode javascriptMode}) {
}
