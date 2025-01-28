import 'package:flutter/material.dart';
import 'global/constants/colors_resources.dart';
import 'global/constants/enum.dart';
import 'global/widget/global_image_loader.dart';
import 'global/widget/global_text.dart';
import 'views/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
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
            // Background Shapes
            Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
            Positioned(
              bottom: -60,
              right: -60,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),

            // Center Content with Card
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // App Logo
                    Hero(
                      tag: 'app_logo',
                      child: GlobalImageLoader(
                        imagePath: 'assets/images/app_logo.png',
                        width: 120,
                        height: 120,
                        imageFor: ImageFor.asset,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // App Name
                    const GlobalText(
                      str: 'WebView App for Downloading',
                      color: Colors.white,
                      fontSize: 16,
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

                    const SizedBox(height: 20),

                    // Custom Loading Indicator
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 3,
                      ),
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
