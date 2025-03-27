import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/cubits/get_categories/get_categories_cubit.dart';
import 'package:shoppe/models/categorymodel.dart';
import 'package:shoppe/widgets/categoriscard.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class CategScrollCards extends StatefulWidget {
  const CategScrollCards({super.key});

  @override
  State<CategScrollCards> createState() => _CategScrollCardsState();
}

class _CategScrollCardsState extends State<CategScrollCards> {
  List<CategoryModel>? categoriesList;

  @override
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetCategoriesCubit>(context).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
      builder: (context, state) {
        if (state is GetCategoriesLoading) {
          return CircularProgressIndicator();
        } else if (state is GetCategoriesSuccess) {
          return GridView.builder(
              padding: EdgeInsets.only(top: context.setHeight(16.3)),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.categorieList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:
                      context.isLandscape ? 1.3 : context.setWidth(0.8),
                  mainAxisSpacing: context.setHeight(10),
                  crossAxisSpacing: context.setWidth(10),
                  crossAxisCount: context.isLandscape ? 3 : 2),
              itemBuilder: (context, index) {
                return Categoriescard(
                  categoryitem: state.categorieList[index],
                );
              });
        } else if (state is GetCategoriesFailure) {
          return Center(
              child: Text(
            'No categories ',
            style: AppStyle.headlinestyle1(context),
          ));
        } else {
          return Center(
              child: Text(
            'No categories *********',
            style: AppStyle.headlinestyle1(context),
          ));
        }
      },
    );
  }
}
