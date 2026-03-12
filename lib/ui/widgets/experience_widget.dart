import 'package:flutter/cupertino.dart';

import '../../colors.dart';

class ExperienceWidget extends StatelessWidget {
  final String imagePath;
  final String company;
  final String position;
  final String timeSpent;

  const ExperienceWidget({
    super.key,
    required this.imagePath,
    required this.company,
    required this.position,
    required this.timeSpent,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 124,
      width: width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 64, height: 64,),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                company,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                timeSpent,
                style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
              ),
            ],
          ),
          Spacer(),
          Text(
            position,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
