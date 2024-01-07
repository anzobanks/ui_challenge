import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:heyflutter_challenge_1/views/details_page.dart';

import '../models/estate.dart';
import 'custom_text.dart';

class PropertyTile extends StatelessWidget {
  PropertyTile({required this.estate,});
Estate estate;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => DetailsPage(estate: estate,),
          transition: Transition.rightToLeftWithFade, duration: 2000.ms),
      child: Hero(
        tag: estate.images[0],
        child: Container(
            height: 200,
            alignment: AlignmentDirectional.bottomEnd,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(estate.images[0]),
                    fit: BoxFit.cover),
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: BlurryContainer(
              height: 80,
              blur: 1,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CustomText(
                          text:estate. title,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_purple500_sharp,
                              color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            CustomText(
                              text: estate.rate.toStringAsFixed(1),
                              style:
                                  Theme.of(context).textTheme.bodySmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "\$ ${estate.price}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      CustomText(
                        text: estate.bathrooms.toString()+'room meet(s)',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
