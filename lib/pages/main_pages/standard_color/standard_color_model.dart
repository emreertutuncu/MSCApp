import '/flutter_flow/flutter_flow_util.dart';
import 'standard_color_widget.dart' show StandardColorWidget;
import 'package:flutter/material.dart';

class StandardColorModel extends FlutterFlowModel<StandardColorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_search widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();
  }
}
