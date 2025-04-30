import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppe/cubits/get_product_cubit/get_product_cubit.dart';
import 'package:shoppe/widgets/Product_card.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetProductCubit>(context).getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetProductSuccess) {
          return CustomScrollView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            slivers: [
              SliverList.builder(
                  itemCount: state.productlist.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      productItem: state.productlist[index],
                    );
                  }),
            ],
          );
        } else if (state is GetProductFailure) {
          return const Center(
            child: Text('Get Categories Failure'),
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
