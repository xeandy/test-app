import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:test_app/business_logic/item_watcher/item_watcher_cubit.dart';
import 'package:test_app/presentation/widgets/item_list/item_card.dart';

class ItemListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 310,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: GradientColors.gradeGrey,
              radius: 0.80,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 50),
            child: Center(
              child: Text(
                'YOUR LOGO',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 265),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF1EFF1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: BlocBuilder<ItemWatcherCubit, ItemWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => Container(),
                    loadInProgress: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (state) => ItemCard(
                      items: state.items,
                    ),
                    loadFailure: (state) => Center(
                      child: Text(
                        state.itemFailure.maybeMap(
                          insufficientPermission: (_) =>
                              'Insufficient Permission',
                          orElse: () =>
                              'Unexpected Error. \nPlease contact support ',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
