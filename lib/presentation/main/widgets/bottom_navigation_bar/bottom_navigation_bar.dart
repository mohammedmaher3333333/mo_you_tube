import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../resources/values_manager.dart';
import 'bottom_navigation_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Color iconColor = Theme.of(context).iconTheme.color!;
    return BlocBuilder<BottomNavigationCubit, int>(
      builder: (context, currentIndex) {
        return BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            context.read<BottomNavigationCubit>().changeIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/shorts.svg',color: iconColor,),// todo add image to assets file
              label: 'Shorts',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_rounded,size: AppSize.s50,),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Subscriptions',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: 'Library',
            ),
          ],
        );
      },
    );
  }
}
