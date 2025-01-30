import 'package:flutter/material.dart';
import '../../global/widget/global_app_bar.dart';
import 'components/contact_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'Contact',
          notiOnTap: () {},
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       Get.to(() => NotificationScreen());
          //     },
          //     icon: const Icon(Icons.notifications_on_rounded, color: ColorRes.white,),
          //   ),
          // ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AboutWidget(
                title: 'All in One Downloader',
                subTitle: 'অ্যাপ এর মাধ্যমে যে কোন প্রতিষ্ঠান বা পণ্যের বিজ্ঞাপন দিন।',
                imagePath: 'assets/images/logo.png',
                text:
                """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
