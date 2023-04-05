import '/actual_project/i1_loan_assistance_project/i1_loan_assistance_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h22_loan_estimate_project_model.dart';
export 'h22_loan_estimate_project_model.dart';

class H22LoanEstimateProjectWidget extends StatefulWidget {
  const H22LoanEstimateProjectWidget({
    Key? key,
    this.listingLoanInfo,
  }) : super(key: key);

  final ListingRecord? listingLoanInfo;

  @override
  _H22LoanEstimateProjectWidgetState createState() =>
      _H22LoanEstimateProjectWidgetState();
}

class _H22LoanEstimateProjectWidgetState
    extends State<H22LoanEstimateProjectWidget> {
  late H22LoanEstimateProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => H22LoanEstimateProjectModel());
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
          'Loan Estimates',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<ListingRecord>>(
                          stream: queryListingRecord(
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
                            List<ListingRecord>
                                pageH22PropertyNameListingRecordList =
                                snapshot.data!;
                            final pageH22PropertyNameListingRecord =
                                pageH22PropertyNameListingRecordList.isNotEmpty
                                    ? pageH22PropertyNameListingRecordList.first
                                    : null;
                            return Text(
                              widget.listingLoanInfo!.listingName!
                                  .maybeHandleOverflow(
                                maxChars: 90,
                                replacement: '…',
                              ),
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                          child: StreamBuilder<List<ListingRecord>>(
                            stream: queryListingRecord(
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                );
                              }
                              List<ListingRecord>
                                  pageH22PropertyImageListingRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final pageH22PropertyImageListingRecord =
                                  pageH22PropertyImageListingRecordList
                                          .isNotEmpty
                                      ? pageH22PropertyImageListingRecordList
                                          .first
                                      : null;
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: CachedNetworkImage(
                                  imageUrl: widget.listingLoanInfo!.listingImg!,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Property Price: ',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      StreamBuilder<List<ListingRecord>>(
                        stream: queryListingRecord(
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
                          List<ListingRecord>
                              pageH22PropertyPriceListingRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final pageH22PropertyPriceListingRecord =
                              pageH22PropertyPriceListingRecordList.isNotEmpty
                                  ? pageH22PropertyPriceListingRecordList.first
                                  : null;
                          return Text(
                            formatNumber(
                              widget.listingLoanInfo!.propertyPrice!,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                              currency: 'S\$',
                            ),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Loan Amount is ',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      StreamBuilder<List<ListingRecord>>(
                        stream: queryListingRecord(
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
                          List<ListingRecord>
                              pageH22LoanAmountListingRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final pageH22LoanAmountListingRecord =
                              pageH22LoanAmountListingRecordList.isNotEmpty
                                  ? pageH22LoanAmountListingRecordList.first
                                  : null;
                          return Text(
                            formatNumber(
                              FFAppState().userLoanAmount,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                              currency: 'S\$',
                            ),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Interest Rate is ',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      StreamBuilder<List<ListingRecord>>(
                        stream: queryListingRecord(
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
                          List<ListingRecord>
                              pageH22InterestRateListingRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final pageH22InterestRateListingRecord =
                              pageH22InterestRateListingRecordList.isNotEmpty
                                  ? pageH22InterestRateListingRecordList.first
                                  : null;
                          return Text(
                            FFAppState().userInterest.toString(),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          );
                        },
                      ),
                      Text(
                        '%',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Loan Tenure is ',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      StreamBuilder<List<ListingRecord>>(
                        stream: queryListingRecord(
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
                          List<ListingRecord>
                              pageH22LoanTenureListingRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final pageH22LoanTenureListingRecord =
                              pageH22LoanTenureListingRecordList.isNotEmpty
                                  ? pageH22LoanTenureListingRecordList.first
                                  : null;
                          return Text(
                            FFAppState().userLoanTenure.toString(),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          );
                        },
                      ),
                      Text(
                        ' years',
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Text(
                    'Here are your estimated loan details:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Urbanist',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Estimated Monthly Installment',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).gray600,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                formatNumber(
                                  functions.calculateMonthlyInstallment(
                                      FFAppState().userLoanTenure,
                                      FFAppState().userInterest,
                                      FFAppState().userLoanAmount),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                  currency: 'S\$',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).dark600,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 16.0, 24.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Estimated Total Interest Payable',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  formatNumber(
                                    functions.calculateTotalInterest(
                                        FFAppState().userInterest,
                                        FFAppState().userLoanTenure,
                                        FFAppState().userLoanAmount),
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                    currency: 'S\$',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .dark600,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 16.0, 24.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Estimated Total Payable',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  formatNumber(
                                    functions.calculateTotalCost(
                                        FFAppState().userInterest,
                                        FFAppState().userLoanTenure,
                                        FFAppState().userLoanAmount,
                                        FFAppState().userDownPayment),
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                    currency: 'S\$',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .dark600,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: AuthUserStreamWidget(
                builder: (context) =>
                    StreamBuilder<List<ListingApplicationRecord>>(
                  stream: queryListingApplicationRecord(
                    queryBuilder: (listingApplicationRecord) =>
                        listingApplicationRecord.where('ID',
                            isEqualTo: valueOrDefault(
                                currentUserDocument?.listingApplicationID, 0)),
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
                    List<ListingApplicationRecord>
                        pageH22NextPageButtonListingApplicationRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final pageH22NextPageButtonListingApplicationRecord =
                        pageH22NextPageButtonListingApplicationRecordList
                                .isNotEmpty
                            ? pageH22NextPageButtonListingApplicationRecordList
                                .first
                            : null;
                    return FFButtonWidget(
                      onPressed: () async {
                        final listingApplicationUpdateData =
                            createListingApplicationRecordData(
                          listingID: widget.listingLoanInfo!.id,
                        );
                        await pageH22NextPageButtonListingApplicationRecord!
                            .reference
                            .update(listingApplicationUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                I1LoanAssistanceProjectWidget(),
                          ),
                        );
                      },
                      text: 'Make purchase',
                      options: FFButtonOptions(
                        width: 192.8,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).cultured,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Urbanist',
                              color: FlutterFlowTheme.of(context).primaryText,
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
            ),
          ),
        ],
      ),
    );
  }
}
