import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/controller/issue_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String selectedOption = 'Sewage Leaks'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return GetX<IssueController>(builder: (controller) {
      return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        width: double.maxFinite,
        child: DropdownButton<String>(
          iconSize: 0,
          underline: Container(),
          elevation: 0,
          value: selectedOption,
          onChanged: (newValue) {
            setState(
              () {
                selectedOption = newValue!;
                controller.complaintType.value =
                    controller.issueTypes.indexOf(newValue);
              },
            );
          },
          items: controller.issueTypes.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                    color: AppColor.whatsAppTealGreen,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      );
    });
  }
}
