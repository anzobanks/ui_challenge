import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:heyflutter_challenge_1/models/estate.dart';
import 'package:heyflutter_challenge_1/themes/app_colors.dart';

// import 'package:latlong2/latlong.dart';
import 'package:readmore/readmore.dart';

import '../controllers/estate_controller.dart';
import '../widgets/custom_text.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.estate});

  Estate estate;
  final estateController = Get.put(EstateController());

  @override
  Widget build(BuildContext context) {
    RxString selectedImage = estate.images[0].obs;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Hero(
              tag: estate.images[0],
              child: Obx(() {
                return Container(
                  height: 350,
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              CachedNetworkImageProvider(selectedImage.value),
                          fit: BoxFit.cover)),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: AppColors.bg,
                          child: InkWell(
                          onTap: () => Get.back(),
                            
                            child: Icon(Icons.arrow_back_sharp)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Spacer(),
                            Container(
                              width: 55,
                              alignment: Alignment.centerRight,
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) => InkWell(
                                  onTap: () => selectedImage.value =
                                      estate.images[index],
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                                estate.images[index]),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 8,
                                ),
                                itemCount: estate.images.length,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
            Expanded(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: const BoxDecoration(color: AppColors.bg),
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingStars(
                        maxValueVisibility: false,
                        valueLabelVisibility: false,
                        starSpacing: 3,
                        value: estate.rate,
                        starOffColor: Color(0xFFf9d59b),
                        starColor: Color(0xFFf8b958),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: CustomText(
                              text: estate.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppColors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800),
                            ),
                          ),
                          Obx(
                            () {
                              return IconButton(
                                                        onPressed: () {
                                                          estateController.makeFavorite(estateController.estateList.indexWhere((element) => estate.id==element.id), !estateController.estateList[estateController.estateList.indexWhere((element) => estate.id==element.id)].isFavorite.value );
                                                        },
                                                        icon: estate.isFavorite == false ?Icon(
                                                          Icons.favorite_border,
                                                          size: 30,
                                                        ): Icon(
                                        Icons.favorite,
                                        size: 30,
color: Colors.red,
                                      ));
                            }
                          )
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 15),
                        child: CustomText(
                          text: 'Description',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w800),
                        ),
                      ),
                      ReadMoreText(
                        estate.description,
                        trimLines: 3,
                        delimiter: ' ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.main3,
                            fontWeight: FontWeight.w400),
                        // color:AppColors.main3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Show less',
                        lessStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: AppColors.main1,
                                  fontWeight: FontWeight.bold,
                                ),
                        moreStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: AppColors.main1,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 150,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: GoogleMap(
                            zoomControlsEnabled: false,
                            compassEnabled: false,
                            mapToolbarEnabled: false,
                            mapType: MapType.normal,
                            markers: {
                              Marker(
                                  markerId: MarkerId('1'),
                                  position: LatLng(
                                      estate.location.lat, estate.location.lng))
                            },
                            initialCameraPosition: CameraPosition(
                                target: LatLng(
                                    estate.location.lat, estate.location.lng),
                                bearing: 192.8334901395799,
                                tilt: 59.440717697143555,
                                zoom: 13),
                            onMapCreated: (GoogleMapController controller) {},
                          ),
                        ),
                      ),
                      // Spacer(),
                    ],
                  )),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Price',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w500),
                ),
                CustomText(
                  text: '\$ ${estate.price}',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 25,
                      color: AppColors.black,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                // shape:
              ),
              onPressed: () {},
              child: CustomText(
                text: 'Pay Now',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
