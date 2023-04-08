import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'error_dialog_box_model.dart';
export 'error_dialog_box_model.dart';

class ErrorDialogBoxWidget extends StatefulWidget {
  const ErrorDialogBoxWidget({Key? key}) : super(key: key);

  @override
  _ErrorDialogBoxWidgetState createState() => _ErrorDialogBoxWidgetState();
}

class _ErrorDialogBoxWidgetState extends State<ErrorDialogBoxWidget> {
  late ErrorDialogBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorDialogBoxModel());
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
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('ErrorCloseButton pressed ...');
                    },
                    text: 'X',
                    options: FFButtonOptions(
                      width: 40.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Urbanist',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).tertiary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Invalid Entry\nPlease fill in all empty fields',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
