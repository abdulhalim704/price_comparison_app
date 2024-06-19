import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.w),
      decoration: BoxDecoration(
        color: AppColors.c3A3B3B,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          prefixIcon:
              Icon(Icons.search, size: 24.w, color: AppColors.cFFFFFF),
          hintText: 'Search',
          hintStyle: TextFontStyle.headline16w500cfffff,
          border: InputBorder.none,
        ),
        style: TextFontStyle.headline16w500cfffff,
      ),
    );
  }
}
