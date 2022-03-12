import 'package:freezed_annotation/freezed_annotation.dart';
part 'balance_history.freezed.dart';

@freezed
abstract class BalanceHistory with _$BalanceHistory {
  const factory BalanceHistory({
    required String title,
    required String category,
    required String icon,
    required DateTime historyTime,
    @Default(0) int amount,
  }) = _BalanceHistory;
}