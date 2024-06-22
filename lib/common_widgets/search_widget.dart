import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  SearchWidget({
    super.key,
    required TextEditingController searchController,
    this.hintText = 'Search',
  }) : _searchController = searchController;

  final TextEditingController _searchController;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
      decoration: BoxDecoration(
        color: AppColors.c3A3B3B,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, size: 24.w, color: AppColors.cFFFFFF),
          hintText: hintText,
          hintStyle: TextFontStyle.headline16w500cfffff,
          border: InputBorder.none,
        ),
        style: TextFontStyle.headline16w500cfffff,
      ),
    );
  }
}
