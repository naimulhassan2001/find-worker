import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NotificationListItem extends StatelessWidget {
  NotificationListItem({
    super.key,
    required this.title,
    required this.time,


  });


  String title;
  String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF6AA4EE)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        children: [
          CustomText(title: title),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            title: time,
            fontSize: 12,
          )
        ],
      ),
    );
  }
}
