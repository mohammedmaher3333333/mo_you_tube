import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../../resources/values_manager.dart';

class BuildGeneralConstItem extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildGeneralConstItem({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p20,
        right: AppPadding.p34,
          top: AppPadding.p22

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getSemiBoldStyleTheme(),
          ),
          const SizedBox(height: AppSize.s6,),
          Text(
            subTitle,
            style: getRegularStyleTheme(),
          ),
        ],
      ),
    );
  }
}
