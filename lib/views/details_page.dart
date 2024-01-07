import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:heyflutter_challenge_1/themes/app_colors.dart';

// import 'package:latlong2/latlong.dart';
import 'package:readmore/readmore.dart';

import '../widgets/custom_text.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  // final Marker marker = Marker(
  //   markerId: markerId,
  //   position: LatLng(

  //   ),

  // );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: 350,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/home1.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                    onTap: () => Get.back(),

                      child: CircleAvatar(
                        backgroundColor: AppColors.bg,
                        child: Icon(Icons.arrow_back_sharp),
                      ),
                    ),
                  ),
           SizedBox(height: 30,),

                  Expanded(
                    child: Row(
                      children: [
                  Spacer(),

                        Container(
                          width: 55,
                          alignment: Alignment.centerRight,
                          child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        //          image: DecorationImage(
                                        // image: AssetImage('assets/home1.jpg'),
                                        // fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 10,
                                  ),
                              itemCount: 3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: const BoxDecoration(color: AppColors.bg),
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RatingStars(
                        maxValueVisibility: false,
                        valueLabelVisibility: false,
                        starSpacing: 3,
                        value: 4,
                        starOffColor: Color(0xFFf9d59b),
                        starColor: Color(0xFFf8b958),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: '123 Julinun Zahra',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppColors.black,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w800),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 30,
                              ))
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
                        'Velit cupidatat laborum consequat ut sit voluptate enim.Dolor eu incididunt consectetur mollit. Elit mollit deserunt non sint aute non. Veniam anim cillum velit minim veniam. Occaecat ad tempor veniam do cillum proident non est do excepteur. Esse do in adipisicing fugiat Lorem culpa..',
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
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                              const Marker(
                                  markerId: MarkerId('1'),
                                  position: LatLng(
                                      6.354597225468105, 2.3198250671766028))
                            },
                            initialCameraPosition: const CameraPosition(
                                target: LatLng(
                                    6.354597225468105, 2.3198250671766028),
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
                  text: '\$ 320',
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
