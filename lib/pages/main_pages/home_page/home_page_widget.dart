import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'listTileOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'listTileOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'listTileOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: 280,
          child: Drawer(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, -1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/msc-logo.png',
                        width: 500,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    width: 318,
                    height: 537,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('HomePage');
                            },
                            child: ListTile(
                              leading: const Icon(
                                Icons.home,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '76hkpb0i' /* Anasayfa */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('StandardColor');
                            },
                            child: ListTile(
                              leading: const Icon(
                                Icons.color_lens_outlined,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'fxkx02oo' /* Standart Renkler */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['listTileOnActionTriggerAnimation1']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'CustomColor',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                  ),
                                },
                              );
                            },
                            child: ListTile(
                              leading: const Icon(
                                Icons.star,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'm0n02liw' /* Özel Renkler */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['listTileOnActionTriggerAnimation2']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('SettingsPage');
                            },
                            child: ListTile(
                              leading: const Icon(
                                Icons.settings_sharp,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '7fn174i2' /* Ayarlar */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['listTileOnActionTriggerAnimation3']!,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, -1),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'dtswkd2g' /* [KullanıcıAdı] */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if ((Theme.of(context).brightness ==
                                Brightness.light) ==
                            true) {
                          setDarkModeSetting(context, ThemeMode.dark);
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        } else {
                          setDarkModeSetting(context, ThemeMode.light);
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .reverse();
                          }
                        }
                      },
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFFE0E3E7),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Stack(
                            alignment: const AlignmentDirectional(0, 0),
                            children: [
                              const Align(
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6, 0, 0, 0),
                                  child: Icon(
                                    Icons.wb_sunny_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 6, 0),
                                  child: Icon(
                                    Icons.mode_night_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1, 0),
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x430B0D0F),
                                        offset: Offset(
                                          0.0,
                                          2,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    shape: BoxShape.rectangle,
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation']!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 40,
                        fillColor: FlutterFlowTheme.of(context).error,
                        hoverColor: FlutterFlowTheme.of(context).tertiary,
                        hoverIconColor: FlutterFlowTheme.of(context).error,
                        icon: Icon(
                          Icons.exit_to_app,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 24,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Exit Application'),
                                    content:
                                        const Text('Do you close this application?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: const Text('Confirm'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;

                          context.pushNamed('LoginPage');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.white,
            borderRadius: 20,
            borderWidth: 1,
            buttonSize: 40,
            fillColor: const Color(0x4CFFFFFF),
            icon: Icon(
              Icons.menu,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Stack(
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'blreehw5' /* MSC News */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 24,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openEndDrawer();
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1, -1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/WhatsApp_Image_2024-08-28_at_15.36.43.jpeg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, -1),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'sb7n8mo2' /*                               ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.41, 0.16),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'utxcf0ac' /*                               ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'd13xe2yp' /* 



3 day ago */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
