import 'package:flutter/material.dart';
import 'package:house_shop/constants.dart';

import 'components/financial_situation.dart';
import 'components/profile_header.dart';
import 'components/profile_info.dart';
import 'components/tools_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileHeader(),
              const SizedBox(height: kBigPadding),
              const ProfileInfo(
                icon: Icons.phone,
                text: '(581)-307-5902 ',
              ),
              const SizedBox(height: kSmallPadding),
              const ProfileInfo(
                icon: Icons.mail,
                text: 'christian.bale@gmail.com',
              ),
              const SizedBox(height: kBigPadding),
              Row(
                children: const [
                  FinancialSituation(numOfState: 140000, title: 'Wallet'),
                  FinancialSituation(numOfState: 0, title: 'Last Spent'),
                ],
              ),
              const SizedBox(height: kSmallPadding),
              const ToolsList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit, color: Colors.black),
        ),
      ],
    );
  }
}
