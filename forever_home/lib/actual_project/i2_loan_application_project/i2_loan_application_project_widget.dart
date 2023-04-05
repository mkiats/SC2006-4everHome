import '/actual_project/j1_realtor_assistance_project/j1_realtor_assistance_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i2_loan_application_project_model.dart';
export 'i2_loan_application_project_model.dart';

class I2LoanApplicationProjectWidget extends StatefulWidget {
  const I2LoanApplicationProjectWidget({Key? key}) : super(key: key);

  @override
  _I2LoanApplicationProjectWidgetState createState() =>
      _I2LoanApplicationProjectWidgetState();
}

class _I2LoanApplicationProjectWidgetState
    extends State<I2LoanApplicationProjectWidget> {
  late I2LoanApplicationProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I2LoanApplicationProjectModel());

    _model.loanAmountController ??= TextEditingController();
    _model.mortgageTermController ??= TextEditingController(text: 'Year');
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<InitialisationCounterRecord>>(
      stream: queryInitialisationCounterRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        List<InitialisationCounterRecord>
            i2LoanApplicationProjectInitialisationCounterRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final i2LoanApplicationProjectInitialisationCounterRecord =
            i2LoanApplicationProjectInitialisationCounterRecordList.isNotEmpty
                ? i2LoanApplicationProjectInitialisationCounterRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
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
              'Loan Application',
              style: FlutterFlowTheme.of(context).headlineSmall,
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: StreamBuilder<List<LoanAgentRecord>>(
              stream: queryLoanAgentRecord(
                queryBuilder: (loanAgentRecord) => loanAgentRecord
                    .where('company', isEqualTo: _model.radioButtonValue),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  );
                }
                List<LoanAgentRecord> loanApplicationColumnLoanAgentRecordList =
                    snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final loanApplicationColumnLoanAgentRecord =
                    loanApplicationColumnLoanAgentRecordList.isNotEmpty
                        ? loanApplicationColumnLoanAgentRecordList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Choose one of the available company',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: StreamBuilder<List<LoanAgentRecord>>(
                                      stream: queryLoanAgentRecord(
                                        queryBuilder: (loanAgentRecord) =>
                                            loanAgentRecord.where('loginId',
                                                isNotEqualTo: '0'),
                                        limit: 10,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<LoanAgentRecord>
                                            radioButtonLoanAgentRecordList =
                                            snapshot.data!;
                                        return FlutterFlowRadioButton(
                                          options:
                                              radioButtonLoanAgentRecordList
                                                  .map((e) => e.company)
                                                  .withoutNulls
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            _model.loanAgentID =
                                                loanApplicationColumnLoanAgentRecord!
                                                    .loginId;
                                          },
                                          controller: _model
                                                  .radioButtonController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 25.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Urbanist',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 15.0,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor: Colors.blue,
                                          inactiveRadioButtonColor:
                                              Color(0x8A000000),
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Loan Amount:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Urbanist',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 10.0, 10.0),
                                      child: TextFormField(
                                        controller: _model.loanAmountController,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'S\$',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          filled: true,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        textAlign: TextAlign.start,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .loanAmountControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(RegExp(
                                              '^(-?)(0|([1-9][0-9]*))(\\.[0-9]+)?\$'))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Mortgage Term:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 10.0, 10.0),
                                      child: TextFormField(
                                        controller:
                                            _model.mortgageTermController,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'S\$',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          filled: true,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        textAlign: TextAlign.start,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .mortgageTermControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STEP',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                '1/3',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                            ],
                          ),
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<ListingApplicationRecord>>(
                              stream: queryListingApplicationRecord(
                                queryBuilder: (listingApplicationRecord) =>
                                    listingApplicationRecord.where('ID',
                                        isEqualTo: valueOrDefault(
                                            currentUserDocument
                                                ?.listingApplicationID,
                                            0)),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<ListingApplicationRecord>
                                    confirmButtonListingApplicationRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final confirmButtonListingApplicationRecord =
                                    confirmButtonListingApplicationRecordList
                                            .isNotEmpty
                                        ? confirmButtonListingApplicationRecordList
                                            .first
                                        : null;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    if ((_model.loanAmountController.text !=
                                                null &&
                                            _model.loanAmountController.text !=
                                                '') &&
                                        (_model.mortgageTermController.text !=
                                                null &&
                                            _model.mortgageTermController
                                                    .text !=
                                                '')) {
                                      if (functions.withinRange(
                                          functions.textToDouble(
                                              _model.loanAmountController.text),
                                          5000000.0,
                                          0.0)) {
                                        if (functions.withinRange(
                                            functions.textToDouble(_model
                                                .mortgageTermController.text),
                                            30.0,
                                            5.0)) {
                                          // CreateLoan

                                          final loanCreateData =
                                              createLoanRecordData(
                                            principalAmount: double.tryParse(
                                                _model
                                                    .loanAmountController.text),
                                            loanPeriodInMonths: int.tryParse(
                                                _model.mortgageTermController
                                                    .text),
                                            id: functions
                                                .listingApplicationIncrement(
                                                    i2LoanApplicationProjectInitialisationCounterRecord!
                                                        .loan!),
                                          );
                                          var loanRecordReference =
                                              LoanRecord.collection.doc();
                                          await loanRecordReference
                                              .set(loanCreateData);
                                          _model.loanOutput =
                                              LoanRecord.getDocumentFromData(
                                                  loanCreateData,
                                                  loanRecordReference);
                                          // CreateLoanApplication

                                          final loanApplicationCreateData =
                                              createLoanApplicationRecordData(
                                            loanID: _model.loanOutput!.id,
                                            id: functions
                                                .listingApplicationIncrement(
                                                    i2LoanApplicationProjectInitialisationCounterRecord!
                                                        .loanApplication!),
                                            loanAgentID:
                                                loanApplicationColumnLoanAgentRecord!
                                                    .loginId,
                                          );
                                          var loanApplicationRecordReference =
                                              LoanApplicationRecord.collection
                                                  .doc();
                                          await loanApplicationRecordReference
                                              .set(loanApplicationCreateData);
                                          _model.loanApplicationOutput =
                                              LoanApplicationRecord
                                                  .getDocumentFromData(
                                                      loanApplicationCreateData,
                                                      loanApplicationRecordReference);
                                          // UpdateLoanApplication

                                          final listingApplicationUpdateData =
                                              createListingApplicationRecordData(
                                            loanApplicationID: _model
                                                .loanApplicationOutput!.id,
                                          );
                                          await confirmButtonListingApplicationRecord!
                                              .reference
                                              .update(
                                                  listingApplicationUpdateData);
                                          // UpdateCounter

                                          final initialisationCounterUpdateData =
                                              {
                                            'Loan': FieldValue.increment(1),
                                            'LoanApplication':
                                                FieldValue.increment(1),
                                          };
                                          await i2LoanApplicationProjectInitialisationCounterRecord!
                                              .reference
                                              .update(
                                                  initialisationCounterUpdateData);
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  J1RealtorAssistanceProjectWidget(),
                                            ),
                                          );
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text(
                                                    'Mortgage Term is not within range'),
                                                content: Text(
                                                    'Mortgage term should be more than 5 and less than 30 years'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(
                                                  'Loan is not within range'),
                                              content: Text(
                                                  'Loan values should be more than 0 and less than 5 million'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Blank fields'),
                                            content: Text(
                                                'Please fill up all relevant fields.'),
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

                                    setState(() {});
                                  },
                                  text: 'Confirm Loan',
                                  options: FFButtonOptions(
                                    width: 200.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).cultured,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
