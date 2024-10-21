import 'package:flutter/material.dart';
import '../../../../../../resources/color_manager.dart';

class CustomToggleSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomToggleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 50, // عرض الحاوية الخارجية
        height: 40, // ارتفاع الحاوية الخارجية
        decoration: BoxDecoration(
          color: Colors.transparent, // لون الحاوية الخارجية
          borderRadius: BorderRadius.circular(30), // زوايا دائرية
        ),
        child: Stack(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          children: [
            // المسار
            Container(
              width: 50, // عرض المسار
              height: 18, // ارتفاع المسار
              decoration: BoxDecoration(
                color: value ? ColorManager.midBlue : ColorManager.silver,
                // لون المسار
                borderRadius: BorderRadius.circular(15), // زوايا دائرية
              ),
            ),
            // المقبض
            Positioned(
              top: 5, // موضع المقبض لأعلى المسار
              left: value ? 20 : 0, // تحديد موقع المقبض بناءً على الحالة
              child: Container(
                width: 30, // عرض المقبض
                height: 30, // ارتفاع المقبض
                decoration: BoxDecoration(
                  color: value
                      ? ColorManager.lightBlue
                      : ColorManager.background, // لون المقبض
                  borderRadius: BorderRadius.circular(15), // زوايا دائرية
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2), // موقع الظل
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
