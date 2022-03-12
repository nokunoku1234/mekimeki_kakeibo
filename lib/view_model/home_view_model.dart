import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mekimeki_kakeibo/state/home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier() : super(const HomeState());

  void changeScreen({required int newIndex}) {
    state = state.copyWith(selectedIndex: newIndex);
  }
}