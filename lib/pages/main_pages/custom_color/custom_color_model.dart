import '/flutter_flow/flutter_flow_util.dart';
import 'custom_color_widget.dart' show CustomColorWidget;
import 'package:flutter/material.dart';

class CustomColorModel extends FlutterFlowModel<CustomColorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch widget.
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
