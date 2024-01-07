import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/property_tile.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

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
          Expanded(
            child: ListView.separated(itemBuilder: (context,index)=>
                      PropertyTile(),
             separatorBuilder:  (context,index)=>SizedBox(height: 8,), itemCount:10),
          )
        ],
      ),
    );
  }
}
