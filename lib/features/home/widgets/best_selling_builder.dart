import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/home/models/product_model.dart';
import 'package:nectar_ui/features/home/widgets/product_cart.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Exclusive Offer", style: TextStyles.titleStyle()),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyles.bodyStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            return ProductCart(model: exProducts[index]);
          },
          itemCount: offerProducts.length,
        ),
      ],
    );
  }
}
