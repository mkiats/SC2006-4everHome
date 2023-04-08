import '/actual_project/h3_2_loan_estimate_project/h32_loan_estimate_project_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'h31_calculate_loan_project_model.dart';
export 'h31_calculate_loan_project_model.dart';

class H31CalculateLoanProjectWidget extends StatefulWidget {
  const H31CalculateLoanProjectWidget({
    Key? key,
    this.selectedProperty,
  }) : super(key: key);

  final ListingRecord? selectedProperty;

  @override
  _H31CalculateLoanProjectWidgetState createState() =>
      _H31CalculateLoanProjectWidgetState();
}

class _H31CalculateLoanProjectWidgetState
    extends State<H31CalculateLoanProjectWidget> {
  late H31CalculateLoanProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => H31CalculateLoanProjectModel());

    _model.pageH21UserDownPaymentInputController ??= TextEditingController(
        text: valueOrDefault<String>(
      FFAppState().userDownPayment.toString(),
      '0',
    ));
    _model.pageH21UserInterestInputController ??= TextEditingController(
        text: valueOrDefault<String>(
      FFAppState().userInterest.toString(),
      '3.5',
    ));
    _model.pageH21UserTenureInputController ??= TextEditingController(
        text: valueOrDefault<String>(
      FFAppState().userLoanTenure.toString(),
      '20',
    ));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Calculate Loan',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineSmall,
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.83,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              widget.selectedProperty!.listingName!
                                  .maybeHandleOverflow(
                                maxChars: 90,
                                replacement: '…',
                              ),
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBE2E7),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: CachedNetworkImage(
                                          imageUrl: widget
                                              .selectedProperty!.listingImg!,
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: widget
                                            .selectedProperty!.listingImg!,
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: widget.selectedProperty!.listingImg!,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          widget.selectedProperty!.listingImg!,
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Property Price: S\$ ',
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                          Text(
                            formatNumber(
                              widget.selectedProperty!.propertyPrice!,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                            ),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 381.3,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 10.0, 24.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Down Payment\n(S\$)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: TextFormField(
                                          controller: _model
                                              .pageH21UserDownPaymentInputController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.pageH21UserDownPaymentInputController',
                                            Duration(milliseconds: 500),
                                            () async {
                                              if (_model.pageH21UserDownPaymentInputController
                                                          .text ==
                                                      null ||
                                                  _model.pageH21UserDownPaymentInputController
                                                          .text ==
                                                      '') {
                                                FFAppState().userLoanAmount =
                                                    widget.selectedProperty!
                                                        .propertyPrice!;
                                                FFAppState().userDownPayment =
                                                    0.0;
                                              } else {
                                                if (FFAppState()
                                                        .userDownPayment >=
                                                    0.0) {
                                                  setState(() {
                                                    FFAppState()
                                                            .userLoanAmount =
                                                        functions.calcuationLoanAmount(
                                                            double.parse(_model
                                                                .pageH21UserDownPaymentInputController
                                                                .text),
                                                            widget
                                                                .selectedProperty!
                                                                .propertyPrice!);
                                                    FFAppState()
                                                            .userDownPayment =
                                                        double.parse(_model
                                                            .pageH21UserDownPaymentInputController
                                                            .text);
                                                  });
                                                } else {
                                                  setState(() {
                                                    FFAppState()
                                                            .userLoanAmount =
                                                        widget.selectedProperty!
                                                            .propertyPrice!;
                                                    FFAppState()
                                                        .userDownPayment = 0.0;
                                                  });
                                                }
                                              }
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF060606),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 20.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          maxLines: null,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .pageH21UserDownPaymentInputControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 10.0, 24.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Loan Amount\n(S\$)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFF060606),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState().userLoanAmount =
                                                    FFAppState().userLoanAmount;
                                              });
                                            },
                                            child: AutoSizeText(
                                              functions
                                                  .calcuationLoanAmount(
                                                      double.parse(_model
                                                          .pageH21UserDownPaymentInputController
                                                          .text),
                                                      widget.selectedProperty!
                                                          .propertyPrice!)
                                                  .toString(),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 20.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 10.0, 24.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Annual Interest Rate (%)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: TextFormField(
                                          controller: _model
                                              .pageH21UserInterestInputController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.pageH21UserInterestInputController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              FFAppState().userInterest =
                                                  double.parse(_model
                                                      .pageH21UserInterestInputController
                                                      .text);
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF060606),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 20.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          maxLines: null,
                                          keyboardType: const TextInputType
                                                  .numberWithOptions(
                                              signed: true, decimal: true),
                                          validator: _model
                                              .pageH21UserInterestInputControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 10.0, 24.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Loan Tenure\n(Years)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: TextFormField(
                                          controller: _model
                                              .pageH21UserTenureInputController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.pageH21UserTenureInputController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              FFAppState().userLoanTenure =
                                                  double.parse(_model
                                                      .pageH21UserTenureInputController
                                                      .text);
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF060606),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 20.0,
                                              ),
                                          textAlign: TextAlign.center,
                                          maxLines: null,
                                          keyboardType: const TextInputType
                                                  .numberWithOptions(
                                              signed: true, decimal: true),
                                          validator: _model
                                              .pageH21UserTenureInputControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.95),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if ((_model.pageH21UserDownPaymentInputController.text != null && _model.pageH21UserDownPaymentInputController.text != '') &&
                                      (_model.pageH21UserInterestInputController.text !=
                                              null &&
                                          _model.pageH21UserInterestInputController
                                                  .text !=
                                              '') &&
                                      (_model.pageH21UserTenureInputController
                                                  .text !=
                                              null &&
                                          _model.pageH21UserTenureInputController
                                                  .text !=
                                              '') &&
                                      (_model.pageH21UserDownPaymentInputController.text !=
                                          '0') &&
                                      (_model
                                              .pageH21UserInterestInputController
                                              .text !=
                                          '0') &&
                                      (_model.pageH21UserTenureInputController
                                              .text !=
                                          '0') &&
                                      (FFAppState().userDownPayment >
                                          FFAppState().Zer0)) {
                                    await Future.delayed(
                                        const Duration(milliseconds: 1000));
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            H32LoanEstimateProjectWidget(
                                          listingLoanInfo:
                                              widget.selectedProperty,
                                        ),
                                      ),
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('INVALID FIELDS'),
                                          content: Text(
                                              'Null value detected in one or more fields, fill them up before proceeding....'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                text: 'Calculate now',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: double.infinity,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).cultured,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
