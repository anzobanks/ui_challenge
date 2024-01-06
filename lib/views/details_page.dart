import 'package:flutter/material.dart';
import 'package:heyflutter_challenge_1/themes/app_colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.white
              ),
              child:Column()
            )
          ],
        ),
      ),
    );
  }
}
