import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ThemeClass.dart';

/// A beautiful and animated bottom navigation that paints a rounded shape
/// around its [items] to provide a wonderful look.
///
/// Update [selectedIndex] to change the selected item.
/// [selectedIndex] is required and must not be null.
class LeftNavyBar extends StatelessWidget {
  LeftNavyBar({
    Key key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 26,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerWidth = 90,
    this.animationDuration = const Duration(milliseconds: 150),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    @required this.items,
    @required this.onItemSelected,
    this.curve = Curves.easeInOut,
  })  : assert(items != null),
        assert(items.length >= 2 && items.length <= 5),
        assert(onItemSelected != null),
        assert(animationDuration != null),
        assert(curve != null),
        super(key: key);

  /// The selected item is index. Changing this property will change and animate
  /// the item being selected. Defaults to zero.
  final int selectedIndex;

  /// The icon size of all items. Defaults to 24.
  final double iconSize;

  /// The background color of the navigation bar. It defaults to
  /// [Theme.bottomAppBarColor] if not provided.
  final Color backgroundColor;

  /// Whether this navigation bar should show a elevation. Defaults to true.
  final bool showElevation;

  /// Use this to change the item's animation duration. Defaults to 270ms.
  final Duration animationDuration;

  /// Defines the appearance of the buttons that are displayed in the bottom
  /// navigation bar. This should have at least two items and five at most.
  final List<LeftNavyBarItem> items;

  /// A callback that will be called when a item is pressed.
  final ValueChanged<int> onItemSelected;

  /// Defines the alignment of the items.
  /// Defaults to [MainAxisAlignment.spaceBetween].
  final MainAxisAlignment mainAxisAlignment;

  /// The [items] corner radius, if not set, it defaults to 50.
  final double itemCornerRadius;

  /// Defines the bottom navigation bar height. Defaults to 56.
  final double containerWidth;

  /// Used to configure the animation curve. Defaults to [Curves.easeInOutBack].
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = (backgroundColor == null) ? Theme.of(context).bottomAppBarColor : backgroundColor;

    return Container(
      width: containerWidth,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: grey.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(10),
        color: white,
        boxShadow: [
          if (showElevation)
            BoxShadow(
              offset: Offset(0, 0),
              color: black.withOpacity(0.3),
              blurRadius: 4,
            ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
             crossAxisAlignment: WrapCrossAlignment.center,
             children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final LeftNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key key,
    @required this.item,
    @required this.isSelected,
    @required this.backgroundColor,
    @required this.animationDuration,
    @required this.itemCornerRadius,
    @required this.iconSize,
    this.curve = Curves.linear,
  })  : assert(isSelected != null),
        assert(item != null),
        assert(backgroundColor != null),
        assert(animationDuration != null),
        assert(itemCornerRadius != null),
        assert(iconSize != null),
        assert(curve != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Semantics(
        container: true,
        selected: isSelected,
        child: AnimatedContainer(
          height: isSelected ? 100 : 50,
          width: double.maxFinite,
          duration: animationDuration,
          curve: curve,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 1),
                color: black.withOpacity(0.3),
                blurRadius: 2,
              ),
            ],
            border: Border.all(width: 0.5, color: grey.withOpacity(0.3)),
            color: isSelected ? item.activeColor : white,
            borderRadius: BorderRadius.circular(itemCornerRadius),
          ),
          child: Container(
            color: Colors.transparent,
            height: isSelected ? 100 : 50,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                    size: isSelected ? iconSize : 20,
                    color: isSelected
                        ? whiteText
                        : item.inactiveColor == null
                            ? item.activeColor
                            : item.inactiveColor,
                  ),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: DefaultTextStyle.merge(
                          style: TextStyle(
                            color: whiteText,fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          textAlign: item.textAlign,
                          child: item.title,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The [LeftNavyBar.items] definition.
class LeftNavyBarItem {
  LeftNavyBarItem({
    @required this.icon,
    @required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  })  : assert(icon != null),
        assert(title != null);

  /// Defines this item's icon which is placed in the right side of the [title].
  final Widget icon;

  /// Defines this item's title which placed in the left side of the [icon].
  final Widget title;

  /// The [icon] and [title] color defined when this item is selected. Defaults
  /// to [Colors.blue].
  final Color activeColor;

  /// The [icon] and [title] color defined when this item is not selected.
  final Color inactiveColor;

  /// The alignment for the [title].
  ///
  /// This will take effect only if [title] it a [Text] widget.
  final TextAlign textAlign;
}
