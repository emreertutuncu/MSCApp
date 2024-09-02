import '/components/list_tile_product_color_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'standard_color_widget.dart' show StandardColorWidget;
import 'package:flutter/material.dart';

class StandardColorModel extends FlutterFlowModel<StandardColorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField_search widget.
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
