import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/widgets/theme/theme_cubit.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

import '../../../../resources/routes_manager.dart';
import '../view_model/manger/search_cubit/search_cubit.dart';

class SearchView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: AppPadding.p12),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: AppStrings.searchYoutube,
                            hintStyle:
                                getRegularStyle(color: ColorManager.midGrey),
                            fillColor: isDarkTheme
                                ? ColorManager.darkBackground
                                : ColorManager.lightGrey,
                            filled: true,
                            focusColor: ColorManager.darkBackground,
                            border: buildOutlineInputBorder(),
                            focusedBorder: buildOutlineInputBorder(),
                            enabledBorder: buildOutlineInputBorder(),
                            disabledBorder: buildOutlineInputBorder(),
                          ),
                          cursorColor: ColorManager.cursorColor,
                          onFieldSubmitted: (value) {
                            context.read<SearchCubit>().search(value);
                          },
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: isDarkTheme
                              ? ColorManager.darkBackground
                              : ColorManager.lightGrey,
                        ),
                        icon: const Icon(Icons.mic_rounded),
                        onPressed: () {
                          // _controller.clear();
                          // context.read<SearchCubit>().clearSearch();
                          Navigator.pushNamed(context, Routes.searchVoiceRoute,arguments: theme.brightness == Brightness.dark);

                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      children: [
                        BlocBuilder<SearchCubit, List<String>>(
                          builder: (context, searchResults) {
                            if (searchResults.isEmpty) {
                              return Wrap(
                                spacing: 8.0,
                                children: context
                                    .read<SearchCubit>()
                                    .previousSearches
                                    .map((search) => Chip(
                                          label: Text(search),
                                          onDeleted: () {
                                            context
                                                .read<SearchCubit>()
                                                .previousSearches
                                                .remove(search);
                                            _controller.clear();
                                            context
                                                .read<SearchCubit>()
                                                .clearSearch();
                                          },
                                          deleteIcon: const Icon(Icons.close),
                                        ))
                                    .toList(),
                              );
                            } else {
                              return Expanded(
                                child: ListView.builder(
                                  itemCount: searchResults.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(searchResults[index]),
                                    );
                                  },
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSize.s16),
      borderSide: BorderSide.none,
    );
  }
}

// class SearchView extends StatelessWidget {
//   const SearchView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ThemeCubit(),
//       child: BlocBuilder<ThemeCubit, ThemeData>(
//         builder: (context, theme) {
//           final isDarkTheme = theme.brightness == Brightness.dark;
//
//           return Scaffold(
//             body: SafeArea(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 21.0, right: 17,top: 6),
//                     child: SizedBox(
//                       height: 30,
//                       child: Row(
//
//                         children: [
//                           const Icon(Icons.arrow_back),
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 25,right: 12),
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(13),
//                                   ),
//                                   labelText: 'Search Youtube',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 30,
//                             height: 30,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: ColorManager.darkBackground,
//                             ),
//                             child: const Icon(Icons.mic_rounded),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
