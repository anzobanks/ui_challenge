import 'package:flutter/material.dart';

import 'custom_text.dart';

class SectionRow extends StatelessWidget {
  SectionRow(
      {required this.leftText,
      required this.rigthText,
      required this.onPressed});
  String leftText, rigthText;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 ,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              // padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: leftText,
                               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    
                      color: Colors.black,
                      fontSize: 20,
                        fontWeight: FontWeight.w900,
         
                ),
             
                textAlign: TextAlign.left,
              )),
          TextButton(
              onPressed: onPressed,
              child: CustomText(
                text: rigthText,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    
                      fontWeight: FontWeight.w900,
                    ),
             
            
               
                textAlign: TextAlign.left,
              ))
        ],
      ),
    );
  }
}

class SectionColumn extends StatelessWidget {
  SectionColumn({required this.topText, required this.bottomText});
  String topText, bottomText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        children: [
          Container(
              // padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: topText,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
            
                textAlign: TextAlign.left,
              )),
          CustomText(
            text: bottomText,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: 15,
               
                ),
            
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
