import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_downloader/views/home_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/custom_bottom_navigation_bar.dart';

class TikTokScreen extends StatefulWidget {
  const TikTokScreen({super.key});

  @override
  State<TikTokScreen> createState() => _TikTokScreenState();
}

class _TikTokScreenState extends State<TikTokScreen> {
  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
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
        Uri.parse('http://archive.saulibrary.edu.bd/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'e-Theses Search from Archive',
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
