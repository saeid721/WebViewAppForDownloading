import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'global/constants/colors_resources.dart';
import 'global/constants/enum.dart';
import 'global/widget/global_image_loader.dart';
import 'global/widget/global_text.dart';
import 'views/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorRes.primaryColor, ColorRes.backgroundColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [

            // Center Content with Card
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: ColorRes.primaryColor.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    // App Logo
                    Hero(
                      tag: 'app_logo',
                      child: GlobalImageLoader(
                        imagePath: 'assets/images/logo.png',
                        width: 120,
                        height: 120,
                        imageFor: ImageFor.asset,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // App Name
                    const GlobalText(
                      str: 'All In One Downloader',
                      color: ColorRes.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                      fontFamily: 'Rubik',
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Description and Loader
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // App Description
                    const GlobalText(
                      str: 'This app is internet-based.',
                      color: ColorRes.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      fontFamily: 'Rubik',
                      fontStyle: FontStyle.italic,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
