import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:test_app/business_logic/category_watcher/category_watcher_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/home_widgets/advt_widget.dart';
import 'package:test_app/presentation/widgets/home_widgets/category/check_category.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) =>
          getIt<CategoryWatcherCubit>()..getSubCategoryOfMainCategory1(),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  gradient: RadialGradient(
                    colors: GradientColors.gradeGrey,
                    radius: 0.85,
                  ),
                ),
              ),
              AdvtWidget()
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: CheckCategory(),
            ),
          ),
        ],
      ),
    );
  }
}
