import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_account_component_model.dart';
export 'add_account_component_model.dart';

class AddAccountComponentWidget extends StatefulWidget {
  const AddAccountComponentWidget({Key? key}) : super(key: key);

  @override
  _AddAccountComponentWidgetState createState() =>
      _AddAccountComponentWidgetState();
}

class _AddAccountComponentWidgetState extends State<AddAccountComponentWidget> {
  late AddAccountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAccountComponentModel());

    _model.nameTextFieldController ??= TextEditingController();
    _model.nameTextFieldFocusNode ??= FocusNode();

    _model.balanceTextFieldController ??= TextEditingController();
    _model.balanceTextFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create Account',
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  controller: _model.nameTextFieldController,
                  focusNode: _model.nameTextFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    alignLabelWithHint: false,
                    hintText: 'Name',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType: TextInputType.name,
                  validator: _model.nameTextFieldControllerValidator
                      .asValidator(context),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.typeDropDownValueController ??=
                      FormFieldController<String>(null),
                  options: ['Cash', 'Bank', 'Credit Card'],
                  onChanged: (val) =>
                      setState(() => _model.typeDropDownValue = val),
                  width: double.infinity,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                  hintText: 'Please select...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 0.0,
                  borderRadius: 0.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
                TextFormField(
                  controller: _model.balanceTextFieldController,
                  focusNode: _model.balanceTextFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Balance',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  validator: _model.balanceTextFieldControllerValidator
                      .asValidator(context),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'Save Account',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
