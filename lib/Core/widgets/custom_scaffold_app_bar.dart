import 'package:flutter/material.dart';
import '../constants/app_text_styles.dart';

class CustomScaffoldAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomScaffoldAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
  });

  final String title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.text19W700,
      ),
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Navigator.maybePop(context),
            )
          : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
