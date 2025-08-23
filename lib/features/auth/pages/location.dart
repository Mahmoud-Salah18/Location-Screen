import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: SvgPicture.asset(AppImages.locationSvg)),
                    SizedBox(height: 40),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Select Your Location",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Switch on your location to stay in tune with",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "what’s happening in your area",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 200),
                    
                    Padding(  
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cairo, Egypt",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
           
            MainButton(text: "Submit", onPressed: () {}),
            SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}
