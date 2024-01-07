import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/estate_controller.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/property_tile.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});
  final estateController = Get.put(EstateController());

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
      color: AppColors.bg,
      child: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: InputDecoration(
                hintText: 'Search Here...',
                filled: true,
                hintStyle: TextStyle(color: AppColors.main3),
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.search, color: AppColors.main3),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(
            height: 30,
          ),
          if ((estateController.estateList
                  .any((element) => element.isFavorite == true)) ==
              true)
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => PropertyTile(
                      estate:
                          estateController.estateList.where((element) => element.isFavorite.value==true).toList().reversed.toList()[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                  itemCount:     estateController.estateList
                      .where((element) => element.isFavorite.value == true)
                      .toList()
                      .length),
            )
          else
            Flexible(
              child: CustomText(
                text: "Not yet favotite",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
