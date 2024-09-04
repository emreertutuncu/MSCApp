import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'formula_page_model.dart';
export 'formula_page_model.dart';

class FormulaPageWidget extends StatefulWidget {
  const FormulaPageWidget({super.key});

  @override
  State<FormulaPageWidget> createState() => _FormulaPageWidgetState();
}

class _FormulaPageWidgetState extends State<FormulaPageWidget> {
  late FormulaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormulaPageModel());

    _model.textFieldAmountTextController ??= TextEditingController();
    _model.textFieldAmountFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '24lgybxi' /* Formula */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF14181B),
                          fontSize: 28,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).warning,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(
                          0,
                          2,
                        ),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3v9p6yok' /* Yellow Color Code: RAL 1013 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Space Grotesk',
                          color: const Color(0xFF14181B),
                          fontSize: 18,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: TextFormField(
                    controller: _model.textFieldAmountTextController,
                    focusNode: _model.textFieldAmountFocusNode,
                    autofocus: false,
                    textCapitalization: TextCapitalization.none,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'fyqh5ww0' /* Amount */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'x7s1wpku' /* Enter amount... */,
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Space Grotesk',
                                color: const Color(0xFF14181B),
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFCE035F),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Space Grotesk',
                          color: const Color(0xFF14181B),
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    validator: _model.textFieldAmountTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('ButtonCalculate pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '1qorb323' /* Calculate */,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).tertiary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Space Grotesk',
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'sn1g5lbf' /* Product Information */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Space Grotesk',
                                  color: const Color(0xFF14181B),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'jp4zckf9' /* Total Amount: \$0.00 */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Space Grotesk',
                                  color: const Color(0xFF14181B),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'to6ga6ya' /* Product 1 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'plzg0ffq' /* \$10.00 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '3xy2uw2o' /* Product 2 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '9phusr2u' /* \$20.00 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'xdum3ear' /* Product 3 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '29w9gs3y' /* \$30.00 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: const Color(0xFF14181B),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ].divide(const SizedBox(height: 10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('ButtonPrint pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'adcasttq' /* Print */,
                        ),
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).warning,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Space Grotesk',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('ButtonPrint pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'esxk6fms' /* Clean */,
                        ),
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: const Color(0xFFCE035F),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Space Grotesk',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('ButtonLabel pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'h75hn13i' /* Label */,
                        ),
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).accent2,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Space Grotesk',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ].divide(const SizedBox(width: 20)),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
