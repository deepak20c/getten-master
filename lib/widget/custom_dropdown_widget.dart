import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/state/dropdown_state.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/constant/constant.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomDropDownWidget extends StatelessWidget {
  final List<String> list;
  final String initialValue;

  CustomDropDownWidget({
    Key? key,
    required this.list,
    required this.initialValue,
  }) : super(key: key) {
    Get.put(DropdownController(initialValue: initialValue));
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Center(
      child: Obx(() => DropdownButtonFormField(
            menuMaxHeight: dimensions.getScreenHeight * 0.5,
            dropdownColor: AppColors.greyScale50Color,
            borderRadius:
                BorderRadius.circular(dimensions.getScreenWidth * 0.04),
            elevation: 0,
            decoration: InputDecoration(
              focusedBorder: border,
              enabledBorder: border,
              errorBorder: border,
            ),
            value: Get.find<DropdownController>().selectedValue.value,
            onChanged: (String? newValue) {
              Get.find<DropdownController>().updateSelectedValue(newValue!);
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: dimensions.getScreenWidth * 0.04),
                ),
              );
            }).toList(),
          )),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Getx Dropdown Example')),
        body: Center(
          child: CustomDropDownWidget(
            list: const ["Option 1", "Option 2", "Option 3"],
            initialValue: "Option 2", // Set your initial value here
          ),
        ),
      ),
    );
  }
}
