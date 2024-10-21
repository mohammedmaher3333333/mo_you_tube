import 'package:flutter/material.dart';

import '../../../../../resources/styles_manager.dart';
import '../../../../../resources/values_manager.dart';

class RowItemProfile extends StatelessWidget {
  const RowItemProfile({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
    required this.width,
    required this.height,
  });

  final String imagePath;
  final String text;
  final double width;
  final double height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p28,
        vertical: AppPadding.p7_5,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image(
              image: AssetImage(
                imagePath,
              ),
              width: width,
              height: height,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: AppSize.s17,
            ),
            Text(
              text,
              style: getRegularStyleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
