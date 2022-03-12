import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mekimeki_kakeibo/state/set_budget_state.dart';
import 'package:mekimeki_kakeibo/view_model/set_budget_view_model.dart';

final setBudgetProvider = StateNotifierProvider<SetBudgetStateNotifier, SetBudgetState>((ref) => SetBudgetStateNotifier());