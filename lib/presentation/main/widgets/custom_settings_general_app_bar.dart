import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/font_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../resources/values_manager.dart';

class CustomSettingsGeneralAppBar extends StatelessWidget {
  const CustomSettingsGeneralAppBar({
    super.key,
    required this.title,
    required this.iconData,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p9,
        left: AppPadding.p15,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              iconData,
            ),
          ),
          const SizedBox(width: AppSize.s34,),
          Text(
            title,
            style: getMediumStyleTheme(
              fontSize: FontSize.s16,
            ),
          )
        ],
      ),
    );
  }
}
