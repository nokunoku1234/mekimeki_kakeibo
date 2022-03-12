import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_nav_item.freezed.dart';

@freezed
abstract class BottomNavItemEntity with _$BottomNavItemEntity {
  const factory BottomNavItemEntity({
    required String label,
    required IconData icon,
  }) = _BottomNavItemEntity;

  static const List<BottomNavItemEntity> bottomNavItems = [
    BottomNavItemEntity(label: '予算設定', icon: FontAwesomeIcons.glasses),
    BottomNavItemEntity(label: '収支入力', icon: FontAwesomeIcons.pen),
    BottomNavItemEntity(label: 'カレンダー', icon: FontAwesomeIcons.solidCalendar),
    BottomNavItemEntity(label: 'レポート', icon: FontAwesomeIcons.chartPie),
    BottomNavItemEntity(label: '設定', icon: Icons.settings),
  ];
}