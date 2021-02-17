import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:test_app/business_logic/category_watcher/category_watcher_cubit.dart';
import 'package:test_app/presentation/widgets/home_widgets/category/category_card.dart';

class CheckCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavigationCubit, BottomNavigationState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          officeCategory: (_) {
            context
                .read<CategoryWatcherCubit>()
                .getSubCategoryOfMainCategory1();
          },
          houseCategory: (_) {
            context
                .read<CategoryWatcherCubit>()
                .getSubCategoryOfMainCategory2();
          },
          horecaCategory: (_) {
            context
                .read<CategoryWatcherCubit>()
                .getSubCategoryOfMainCategory1();
          },
        );
      },
      child: BlocBuilder<CategoryWatcherCubit, CategoryWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loadInProgress: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) => CategoryCard(
              categories: state.categories,
            ),
            loadFailure: (state) => Center(
              child: Text(
                state.categoryFailure.maybeMap(
                  insufficientPermission: (_) => 'Insufficient Permission',
                  orElse: () => 'Unexpected Error. \nPlease contact support ',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
