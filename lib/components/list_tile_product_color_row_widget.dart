import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_tile_product_color_row_model.dart';
export 'list_tile_product_color_row_model.dart';

class ListTileProductColorRowWidget extends StatefulWidget {
  const ListTileProductColorRowWidget({
    super.key,
    this.colorCode,
  });

  final Widget? colorCode;

  @override
  State<ListTileProductColorRowWidget> createState() =>
      _ListTileProductColorRowWidgetState();
}

class _ListTileProductColorRowWidgetState
    extends State<ListTileProductColorRowWidget> {
  late ListTileProductColorRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListTileProductColorRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('FormulaPage');
      },
      child: ListTile(
        leading: const Icon(
          Icons.rectangle_sharp,
          color: Color(0xFFEFC039),
          size: 50.0,
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'mjwtu5vg' /* DPL_PRODUCT_NAME */,
          ),
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        subtitle: Text(
          FFLocalizations.of(context).getText(
            'lkgsgmjr' /* PRODUCT_NAME */,
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 20.0,
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        dense: false,
      ),
    );
  }
}
