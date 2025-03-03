import 'package:flutter/material.dart';
import 'package:semantic_wrapper/widget/semantic_wrapper.dart';
import 'package:semantic_wrapper/widget/widget_copywith_extension.dart';

class AutoSemanticWrapper extends StatefulWidget {
  final Widget child;

  const AutoSemanticWrapper({required this.child, super.key});

  @override
  State<AutoSemanticWrapper> createState() => _AutoSemanticWrapperState();
}

class _AutoSemanticWrapperState extends State<AutoSemanticWrapper> {
  Widget _wrapWithSemantics(Widget widget) {
    /// dig into layout widgets
    if (widget is Row) {
      return widget.copyWith(children: widget.children.wrapWithAutoSemantic());
    }

    if (widget is Column) {
      return widget.copyWith(children: widget.children.wrapWithAutoSemantic());
    }

    if (widget is Expanded) {
      return widget.copyWith(child: widget.child.wrapWithAutoSemantic());
    }

    if (widget is Card) {
      return widget.copyWith(child: widget.child?.wrapWithAutoSemantic());
    }

    if (widget is Scaffold) {
      return widget.copyWith(body: widget.body?.wrapWithAutoSemantic());
    }

    ///Todo: ...implements more layout widgets

    /// bypass widget
    /// [CWidget] is used to bypass the widget from auto semantic wrapping
    /// We can wrapper inside [CWidget] or do nothing
    if (widget is CWidget) {
      return widget;
    }

    /// wrap widget with semantic

    /// [type] is used to identify the type of the widget
    final type = widget.runtimeType.toString();

    /// [action] is used to identify the action of the widget
    /// implement your own logic to get the action
    final action = 'AutoWrap';
    return widget.withExcludeSemantic(
      context: context,
      type: type,
      action: action,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _wrapWithSemantics(widget.child);
  }
}

extension AutoSemanticWrapperX on Widget {
  Widget wrapWithAutoSemantic() {
    return AutoSemanticWrapper(child: this);
  }
}

extension AutoSemanticWrapperChildrenWidgetX on List<Widget> {
  List<Widget> wrapWithAutoSemantic() {
    return map((e) => e.wrapWithAutoSemantic()).toList();
  }
}

////[CWidget] used to bypass the widget from auto semantic wrapping
mixin CWidget {}
