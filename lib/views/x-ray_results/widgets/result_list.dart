import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/xray_result_model.dart';
import 'package:tash5esy_app/views/x-ray_results/widgets/xray_result_card.dart';

class xrayResultsList extends StatelessWidget {
  final List<XrayResult> xrayResults;

  const xrayResultsList({required this.xrayResults}); 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: xrayResults.length,
        itemBuilder: (context, index) {
          final result = xrayResults[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: XrayResultCard(xrayResult: result), 
          );
        },
      ),
    );
  }
}
