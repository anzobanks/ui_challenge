import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:heyflutter_challenge_1/themes/app_colors.dart';

import '../widgets/custom_text.dart';
import 'main_page.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});
  Color main2 = Color(0xFFf2a612);
  Color main1 = Color(0xFF2eb1b7);
  Color main3 = Color(0xFF949495);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 35,
            ),
         
            Text.rich(
              TextSpan(children: [
                TextSpan(text: 'Home', style: TextStyle(color: main1)),
                TextSpan(text: 'bhase', style: TextStyle(color: main2))
              ]),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(top:25,left:25,right: 25),
        decoration: BoxDecoration(
            color: AppColors.bg,
         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(text: 'Looking ', style: TextStyle(color: main1)),
                TextSpan(text: 'for an ', style: TextStyle(color: main2)),
                TextSpan(
                    text: 'elegant house this is the place', style: TextStyle())
              ]),
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
            )
                .animate()
                .fadeIn(
                    //  begin: 0.2,
                    delay: Duration(milliseconds: 1000),
                    duration: 1000.ms)
                .slideX(delay: Duration(milliseconds: 1000), duration: 1000.ms),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Welcome friends, are you looking for us?',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: main3, fontSize: 22),
            )   .animate()
                          .fadeIn(
                              //  begin: 0.2,
                              delay: Duration(milliseconds: 2000),
                    duration: 1000.ms)
                          .slideX(delay: Duration(milliseconds: 2000), duration: 1000.ms,begin: 3),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Congratulations you have found us',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: main3, fontSize: 22),
            )   .animate()
                .fadeIn(
                    //  begin: 0.2,
                    delay: Duration(milliseconds: 3000),
                    duration: 1000.ms)
                .slideX(delay: Duration(milliseconds: 3000), duration: 1000.ms),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.off(()=>MainPage(),transition: Transition.rightToLeftWithFade,duration:2000.ms);
              },
              child: Container(
                width: 100,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: main1, borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Next',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      )
                    ]),
              ),
            ) .animate()
                .fadeIn(
                    //  begin: 0.2,
                    delay: Duration(milliseconds:6000),
                    duration: 2000.ms),
           
            Expanded(
              child: Container(decoration: BoxDecoration(
                   image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: 
                        ResizeImage(
                          AssetImage('assets/heyflutterchallenge1.png'),
                          width:900,height:900)
                          )
              ),)
                  .animate()
                  .fadeIn(duration: 2000.ms, delay: 4000.ms)
                  .slideY(delay: 4000.ms, begin: 2, duration: 2000.ms),
            )
          ],
        ),
      ),
    );
  }
}
