import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'formula_page_widget.dart' show FormulaPageWidget;
import 'package:flutter/material.dart';

class FormulaPageModel extends FlutterFlowModel<FormulaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldAmount widget.
  FocusNode? textFieldAmountFocusNode;
  TextEditingController? textFieldAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldAmountTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAmountFocusNode?.dispose();
    textFieldAmountTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
