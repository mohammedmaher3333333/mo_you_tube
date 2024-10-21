import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/custom_video.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

class VideoListView extends StatelessWidget {
  const VideoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) =>  const Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p7_5),
          child: CustomVideo(),
        ),
      ),
    );
  }
}
