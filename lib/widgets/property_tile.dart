import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class PropertyTile extends StatelessWidget {
  const PropertyTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        alignment: AlignmentDirectional.bottomEnd,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/home1.jpg'), fit: BoxFit.cover),
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)),
        child: BlurryContainer(
          height: 78,
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
                  CustomText(
                    text: '123 Julinun Zahra',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
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
                          text: "3.6",
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
                    text: "\$ 123/mo",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  CustomText(
                    text: "1 room meet",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
