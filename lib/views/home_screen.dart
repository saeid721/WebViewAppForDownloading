import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_drawer_screen.dart';
import '../global/constants/colors_resources.dart';
import '../global/constants/images.dart';
import '../global/model.dart';
import '../global/widget/global_app_bar.dart';
import '../global/widget/global_container.dart';
import '../global/widget/home_menu_widget.dart';
import 'downloader_screen/linkedin_screen.dart';
import 'downloader_screen/pinterest_screen.dart';
import 'downloader_screen/youtube_thumbnail_screen.dart';
import 'downloader_screen/youtube_screen.dart';
import 'downloader_screen/threads_screen.dart';
import 'downloader_screen/twitter_screen.dart';
import 'downloader_screen/vimeo_screen.dart';
import 'downloader_screen/tiktok_screen.dart';
import 'downloader_screen/instagram_screen.dart';
import 'downloader_screen/tumblr_screen.dart';
import 'downloader_screen/facebook_screen.dart';
import 'downloader_screen/reddit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.facebookInc, text: 'Facebook'),
    GlobalMenuModel(img: Images.tikTokInc, text: 'TikTok'),
    GlobalMenuModel(img: Images.instagramInc, text: 'Instagram'),
    GlobalMenuModel(img: Images.linkedInInc, text: 'Linkedin'),
    GlobalMenuModel(img: Images.threadsInc, text: 'Threads'),
    GlobalMenuModel(img: Images.twitterInc, text: 'Twitter'),
    GlobalMenuModel(img: Images.youTubeInc, text: 'YouTube'),
    GlobalMenuModel(
        img: Images.youTubeInc, text: 'YouTube', subText: 'Thumbnail'),
    GlobalMenuModel(img: Images.vimeoInc, text: 'Vimeo'),
    GlobalMenuModel(img: Images.pinterestInc, text: 'Pinterest'),
    GlobalMenuModel(img: Images.redditInc, text: 'Reddit'),
    GlobalMenuModel(img: Images.tumblrInc, text: 'Tumblr'),
    // GlobalMenuModel(img: Images.telegramInc, text: 'Telegram'),
    // GlobalMenuModel(img: Images.whatsAppInc, text: 'WhatsApp'),
    // GlobalMenuModel(img: Images.weChatInc, text: 'WeChat'),
    // GlobalMenuModel(img: Images.snapchatInc, text: 'Snapchat'),
    // GlobalMenuModel(img: Images.quoraInc, text: 'Quora'),
    // GlobalMenuModel(img: Images.qqInc, text: 'QQ'),
    // GlobalMenuModel(img: Images.contactInc, text: 'Contact'),
  ];

  int currentIndex = 0;
  final CarouselController buttonCarouselController = CarouselController();

  final List<String> sliderImage = [
    'assets/images/1.png',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GlobalAppBar(
          title: 'All In One Downloader',
          notiOnTap: () {},
          leading: GestureDetector(
            onTap: () {
              if (drawerKey.currentState!.isDrawerOpen) {
                drawerKey.currentState!.closeDrawer();
              } else {
                drawerKey.currentState!.openDrawer();
              }
            },
            child: const Icon(Icons.menu, color: ColorRes.white),
          ),
        ),
      ),
      key: drawerKey,
      drawer: const CustomDrawerScreen(),
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
                        borderRadius:
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
              const SizedBox(height: 8),

              GridView.builder(
                  itemCount: menuItem.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 77),
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
                            Get.to(() => const YouTubeScreen());
                            break;
                          case 7:
                            Get.to(() => const YouTubeThumbnailScreen());
                            break;
                          case 8:
                            Get.to(() => const VimeoScreen());
                            break;
                          case 9:
                            Get.to(() => const PinterestScreen());
                            break;
                          case 10:
                            Get.to(() => const RedditScreen());
                            break;
                          case 11:
                            Get.to(() => const TumblrScreen());
                            break;
                          // case 12:
                          //   Get.to(() => const TelegramScreen());
                          //   break;
                          // case 13:
                          //   Get.to(() => const WhatsAppScreen());
                          //   break;
                          // case 14:
                          //   Get.to(() => const WeChatScreen());
                          //   break;
                          // case 15:
                          //   Get.to(() => const SnapchatScreen());
                          //   break;
                          // case 16:
                          //   Get.to(() => const QuoraScreen());
                          //   break;
                          // case 17:
                          //   Get.to(() => const QqScreen());
                          //   break;
                          // case 18:
                          //   Get.to(() => const ContactScreen());
                          //   break;
                        }
                      },
                      child: HomeMenuWidget(
                        height: 30,
                        width: 30,
                        maxLines: 1,
                        imagePath: menuItem[index].img,
                        text: menuItem[index].text,
                        subText: menuItem[index].subText ?? "",
                      ),
                    );
                  }),

              //const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
