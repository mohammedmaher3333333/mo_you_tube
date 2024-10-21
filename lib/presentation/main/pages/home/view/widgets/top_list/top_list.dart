import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/top_list/selected_item_cubit.dart';

import '../../../../../../resources/color_manager.dart';
import '../../../../../../resources/strings_manager.dart';
import '../../../../../../resources/styles_manager.dart';
import '../../../../../../resources/values_manager.dart';

class TopList extends StatelessWidget {
  const TopList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p11,
        right: AppPadding.p11,
      ),
      child: SizedBox(
        height: 27,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p11,
                vertical: AppPadding.p5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s4),
                color: ColorManager.lightGrey,
              ),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset('assets/images/compass-icon.png'),
              ),
            ),
            const SizedBox(width: AppSize.s11),
            const CustomContainer(text: AppStrings.all),
            const SizedBox(width: AppSize.s6),
            const CustomContainer(text: AppStrings.live),
            const SizedBox(width: AppSize.s6),
            const CustomContainer(text: AppStrings.music),
            const SizedBox(width: AppSize.s6),
            const CustomContainer(text: AppStrings.review),
            const SizedBox(width: AppSize.s6),
            const CustomContainer(text: AppStrings.mixes),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedItemCubit, String>(
      builder: (context, selectedText) {
        final isColorDark = Theme.of(context).brightness == Brightness.dark;
        final isSelected = selectedText == text;

        return GestureDetector(
          onTap: () {
            context
                .read<SelectedItemCubit>()
                .selectItem(text); // تغيير العنصر المحدد
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p11,
              vertical: AppPadding.p5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s4),
              color: isSelected
                  ? (isColorDark ? ColorManager.white : ColorManager.darkGrey)
                  : (isColorDark
                      ? ColorManager.lightBlack
                      : ColorManager.lightGrey),
            ),
            child: Text(
              text,
              style: getMediumStyle(
                color: isSelected
                    ? (isColorDark ? ColorManager.black : ColorManager.white)
                    : (isColorDark ? ColorManager.white : ColorManager.black),
              ),
            ),
          ),
        );
      },
    );
  }
}
