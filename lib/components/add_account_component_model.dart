import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_account_component_widget.dart' show AddAccountComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAccountComponentModel
    extends FlutterFlowModel<AddAccountComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for TypeDropDown widget.
  String? typeDropDownValue;
  FormFieldController<String>? typeDropDownValueController;
  // State field(s) for BalanceTextField widget.
  FocusNode? balanceTextFieldFocusNode;
  TextEditingController? balanceTextFieldController;
  String? Function(BuildContext, String?)? balanceTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldController?.dispose();

    balanceTextFieldFocusNode?.dispose();
    balanceTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
