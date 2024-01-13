import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_transaction_component_model.dart';
export 'add_transaction_component_model.dart';

class AddTransactionComponentWidget extends StatefulWidget {
  const AddTransactionComponentWidget({super.key});

  @override
  _AddTransactionComponentWidgetState createState() =>
      _AddTransactionComponentWidgetState();
}

class _AddTransactionComponentWidgetState
    extends State<AddTransactionComponentWidget> {
  late AddTransactionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTransactionComponentModel());
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
      ),
      child: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: custom_widgets.NumericKeypadWidget(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
