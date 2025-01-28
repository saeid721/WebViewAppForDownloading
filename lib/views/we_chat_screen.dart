import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../global/constants/colors_resources.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/custom_bottom_navigation_bar.dart';
import '../global/widget/global_text.dart';

class WeChatScreen extends StatefulWidget {
  const WeChatScreen({super.key});

  @override
  State<WeChatScreen> createState() => _WeChatScreenState();
}

class _WeChatScreenState extends State<WeChatScreen> {

  // Updated function to open the correct Google Map location
  Future<void> _openGoogleMap(BuildContext context, String instituteName, String address) async {
    final query = Uri.encodeComponent('$instituteName, $address');
    final geoUri = Uri.parse("https://maps.app.goo.gl/UJJd5rWAGyswYZvA6");

    if (await canLaunchUrl(geoUri)) {
      await launchUrl(geoUri, mode: LaunchMode.externalApplication);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Unable to open Google Maps app.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'About the APP',
        onSearchTap: () {
          // Handle search action
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Section Title
              Center(
                child: GlobalText(
                  str: "About Sher-e-Bangla Agricultural University",
                  color: ColorRes.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),

              // About University Description
              GlobalText(
                str: """Sher-e-Bangla Agricultural University ( শেরেবাংলা কৃষি বিশ্ববিদ্যালয়) or SAU is the oldest agricultural institution in Bangladesh and South Asia, situated in Sher-e-Bangla Nagar, Dhaka. It was established on December 11, 1938 as Bengal Agricultural Institute (BAI) and later upgraded to university in 2001 renaming Sher-e-Bangla Agricultural University.

Since its establishment, this university is playing a role in agricultural research and development (R&D) of the region through creation of knowledge, agricultural technology generation and transfer, crop diversification and intensification for the benefit of farming communities. SAU offers undergraduate and post graduate degrees through course credit system and also Ph.D. courses.""",
                color: ColorRes.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // Detailed History Header
              GlobalText(
                str: "A Brief History",
                color: ColorRes.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),

              // Detailed History Content
              GlobalText(
                str: """SAU was established as Bengal Agricultural Institute (BAI) on December 11, 1938 by Sher-e-Bangla A. K. Fazlul Huq, the then chief minister of undivided Bengal. The Bengal Agricultural Institute was renamed East Pakistan Agricultural Institute in 1947. After the emergence of Bangladesh as an independent country in 1971, the name of the institute was spontaneously changed to Bangladesh Agricultural Institute (BAI). Since its inception in 1938, the BAI had been functioning as a Faculty of Agriculture under Dhaka University. After the establishment of Bangladesh Agricultural University (BAU) at Mymensingh in 1961 its academic function was transferred to BAU in 1964 until its upgrade to Sher-e-Bangla Agricultural University in 2001.

SAU became the 17th public university of the country in 2001. The Sher-e-Bangla Agricultural University Act 2001 was passed in the Parliament of Bangladesh on 9 July 2001. SAU functioned as a university from 2001 with a single faculty, namely Faculty of Agriculture following the issuance of a notification by the government as per requirement of the Sher-e-Bangla Agricultural University Act 2001. Agribusiness Management, the second faculty started in 2007; the third faculty Animal Science & Veterinary Medicine has been functioning from 2012 and Fisheries and Aquaculture faculty has started its functioning from January, 2017.""",
                color: ColorRes.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // Library Information Header
              GlobalText(
                str: "A brief on Library",
                color: ColorRes.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),

              // Library Information Content
              GlobalText(
                str: """Sher-e-Bangla Agricultural University Library is situated in a separate 6 storied building at the east wing of the university administrative building. Total area of the 6 floors is 38,880 Square Feet or 3,612 Square Metre. This library has a glorious history. It was established in 1938. At that time it was established as Bengal Agricultural Institute (BAI) on December 11, 1938. Most probably, it is the first special library of Bangladesh. The library is fully automated with RFID Technology. The library has a collection comprising the major subjects of agriculture and related subjects. The details are given below (as on 04 December, 2024)-

Hard copy books	:	45,448 books (including theses);
Hard copy of journals	:	138 titles;
Hard copy of theses	:	4510 titles;
e-Journals	:	12110 titles ( JSTOR, AGORA, HINARI and OARE ) and 32,000 journals by LiCoB;
e-Books	:	2182 (approx.);
Online Books	:	7346 tiles (Oxford Scholarship Online, MyiLibrary/Pearsons, Taylor & Francis, CRCNetBase) and Wiley Online Library & 3819 titles from Research4Life;
Institutional Repository	:	SAUL Archive & Digital Archive on Agricultural Theses and Journals;
TEEAL	:	2.5 Million Pages Agricultural Related Articles [LAN based The Essential Electroic Agricultural Library]
Remote e-Access	:	OpenAthens
PKP	:	Public Knowledge Project""",
                color: ColorRes.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // Google Maps Section
              GestureDetector(
                onTap: () => _openGoogleMap(
                  context,
                  "Central Library (SAU)",
                  "Sher-e-Bangla Nagar, Dhaka, Bangladesh",
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: ColorRes.primaryColor.withOpacity(0.1),
                    border: Border.all(color: ColorRes.primaryColor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.map_outlined,
                        color: ColorRes.primaryColor,
                      ),
                      const SizedBox(width: 8),
                      GlobalText(
                        str: "View University Location on Google Maps",
                        color: ColorRes.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
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
