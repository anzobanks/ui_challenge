import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'ACCOUNT',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.main3,
                ),
          ),
          SizedBox(
            height: 15,
          ),
          SettingTile(
            width: width,
            title: 'Update Profile',
            icon: Icons.person_outline,
            description: 'Update username, country, etc',
          ),
          SizedBox(
            height: 15,
          ),
          SettingTile(
            width: width,
            title: 'Change Email Address',
            icon: Icons.email_outlined,
            description: 'anzobanks@gmail.com',
          ),
          SizedBox(
            height: 15,
          ),
          SettingTile(
            width: width,
            title: 'Change Password',
            icon: Icons.lock_outline,
            description: 'last change 1 year ago',
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
            text: 'OTHER',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.main3,
                ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Notification',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
              ),
              FlutterSwitch(
                width: 60.0,
                height: 30.0,
                activeColor: AppColors.main1,
                inactiveColor: AppColors.main3,
                // toggleSize: 45.0,
                value: true,
                borderRadius: 30.0,
                padding: 3,
                showOnOff: false,
                onToggle: (val) {},
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SettingTile(
            width: width,
            title: 'Change location',
            icon: Icons.location_on_outlined,
            description: 'Bénin',
          ),
          SizedBox(
            height: 15,
          ),
          SettingTile(
            width: width,
            title: 'FAQ',
            icon: Icons.info_outline,
            description: 'Most frequently asked questions',
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: CustomText(
                text: 'Logout',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.red,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.width,
    required this.title,
    required this.icon,
    required this.description,
  });

  final double width;
  final String title, description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white),
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.white,
              child: Icon(
                icon,
                color: AppColors.main1,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: description,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.main3,
                      ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            )
          ],
        ),
      )
          .animate()
          .fadeIn(
              //  begin: 0.2,
              duration: 1000.ms,
              delay: Duration(milliseconds: 800))
          .slideX(duration: 1200.ms, delay: Duration(milliseconds: 800)),
    );
  }
}
