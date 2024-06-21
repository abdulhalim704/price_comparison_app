import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  final List<String> _dropdownItems = [
    'Region 1',
    'Region 2',
    'Region 3',
    'Region 4'
  ];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 190.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColors.c171717,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.c333333, width: 1.5.w),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedItem,
            hint: Text(
              'Region',
              style: TextFontStyle.headline15w400cB9B9B9,
            ),
            icon: Transform.rotate(
              angle: 90 * 3.14159 / 180, // Rotate the icon by 90 degrees
              child:
                  const Icon(Icons.arrow_forward_ios, color: AppColors.cFFFFFF),
            ),
            dropdownColor: AppColors.c262626,
            style: TextFontStyle.headline15w400cB9B9B9,
            items: _dropdownItems.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextFontStyle.headline15w400cB9B9B9,
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
          ),
        ),
      ),
    );
  }
}


