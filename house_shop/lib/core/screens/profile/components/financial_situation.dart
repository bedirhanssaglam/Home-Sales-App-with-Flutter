import 'package:flutter/material.dart';

import '../../../../constants.dart';

class FinancialSituation extends StatelessWidget {
  const FinancialSituation({
    Key? key,
    required this.numOfState,
    required this.title,
  }) : super(key: key);

  final int numOfState;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 75,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$$numOfState',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
