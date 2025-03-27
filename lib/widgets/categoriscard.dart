import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/cubits/auth_cubit/auth_cubit.dart';
import 'package:shoppe/cubits/get_categories/get_categories_cubit.dart';
import 'package:shoppe/models/categorymodel.dart';

class Categoriescard extends StatefulWidget {
  CategoryModel? categoryitem;
  Categoriescard({super.key, this.categoryitem});

  @override
  State<Categoriescard> createState() => _CategoriescardState();
}

class _CategoriescardState extends State<Categoriescard> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: context.isLandscape
              ? context.setHeight(192) * 1.5
              : context.setHeight(192),
          maxWidth: context.isLandscape
              ? context.setWidth(165) * 1.5
              : context.setWidth(165)),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.r)),
        elevation: 4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Image.network(
              widget.categoryitem!.image!,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/artist-2 1.png',
                fit: BoxFit.cover,
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: AppColor.secondColor,
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 200, // Match your image dimensions
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: context.setHeight(16),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                  left: context.setWidth(6), right: context.setWidth(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.categoryitem!.name!,
                    style: TextStyle(
                        fontSize: context.setSp(16),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'raleway',
                        overflow: TextOverflow.ellipsis),
                  ),
                  Container(
                    width: context.setButtonWidth(38),
                    height: context.setButtonHeight(21),
                    decoration: BoxDecoration(
                      color: const Color(0XFFDFE9FF),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: Text(
                        '235',
                        style: TextStyle(
                          fontFamily: 'raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: context.setSp(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: context.setHeight(5),
          )
        ]),
      ),
    );
  }
}
