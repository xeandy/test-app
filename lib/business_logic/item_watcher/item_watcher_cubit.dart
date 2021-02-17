import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/repositories/item/i_item_repository.dart';

part 'item_watcher_state.dart';
part 'item_watcher_cubit.freezed.dart';

@injectable
class ItemWatcherCubit extends Cubit<ItemWatcherState> {
  final IItemRepository itemRepository;
  ItemWatcherCubit(this.itemRepository) : super(ItemWatcherState.initial());

  StreamSubscription streamSubscription;

  Future<void> getItems(Category category) async {
    emit(ItemWatcherState.loadInProgress());
    streamSubscription = itemRepository.getItems().listen((failureOrGet) {
      emit(
        failureOrGet.fold(
          (failure) => ItemWatcherState.loadFailure(failure),
          (items) => ItemWatcherState.loadSuccess(items
              .where((item) => item.categoryId == category.categoryID)
              .toList()),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
