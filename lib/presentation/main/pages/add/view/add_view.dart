import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/theme/theme_cubit.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      const Text('data'),
      IconButton(
        icon: const Icon(Icons.brightness_6),
        onPressed: () {
          context.read<ThemeCubit>().toggleTheme();
        },
      ),
    ],);
  }
}
