import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/custom_bottom_navigation_bar.dart';

class QqScreen extends StatefulWidget {
  const QqScreen({super.key});

  @override
  State<QqScreen> createState() => _QqScreenState();
}

class _QqScreenState extends State<QqScreen> {
  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    // Configure WebViewController with JavaScript enabled
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JavaScript
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse('https://login.research4life.org/tacgw/AppPortal/'),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Online Journals/Books',
        onSearchTap: () {
          // Handle search action
        },
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller,
          ),
          loadingPercentage < 100
              ? LinearProgressIndicator(
            color: Colors.red,
            value: loadingPercentage / 100.0,
          )
              : Container(),
        ],
      ),

      bottomNavigationBar: CustomBottomNavigationBar(
        controller: controller,
        onHomePressed: () {
          Get.back();
        },
      ),
    );
  }
}
