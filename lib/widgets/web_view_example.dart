import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewComponent extends StatefulWidget {
  final String url;
  const WebViewComponent({super.key, required this.url});

  @override
  WebViewComponentState createState() => WebViewComponentState();
}

class WebViewComponentState extends State<WebViewComponent> {
  late final WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller = webViewController;
      },
    );
  }
}
