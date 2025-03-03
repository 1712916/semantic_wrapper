import 'package:flutter/material.dart';

/// A template for semantic information.
abstract class SemanticInformationTemplate {
  String get pageName;

  String get elementType;

  String get specificAction;

  String get value => 'VALUE';

  String get semanticTemplate => [pageName, '$elementType$specificAction', value].join('_');
}

class SemanticLabelInformation extends SemanticInformationTemplate {
  final BuildContext context;
  final String type;
  final String action;

  SemanticLabelInformation({
    required this.context,
    required this.type,
    required this.action,
  });

  /// A map of page names to be used in the semantic label.
  static final Map<String, String> pageNames = {
    '/': 'Home',
    '/products': 'ProductPage',
  };

  String getPageName(String? path) {
    return pageNames[path] ?? 'UnknownPage';
  }

  /// Returns the name of the current page based on the context.
  @override
  String get pageName {
    try {
      return getPageName(ModalRoute.of(context)?.settings.name);
    } catch (e, st) {
      return 'UnknownPage';
    }
  }

  @override
  String get elementType => type;

  @override
  String get specificAction => action;

  SemanticLabelInformation copyWith({
    BuildContext? context,
    String? type,
    String? action,
  }) {
    return SemanticLabelInformation(
      context: context ?? this.context,
      type: type ?? this.type,
      action: action ?? this.action,
    );
  }
}

extension SemanticWidgetX on Widget {
  Widget withExcludeSemantic({
    required BuildContext context,
    required String type,
    required String action,
  }) {
    return WrapperExcludeSemantic(
      information: SemanticLabelInformation(
        context: context,
        type: type,
        action: action,
      ),
      child: this,
    );
  }

  Widget withExplicitSemantic({
    required BuildContext context,
    required String type,
    required String action,
  }) {
    return WrapperExplicitSemantic(
      information: SemanticLabelInformation(
        context: context,
        type: type,
        action: action,
      ),
      child: this,
    );
  }
}

///  All child semantics nodes are ignored
class WrapperExcludeSemantic extends StatelessWidget {
  const WrapperExcludeSemantic({
    super.key,
    required this.information,
    required this.child,
  });

  final SemanticLabelInformation information;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: information.semanticTemplate,
      child: child,
    );
  }
}

/// All child semantics nodes are explicitly included
class WrapperExplicitSemantic extends StatelessWidget {
  const WrapperExplicitSemantic({
    super.key,
    required this.information,
    required this.child,
  });

  final SemanticLabelInformation information;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      explicitChildNodes: true,
      label: information.semanticTemplate,
      child: child,
    );
  }
}
