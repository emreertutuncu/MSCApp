import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'product_custom_color_row_model.dart';
export 'product_custom_color_row_model.dart';

class ProductCustomColorRowWidget extends StatefulWidget {
  /// ListView içinde doldurulmaya uygun bir satır nesnesine çevirdik
  const ProductCustomColorRowWidget({
    super.key,
    required this.colorCode,
  });

  final String? colorCode;

  @override
  State<ProductCustomColorRowWidget> createState() =>
      _ProductCustomColorRowWidgetState();
}

class _ProductCustomColorRowWidgetState
    extends State<ProductCustomColorRowWidget> {
  late ProductCustomColorRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCustomColorRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 391,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF4AFAF0),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF6F61EF),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'lmepxjjy' /* PRODUCT CODE (RAL CODE) */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: const Color(0xFF15161E),
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '81y78k9a' /* PRODUCT NAME (COLOR NAME) */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF606A85),
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                            child: Icon(
                              Icons.keyboard_control_rounded,
                              color: Color(0xFF606A85),
                              size: 16,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 0),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 40,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 4)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
