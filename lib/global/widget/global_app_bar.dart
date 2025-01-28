import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors_resources.dart';
import 'global_text.dart';


class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({
    super.key,
    required this.title,
    this.isBackIc = true,
    this.centerTitle,
    this.backColor,
    this.notiOnTap,
    this.actions
  });
  final String title;
  final Color? backColor;
  final bool? isBackIc;
  final bool? centerTitle;
  final Function()? notiOnTap;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backColor ?? ColorRes.primaryColor,
      automaticallyImplyLeading: false,
      leading: isBackIc == true ? IconButton(
        splashRadius: 0.1,
        icon: const Icon(Icons.arrow_back, color: ColorRes.white, size: 22),
        onPressed: (){
          Get.back();
        },
      ) : const SizedBox.shrink(),
      centerTitle: centerTitle,
      title: GlobalText(
        str: title,
        color: ColorRes.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
        fontFamily: 'Rubik',
      ),
      actions: actions,
    );
  }
}