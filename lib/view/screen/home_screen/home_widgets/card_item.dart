


import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({

    super.key,
    required this.image,
    required this.name,
    required this.location,
  });


  String image ;
  String name ;
  String location ;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width ;

    return Container(
      padding: const EdgeInsets.all(8),
      width: (screenWidth -48) / 2,
      height: (screenWidth -48) / 2,
      decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFF6AA4EE)),
        borderRadius: BorderRadius.circular(8),
      ),
    ),      child: Column(
        children: [
          Expanded(
              flex: 14,
              child: SizedBox(
                  width: (screenWidth -48) / 2,
              
                  child: Image.asset(image, fit: BoxFit.fitWidth,))
          ),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(title: name),
                      const Spacer(),
                      const Icon(Icons.star,color: Colors.amber, size: 18,),
                      CustomText(title: "(4.5)"),


                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 18,),
                      CustomText(title: location, fontSize: 10, fontWeight: FontWeight.w400),
                    ],
                  )
                ],
              ))
        ],

      ),
    );
  }
}
