import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mekimeki_kakeibo/entity/bottom_nav_item.dart';
import 'package:mekimeki_kakeibo/utils/original_color.dart';
import 'package:mekimeki_kakeibo/utils/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print('HomePage');
    final List<Widget> screenList = ref.read(homeProvider).screenList;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(width: double.infinity, child: Screen()),
              ),
            ),
            SizedBox(
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(screenList.length, (index) => BottomNavItem(index: index)),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class Screen extends ConsumerWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  build(BuildContext context, WidgetRef ref) {
    // print('Screen');
    final List<Widget> _screenList = ref.read(homeProvider).screenList;
    final int _selectedIndex = ref.watch(homeProvider).selectedIndex;
    return _screenList[_selectedIndex];
  }
}

class BottomNavItem extends ConsumerWidget {
  const BottomNavItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  build(BuildContext context, WidgetRef ref) {
    // print('BottomNavItem');
    final BottomNavItemEntity bottomNavItemEntity = BottomNavItemEntity.bottomNavItems[index];
    final int _selectedIndex = ref.watch(homeProvider).selectedIndex;
    late final Color _color;
    late final double _size;
    if(index == _selectedIndex) {
      _color = OriginalColor.materialColor;
      _size = 25;
    } else {
      _color = OriginalColor.subColor;
      _size = 22;
    }

    return GestureDetector(
      onTap: () => ref.read(homeProvider.notifier).changeScreen(newIndex: index),
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              child: index == 4
                  ? SvgPicture.asset('assets/icon/gear.svg', color: _color, width: _size,)
                  : Icon(bottomNavItemEntity.icon, size: _size, color: _color),
            ),
            Text(bottomNavItemEntity.label,
              style: TextStyle(color: _color, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
