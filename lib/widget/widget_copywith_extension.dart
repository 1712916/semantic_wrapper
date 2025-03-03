import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Extension for [Column] to add [copyWith] method.
extension ColumnX on Column {
  Column copyWith({
    Key? key,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    List<Widget>? children,
  }) {
    return Column(
      key: key ?? this.key,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textBaseline: textBaseline ?? this.textBaseline,
      children: children ?? this.children,
    );
  }
}

/// Extension for [Row] to add [copyWith] method.
extension RowX on Row {
  Row copyWith({
    Key? key,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    List<Widget>? children,
  }) {
    return Row(
      key: key ?? this.key,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textBaseline: textBaseline ?? this.textBaseline,
      children: children ?? this.children,
    );
  }
}

/// Extension for [Expanded] to add [copyWith] method.
extension ExpandedX on Expanded {
  Expanded copyWith({
    Key? key,
    int? flex,
    Widget? child,
  }) {
    return Expanded(
      key: key ?? this.key,
      flex: flex ?? this.flex,
      child: child ?? this.child,
    );
  }
}

/// Extension for [Card] to add [copyWith] method.
extension CardX on Card {
  Card copyWith({
    Key? key,
    bool? semanticContainer,
    Clip? clipBehavior,
    EdgeInsetsGeometry? margin,
    ShapeBorder? shape,
    Color? color,
    Color? shadowColor,
    double? elevation,
    bool? borderOnForeground,
    Color? surfaceTintColor,
    Widget? child,
  }) {
    return Card(
      key: key ?? this.key,
      semanticContainer: semanticContainer ?? this.semanticContainer,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      margin: margin ?? this.margin,
      shape: shape ?? this.shape,
      color: color ?? this.color,
      shadowColor: shadowColor ?? this.shadowColor,
      elevation: elevation ?? this.elevation,
      borderOnForeground: borderOnForeground ?? this.borderOnForeground,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      child: child ?? this.child,
    );
  }
}

/// Extension for [Scaffold] to add [copyWith] method.
extension ScaffoldX on Scaffold {
  Scaffold copyWith({
    Key? key,
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<Widget>? persistentFooterButtons,
    Widget? drawer,
    Widget? endDrawer,
    Color? drawerScrimColor,
    Color? backgroundColor,
    Widget? bottomNavigationBar,
    Widget? bottomSheet,
    bool? resizeToAvoidBottomInset,
    bool? primary,
    DragStartBehavior? drawerDragStartBehavior,
    bool? extendBody,
    bool? extendBodyBehindAppBar,
    double? drawerEdgeDragWidth,
    DrawerCallback? onDrawerChanged,
    DrawerCallback? onEndDrawerChanged,
    String? restorationId,
  }) {
    return Scaffold(
      key: key ?? this.key,
      appBar: appBar ?? this.appBar,
      body: body ?? this.body,
      floatingActionButton: floatingActionButton ?? this.floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation ?? this.floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator ?? this.floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons ?? this.persistentFooterButtons,
      drawer: drawer ?? this.drawer,
      endDrawer: endDrawer ?? this.endDrawer,
      drawerScrimColor: drawerScrimColor ?? this.drawerScrimColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
      bottomSheet: bottomSheet ?? this.bottomSheet,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? this.resizeToAvoidBottomInset,
      primary: primary ?? this.primary,
      drawerDragStartBehavior: drawerDragStartBehavior ?? this.drawerDragStartBehavior,
      extendBody: extendBody ?? this.extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? this.extendBodyBehindAppBar,
      drawerEdgeDragWidth: drawerEdgeDragWidth ?? this.drawerEdgeDragWidth,
      onDrawerChanged: onDrawerChanged ?? this.onDrawerChanged,
      onEndDrawerChanged: onEndDrawerChanged ?? this.onEndDrawerChanged,
      restorationId: restorationId ?? this.restorationId,
    );
  }
}
