import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../global/constants/colors_resources.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/custom_bottom_navigation_bar.dart';
import '../global/widget/global_text.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  Future<void> _sendSMS(String phone) async {
    final Uri smsUri = Uri(scheme: 'sms', path: phone);
    await launchUrl(smsUri);
  }

  Future<void> _sendEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(emailUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Contact',
        onSearchTap: () {
          // Handle search action
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              // Section Title
              GlobalText(
                str: "Contact",
                color: ColorRes.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Contact Info Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: ColorRes.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorRes.primaryColor, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Email Address
                    Row(
                      children: [
                        Icon(Icons.email, color: ColorRes.primaryColor),
                        const SizedBox(width: 10),
                        Expanded(
                          child: GlobalText(
                            str: "Email: info@gmail.com",
                            color: ColorRes.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Phone Number
                    Row(
                      children: [
                        Icon(Icons.phone, color: ColorRes.primaryColor),
                        const SizedBox(width: 10),
                        GlobalText(
                          str: "Phone: +880 1000 00 00 00",
                          color: ColorRes.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Quick Message Section
              GestureDetector(
                onTap: () => _sendEmail("info@gmail.com"),
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorRes.primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: ColorRes.primaryColor,
                  ),
                  child: GlobalText(
                    str: "Send a Message",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: GlobalText(
                  str: "WebView App for Downloading",
                  color: ColorRes.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),

              // About University Description
              GlobalText(
                str:
                    """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
                color: ColorRes.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onHomePressed: () {
          Get.back();
        },
      ),
    );
  }
}
