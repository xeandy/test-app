import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/admin/add_item/add_item_form_cubit.dart';
import 'package:test_app/business_logic/admin/drop_down_button/drop_down_button_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/screens/admin/add_item/widget/circular_indicator.dart';
import 'package:test_app/presentation/screens/admin/add_item/widget/display_item_img.dart';

class AddItemForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddItemFormCubit, AddItemFormState>(
      listener: (context, state) {
        if (state.isAdding) {
          showFlash(
            context: context,
            persistent: false,
            builder: (context, controller) {
              return Flash.dialog(
                backgroundColor: Colors.transparent,
                controller: controller,
                child: CircularIndicator(),
              );
            },
          );
        }

        state.submitFailureOrSucces.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showFlash(
                context: context,
                duration: Duration(seconds: 1),
                builder: (context, controller) {
                  return Flash.dialog(
                    controller: controller,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 65),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: failure.maybeMap(
                        orElse: () => Container(),
                        unexpected: (_) =>
                            Text('Unexpected Error. \nPlease contact support '),
                        insufficientPermission: (_) =>
                            Text('Insufficient Permission'),
                      ),
                    ),
                  );
                },
              );
            },
            (_) {
              showFlash(
                context: context,
                duration: Duration(seconds: 2),
                builder: (context, controller) {
                  return Flash.dialog(
                    controller: controller,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 65),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Added'),
                    ),
                  );
                },
              );
              Navigator.of(context).pushReplacementNamed('/addItem');
            },
          ),
        );
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                        width: 2,
                      ),
                      child: ItemImg(image: state.image),
                      onPressed: () {
                        context.read<AddItemFormCubit>().pickImage();
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Column(
                      children: [
                        TextFormField(
                          autocorrect: false,
                          onChanged: (value) {
                            context.read<AddItemFormCubit>().nameChanged(value);
                          },
                          decoration: InputDecoration(
                            hintText: 'Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          onChanged: (value) {
                            context
                                .read<AddItemFormCubit>()
                                .priceChanged(int.parse(value));
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Price',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          onChanged: (value) {
                            context
                                .read<AddItemFormCubit>()
                                .qtyChanged(int.parse(value));
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Qty',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        BlocBuilder<DropDownButtonCubit, DropDownButtonState>(
                          cubit: getIt<DropDownButtonCubit>()
                            ..getSubCategoryOfMainCategory1(),
                          builder: (context, state) {
                            return DropdownButtonFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              hint: Text('Choose sub category'),
                              items: state.categories
                                  .map(
                                    (category) => DropdownMenuItem<String>(
                                      child: Text(
                                        category.categoryName.getOrCrash(),
                                      ),
                                      value: category.categoryID.getOrCrash(),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                context
                                    .read<DropDownButtonCubit>()
                                    .categoryChanged(value);
                              },
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              child: TextFormField(
                                onChanged: (value) {
                                  if (value == '') {
                                    value = '0';
                                    context
                                        .read<AddItemFormCubit>()
                                        .calculateSalePrice(int.parse(value));
                                  } else {
                                    context
                                        .read<AddItemFormCubit>()
                                        .discountChanged(int.parse(value));
                                    context
                                        .read<AddItemFormCubit>()
                                        .calculateSalePrice(int.parse(value));
                                  }
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                ],
                                decoration: InputDecoration(
                                  hintText: 'Discount' + '%',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 13),
                            Container(
                              width: 150,
                              child: TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: '${state.salePrice.toString()} \$',
                                  hintStyle: TextStyle(color: Colors.black),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        RaisedButton(
                          child: Text('Add Item'),
                          onPressed: () {
                            var categoryID =
                                context.read<DropDownButtonCubit>().categoryID;

                            context
                                .read<AddItemFormCubit>()
                                .addItem(categoryID);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
