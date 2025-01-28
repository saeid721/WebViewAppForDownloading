import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_downloader/views/snapchat_screen.dart';
import '../global/constants/colors_resources.dart';
import '../global/constants/images.dart';
import '../global/model.dart';
import '../global/widget/global_app_bar.dart';
import '../global/widget/global_container.dart';
import '../global/widget/home_menu_widget.dart';
import 'linkedin_screen.dart';
import 'pinterest_screen.dart';
import 'threads_screen.dart';
import 'twitter_screen.dart';
import 'we_chat_screen.dart';
import 'tiktok_screen.dart';
import 'contact_screen.dart';
import 'instagram_screen.dart';
import 'whatsapp_screen.dart';
import 'tumblr_screen.dart';
import 'agora_screen.dart';
import 'ardi_screen.dart';
import 'facebook_screen.dart';
import 'toutube_thumbnail_screen.dart';
import 'reddit_screen.dart';
import 'telegram_screen.dart';
import 'youtube_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.facebookInc, text: 'Facebook'),
    GlobalMenuModel(img: Images.tikTokInc, text: 'TikTok'),
    GlobalMenuModel(img: Images.instagramInc, text: 'Instagram'),
    GlobalMenuModel(img: Images.linkedInInc, text: 'LinkedIn'),
    GlobalMenuModel(img: Images.threadsInc, text: 'Threads'),
    GlobalMenuModel(img: Images.twitterInc, text: 'Twitter'),
    GlobalMenuModel(img: Images.pinterestInc, text: 'Pinterest'),
    GlobalMenuModel(img: Images.youTubeInc, text: 'YouTube'),
    GlobalMenuModel(img: Images.youTubeInc, text: 'YouTube', subText: 'Thumbnail'),
    GlobalMenuModel(img: Images.redditInc, text: 'Reddit'),
    GlobalMenuModel(img: Images.tumblrInc, text: 'Tumblr'),
    GlobalMenuModel(img: Images.telegramInc, text: 'Telegram'),
    GlobalMenuModel(img: Images.whatsAppInc, text: 'WhatsApp'),
    GlobalMenuModel(img: Images.weChatInc, text: 'WeChat'),
    GlobalMenuModel(img: Images.snapchatInc, text: 'Snapchat'),
    GlobalMenuModel(img: Images.quoraInc, text: 'Quora'),
    GlobalMenuModel(img: Images.qqInc, text: 'QQ'),
    GlobalMenuModel(img: Images.contactInc, text: 'Contact'),
  ];

  int currentIndex = 0;
  final CarouselController buttonCarouselController = CarouselController();

  final List<String> sliderImage = [
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: "WebView App for Downloading",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 5,
            children: [
              // Carousel Slider
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: CarouselSlider(
                    items: sliderImage.map((item) {
                      return GlobalContainer(
                        borderCornerRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliderImage.asMap().entries.map((entry) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 2,
                    width: currentIndex == entry.key ? 15 : 7,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? ColorRes.primaryColor
                          : ColorRes.borderColor,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),

              GridView.builder(
                  itemCount: menuItem.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      mainAxisExtent: 125),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.to(() => const FacebookScreen());
                              break;
                            case 1:
                              Get.to(() => const TikTokScreen());
                              break;
                            case 2:
                              Get.to(() => const InstagramScreen());
                              break;
                            case 3:
                              Get.to(() => const LinkedInScreen());
                              break;
                            case 4:
                              Get.to(() => const ThreadsScreen());
                              break;
                            case 5:
                              Get.to(() => const TwitterScreen());
                              break;
                            case 6:
                              Get.to(() => const PinterestScreen());
                              break;
                            case 7:
                              Get.to(() => const YouTubeScreen());
                              break;
                            case 8:
                              Get.to(
                                  () => const YouTubeThumbnailScreen());
                              break;
                            case 9:
                              Get.to(() => const RedditScreen());
                              break;
                            case 10:
                              Get.to(() => const TumblrScreen());
                              break;
                            case 11:
                              Get.to(() => const TelegramScreen());
                              break;
                            case 12:
                              Get.to(() => const WhatsAppScreen());
                              break;
                            case 13:
                              Get.to(() => const WeChatScreen());
                              break;
                            case 14:
                              Get.to(() => const SnapchatScreen());
                              break;
                            case 15:
                              Get.to(() => const QuoraScreen());
                              break;
                            case 16:
                              Get.to(() => const QqScreen());
                              break;
                            case 17:
                              Get.to(() => const ContactUsScreen());
                              break;
                          }
                        },
                        child: HomeMenuWidget(
                          height: 40,
                          width: 40,
                          maxLines: 1,
                          imagePath: menuItem[index].img,
                          text: menuItem[index].text,
                          subText: menuItem[index].subText ?? "",
                        ),
                    );
                  }),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
