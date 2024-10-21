import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/font_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../resources/values_manager.dart';

class BuildSettingsItems extends StatelessWidget {
  const BuildSettingsItems({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p20,
        bottom: AppPadding.p20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: getSemiBoldStyleTheme(
            fontSize: FontSize.s17,
          ),
        ),
      ),
    );
  }
}
