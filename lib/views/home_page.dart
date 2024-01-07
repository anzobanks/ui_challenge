import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/property_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.pageViewController});
  final List<String> items = [
    'Other',
    'Home',
  ];
  final PageController pageViewController;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final item = items[0].obs;

    return Container(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
      color: AppColors.bg,
      child: Column(
        children: [
          TextField(
            controller: searchController,
            onTap: () => pageViewController.nextPage(
                duration: 1000.milliseconds, curve: Curves.decelerate),
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
          Container(
            height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/home1.jpg'), fit: BoxFit.cover),
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Let\'s buy a house',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    CustomText(
                      text: 'here',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Discount 10%',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                    ),
                    CustomText(
                      text: '04 January 2024',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 190.0,
            child: FlutterCarousel(
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1000.milliseconds,
                  autoPlayCurve: Curves.decelerate,
                  autoPlayInterval: 10.seconds,
                  height: 190.0,
                  showIndicator: false,
                  enlargeCenterPage: true
                  // slideIndicator: CircularSlideIndicator(),
                  ),
              items: [1, 2, 3, 4, 5].map((i) {
                return PropertyTile();
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Popular today",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Obx(() {
                  return DropdownButton(
                      dropdownColor: AppColors.bg,
                      focusColor: AppColors.bg,
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.main1,
                      ),
                      elevation: 0,
                      value: item.value,
                      items: items
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: CustomText(
                                  text: e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.main1,
                                      ),
                                ),
                              ))
                          .toList(),
                      onChanged: (value) {
                        item.value = value!;
                      });
                })
              ],
            ),
          ),
          Flexible(
            child: ListView.separated(
                itemBuilder: (context, index) => PropertyTile(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
