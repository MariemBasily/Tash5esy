import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/xray_result_model.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class XrayResultCard extends StatelessWidget {
  final XrayResult xrayResult; 

  XrayResultCard({required this.xrayResult}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                xrayResult.time, 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "lato",
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          xrayResult.testName, 
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontFamily: "lato",
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          xrayResult.details, 
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.grey,
                            fontFamily: "lato",
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Implement navigation or functionality here
                    },
                    child: Container(
                      width: 40,
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
