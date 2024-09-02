import '/components/list_tile_product_color_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_color_widget.dart' show CustomColorWidget;
import 'package:flutter/material.dart';

class CustomColorModel extends FlutterFlowModel<CustomColorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  // Model for ListTileProductColorRow component.
  late ListTileProductColorRowModel listTileProductColorRowModel;

  @override
  void initState(BuildContext context) {
    listTileProductColorRowModel =
        createModel(context, () => ListTileProductColorRowModel());
  }

  @override
  void dispose() {
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();

    listTileProductColorRowModel.dispose();
  }
}
