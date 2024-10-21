import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppMargin.m8),
      height: AppSize.s2,
      width: double.infinity,
      color: ColorManager.secondaryBlackLight,
    );
  }
}
