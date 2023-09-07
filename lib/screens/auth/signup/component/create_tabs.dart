import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/screens/auth/signup/component/business_sign_up_text_feilds.dart';
import 'package:getten/screens/auth/signup/component/customer_sign_up_text_feilds.dart';
import 'package:getten/state/post_or_product_tab_contoller.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_selection_container.dart';

class CreateCustomerorBusinessTab extends StatelessWidget {
  final CreateBusinessorCustomerController _tabcontroller =
      Get.put(CreateBusinessorCustomerController());
  CreateCustomerorBusinessTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => GestureDetector(
                onTap: () {
                  _tabcontroller.selectPost();
                },
                child: CustomSelctionContainerWidget(
                  buttonText: 'Customer',
                  textColor: _tabcontroller.isCustomerSelected.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  backgroundColor: _tabcontroller.isCustomerSelected.value
                      ? AppColors.primaryColor
                      : AppColors.disabledColor.withOpacity(0.5),
                ),
              ),
            ),
            Obx(
              () => GestureDetector(
                onTap: () {
                  _tabcontroller.selectProduct();
                },
                child: CustomSelctionContainerWidget(
                  buttonText: 'Business',
                  textColor: !_tabcontroller.isCustomerSelected.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  backgroundColor: !_tabcontroller.isCustomerSelected.value
                      ? AppColors.primaryColor
                      : AppColors.disabledColor.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Obx(
          () {
            return Visibility(
              visible: _tabcontroller.isCustomerSelected.value,
              child: const SizedBox(
                child: CustomerTextFeilds(),
              ),
            );
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Obx(
          () {
            return Visibility(
              visible: !_tabcontroller.isCustomerSelected.value,
              child: const SizedBox(
                child: BusinessTextFeilds(),
              ),
            );
          },
        ),
      ],
    );
  }
}
