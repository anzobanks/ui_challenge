import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/section.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  RxInt changeMode = 1.obs;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.main1,
                    child: Icon(Icons.edit, color: AppColors.white),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'BANKOLE Kanzou-llohi',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
              SizedBox(
                height: 5,
              ),
              CustomText(
                  text: 'anzo_great',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                      ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SectionColumn(
                  bottomText: 'Mortgage Rate',
                  topText: '29',
                ),
                SectionColumn(
                  bottomText: 'Price Trend',
                  topText: '219',
                ),
              ],
            ),
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SocialMediaField(socialMedia: 'LinkedIn', link: ''),
             
          SizedBox(
            height: 10,
          ),
          SocialMediaField(socialMedia: 'GitHub', link: ''),
           SizedBox(
                height: 10,
              ),
              SocialMediaField(socialMedia: 'Facebbok', link: ''),
          SizedBox(
            height: 50,
          ),
          CustomText(
            text: '© 2024 DevJun #heyflutteruichallenge1',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: AppColors.main1),
          ),
        ],
      ),
    ]));
  }
}

class SocialMediaField extends StatelessWidget {
   SocialMediaField({required this.socialMedia, required  this.link});
  String socialMedia, link;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: socialMedia,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, color: AppColors.black),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: TextEditingController(text: link),
          decoration: InputDecoration(
              filled: true,
              enabled: false,
              hintStyle: TextStyle(color: AppColors.main3),
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.link, color: AppColors.main3),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30))),
        ),
      ],
    );
  }
}
