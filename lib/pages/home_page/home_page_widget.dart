import '/components/add_transaction_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: GestureDetector(
                      onTap: () => _model.unfocusNode.canRequestFocus
                          ? FocusScope.of(context)
                              .requestFocus(_model.unfocusNode)
                          : FocusScope.of(context).unfocus(),
                      child: AddTransactionComponentWidget(),
                    ),
                  );
                },
              ).then((value) => setState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 0.0,
            child: Icon(
              FFIcons.kaddCopy,
              color: FlutterFlowTheme.of(context).info,
              size: 40.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '< November 2023 >',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Net total ',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                                FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownValue ??= 'this week',
                                  ),
                                  options: [
                                    'today',
                                    'this week',
                                    'this month',
                                    'this year'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: 100.0,
                                  height: 30.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyLarge,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '600 \$',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+ 500',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                      ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                                Text(
                                  '- 200',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ].addToStart(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
