import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';
import 'package:nectar_ui/features/home/pages/home_screen.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16,66,16,16),
        child: SafeArea(
          child: MainButton(text: "Back To Home", onPressed: () {
           pushTo(context, HomeScreen());
          }),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 90),
                Image.asset(AppImages.accepted),
                SizedBox(height: 30),
                Text(
                  "Your Order has been accepted",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your items has been placcd and is on \n it’s way to being processed",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
