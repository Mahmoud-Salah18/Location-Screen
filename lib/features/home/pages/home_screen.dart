import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/home/widgets/best_selling_builder.dart';
import 'package:nectar_ui/features/home/widgets/exclusive_offer_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          "assets/images/Group 1.svg",
          height: 50,
          colorFilter: ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: SingleChildScrollView (
          child: Column(
            children: [
              ExclusiveOfferBuilder(),
              SizedBox(height: 20),
              BestSellingBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
