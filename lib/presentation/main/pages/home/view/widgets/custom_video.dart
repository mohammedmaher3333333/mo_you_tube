import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/assets_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../resources/color_manager.dart';
import '../../../../../resources/strings_manager.dart';
import '../../../../../resources/values_manager.dart';

class CustomVideo extends StatelessWidget {
  const CustomVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(ImageAssets.mainImage),
            Positioned(
              bottom: AppSize.s10,
              right: AppSize.s8,
              child: Container(
                padding: const EdgeInsets.only(
                    left: AppPadding.p3, right: AppPadding.p3),
                width: AppSize.s55,
                decoration: BoxDecoration(
                  color: ColorManager.redLive,
                  borderRadius: BorderRadius.circular(AppSize.s3),
                ),
                child: Row(
                  children: [
                    Image.asset(ImageAssets.youtubeLive),
                    const SizedBox(
                      width: AppSize.s3,
                    ),
                    Text(
                      AppStrings.live,
                      style: getMediumStyle(
                          color: Colors.white, fontSize: AppSize.s13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s10,
        ),
        // video details
        SizedBox(
          height: AppSize.s75,
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p6,
              right: AppPadding.p11,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.redBull),
                const SizedBox(
                  width: AppSize.s7,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.heaviestWave,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: getRegularStyleTheme()),
                      const Text(
                        '${AppStrings.redBull} . ${AppStrings.views}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
