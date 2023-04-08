import '/auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/n_end_page_project/n_end_page_project_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_email_confirmation_project_model.dart';
export 'm_email_confirmation_project_model.dart';

class MEmailConfirmationProjectWidget extends StatefulWidget {
  const MEmailConfirmationProjectWidget({Key? key}) : super(key: key);

  @override
  _MEmailConfirmationProjectWidgetState createState() =>
      _MEmailConfirmationProjectWidgetState();
}

class _MEmailConfirmationProjectWidgetState
    extends State<MEmailConfirmationProjectWidget> {
  late MEmailConfirmationProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MEmailConfirmationProjectModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AuthUserStreamWidget(
      builder: (context) => StreamBuilder<List<ListingApplicationRecord>>(
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
              mEmailConfirmationProjectListingApplicationRecordList =
              snapshot.data!;
          final mEmailConfirmationProjectListingApplicationRecord =
              mEmailConfirmationProjectListingApplicationRecordList.isNotEmpty
                  ? mEmailConfirmationProjectListingApplicationRecordList.first
                  : null;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
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
                'Email',
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: StreamBuilder<List<ListingRecord>>(
              stream: queryListingRecord(
                queryBuilder: (listingRecord) => listingRecord.where('id',
                    isEqualTo:
                        mEmailConfirmationProjectListingApplicationRecord!
                            .listingID),
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
                List<ListingRecord> emaiMainContainerListingRecordList =
                    snapshot.data!;
                final emaiMainContainerListingRecord =
                    emaiMainContainerListingRecordList.isNotEmpty
                        ? emaiMainContainerListingRecordList.first
                        : null;
                return Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: Image.asset(
                        'assets/images/createAccount_BG@3x.jpg',
                      ).image,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: StreamBuilder<List<LoanApplicationRecord>>(
                    stream: queryLoanApplicationRecord(
                      queryBuilder: (loanApplicationRecord) =>
                          loanApplicationRecord.where('id',
                              isEqualTo:
                                  mEmailConfirmationProjectListingApplicationRecord!
                                      .loanApplicationID),
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
                      List<LoanApplicationRecord>
                          emailMainColumnLoanApplicationRecordList =
                          snapshot.data!;
                      final emailMainColumnLoanApplicationRecord =
                          emailMainColumnLoanApplicationRecordList.isNotEmpty
                              ? emailMainColumnLoanApplicationRecordList.first
                              : null;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: StreamBuilder<List<LoanRecord>>(
                                stream: queryLoanRecord(
                                  queryBuilder: (loanRecord) => loanRecord.where(
                                      'id',
                                      isEqualTo:
                                          emailMainColumnLoanApplicationRecord!
                                              .loanID),
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
                                  List<LoanRecord>
                                      emailContainerLoanRecordList =
                                      snapshot.data!;
                                  final emailContainerLoanRecord =
                                      emailContainerLoanRecordList.isNotEmpty
                                          ? emailContainerLoanRecordList.first
                                          : null;
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7.0,
                                          color: Color(0x4D090F13),
                                          offset: Offset(0.0, 3.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: StreamBuilder<
                                            List<LoanAgentRecord>>(
                                          stream: queryLoanAgentRecord(
                                            queryBuilder: (loanAgentRecord) =>
                                                loanAgentRecord.where('loginId',
                                                    isEqualTo:
                                                        emailMainColumnLoanApplicationRecord!
                                                            .loanAgentID),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<LoanAgentRecord>
                                                emailColumnLoanAgentRecordList =
                                                snapshot.data!;
                                            final emailColumnLoanAgentRecord =
                                                emailColumnLoanAgentRecordList
                                                        .isNotEmpty
                                                    ? emailColumnLoanAgentRecordList
                                                        .first
                                                    : null;
                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.78),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      170.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/email.png',
                                                            width: 180.0,
                                                            height: 180.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      140.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/dots_image.png',
                                                            width: 250.0,
                                                            height: 250.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      140.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/inner_circle_image.png',
                                                            width: 250.0,
                                                            height: 250.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      115.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/inner_circle_image.png',
                                                            width: 300.0,
                                                            height: 300.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 25.0,
                                                                0.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          25.0),
                                                              child: Text(
                                                                'Do you need an email confirmation?',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Urbanist',
                                                                      fontSize:
                                                                          22.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<RealtorAgentRecord>>(
                                                    stream:
                                                        queryRealtorAgentRecord(
                                                      queryBuilder: (realtorAgentRecord) =>
                                                          realtorAgentRecord.where(
                                                              'loginId',
                                                              isEqualTo:
                                                                  mEmailConfirmationProjectListingApplicationRecord!
                                                                      .realtorID),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<RealtorAgentRecord>
                                                          emailConfirmRowRealtorAgentRecordList =
                                                          snapshot.data!;
                                                      final emailConfirmRowRealtorAgentRecord =
                                                          emailConfirmRowRealtorAgentRecordList
                                                                  .isNotEmpty
                                                              ? emailConfirmRowRealtorAgentRecordList
                                                                  .first
                                                              : null;
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.35,
                                                                      0.0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      InteriorDesignerRecord>>(
                                                                stream:
                                                                    queryInteriorDesignerRecord(
                                                                  queryBuilder: (interiorDesignerRecord) => interiorDesignerRecord.where(
                                                                      'loginId',
                                                                      isEqualTo:
                                                                          mEmailConfirmationProjectListingApplicationRecord!
                                                                              .interiorDesignerID),
                                                                  singleRecord:
                                                                      true,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<InteriorDesignerRecord>
                                                                      yesButtonInteriorDesignerRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  final yesButtonInteriorDesignerRecord = yesButtonInteriorDesignerRecordList
                                                                          .isNotEmpty
                                                                      ? yesButtonInteriorDesignerRecordList
                                                                          .first
                                                                      : null;
                                                                  return FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (yesButtonInteriorDesignerRecord!
                                                                              .loginId !=
                                                                          '0') {
                                                                        if (emailConfirmRowRealtorAgentRecord!.loginId !=
                                                                            '0') {
                                                                          if (emailMainColumnLoanApplicationRecord!.loanAgentID !=
                                                                              '0') {
                                                                            _model.emailSentResponse =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              loanAgent: 'Loan Agent: ${emailColumnLoanAgentRecord!.name}',
                                                                              loanAgentCompany: 'Loan Agent Company: ${emailColumnLoanAgentRecord!.company}',
                                                                              loanAmount: 'Loan Amount: ${emailContainerLoanRecord!.principalAmount?.toString()}',
                                                                              mortgageTerm: 'Mortgage Term: ${emailContainerLoanRecord!.loanPeriodInMonths?.toString()}',
                                                                              realtorAgent: 'Realtor Agent: ${emailConfirmRowRealtorAgentRecord!.name}',
                                                                              realtorCompany: 'Realtor Company: ${emailConfirmRowRealtorAgentRecord!.company}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                              interiorAgent: 'Interior Designer: ${yesButtonInteriorDesignerRecord!.name}',
                                                                              interiorCompany: 'Interior Designer Company: ${yesButtonInteriorDesignerRecord!.company}',
                                                                            );
                                                                            if ((_model.emailSentResponse?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          } else {
                                                                            _model.emailSentResponse4 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              realtorAgent: 'Realtor Agent: ${emailConfirmRowRealtorAgentRecord!.name}',
                                                                              realtorCompany: 'Realtor Company: ${emailConfirmRowRealtorAgentRecord!.company}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                              interiorAgent: 'Interior Designer: ${yesButtonInteriorDesignerRecord!.name}',
                                                                              interiorCompany: 'Interior Designer Company: ${yesButtonInteriorDesignerRecord!.company}',
                                                                            );
                                                                            if ((_model.emailSentResponse4?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse4?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse4?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        } else {
                                                                          if (emailMainColumnLoanApplicationRecord!.loanAgentID !=
                                                                              '0') {
                                                                            _model.emailSentResponse3 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              loanAgent: 'Loan Agent: ${emailColumnLoanAgentRecord!.name}',
                                                                              loanAgentCompany: 'Loan Agent Company: ${emailColumnLoanAgentRecord!.company}',
                                                                              loanAmount: 'Loan Amount: ${emailContainerLoanRecord!.principalAmount?.toString()}',
                                                                              mortgageTerm: 'Mortgage Term: ${emailContainerLoanRecord!.loanPeriodInMonths?.toString()}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                              interiorAgent: 'Interior Designer: ${yesButtonInteriorDesignerRecord!.name}',
                                                                              interiorCompany: 'Interior Designer Company: ${yesButtonInteriorDesignerRecord!.company}',
                                                                            );
                                                                            if ((_model.emailSentResponse3?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse3?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse3?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          } else {
                                                                            _model.emailSentResponse5 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                              interiorAgent: 'Interior Designer: ${yesButtonInteriorDesignerRecord!.name}',
                                                                              interiorCompany: 'Interior Designer Company: ${yesButtonInteriorDesignerRecord!.company}',
                                                                            );
                                                                            if ((_model.emailSentResponse5?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse5?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse5?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        }
                                                                      } else {
                                                                        if (emailConfirmRowRealtorAgentRecord!.loginId !=
                                                                            '0') {
                                                                          if (emailMainColumnLoanApplicationRecord!.loanAgentID !=
                                                                              '0') {
                                                                            _model.emailSentResponse2 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              loanAgent: 'Loan Agent: ${emailColumnLoanAgentRecord!.name}',
                                                                              loanAgentCompany: 'Loan Agent Company: ${emailColumnLoanAgentRecord!.company}',
                                                                              loanAmount: 'Loan Amount: ${emailContainerLoanRecord!.principalAmount?.toString()}',
                                                                              mortgageTerm: 'Mortgage Term: ${emailContainerLoanRecord!.loanPeriodInMonths?.toString()}',
                                                                              realtorAgent: 'Realtor Agent: ${emailConfirmRowRealtorAgentRecord!.name}',
                                                                              realtorCompany: 'Realtor Company: ${emailConfirmRowRealtorAgentRecord!.company}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                            );
                                                                            if ((_model.emailSentResponse2?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse2?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse2?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          } else {
                                                                            _model.emailSentResponse7 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              realtorAgent: 'Realtor Agent: ${emailConfirmRowRealtorAgentRecord!.name}',
                                                                              realtorCompany: 'Realtor Company: ${emailConfirmRowRealtorAgentRecord!.company}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                            );
                                                                            if ((_model.emailSentResponse7?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse7?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse7?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        } else {
                                                                          if (emailMainColumnLoanApplicationRecord!.loanAgentID !=
                                                                              '0') {
                                                                            _model.emailSentResponse6 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              loanAgent: 'Loan Agent: ${emailColumnLoanAgentRecord!.name}',
                                                                              loanAgentCompany: 'Loan Agent Company: ${emailColumnLoanAgentRecord!.company}',
                                                                              loanAmount: 'Loan Amount: ${emailContainerLoanRecord!.principalAmount?.toString()}',
                                                                              mortgageTerm: 'Mortgage Term: ${emailContainerLoanRecord!.loanPeriodInMonths?.toString()}',
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                            );
                                                                            if ((_model.emailSentResponse6?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse6?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email not sent: ${(_model.emailSentResponse6?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          } else {
                                                                            _model.emailSentResponse8 =
                                                                                await SendEmailCall.call(
                                                                              toEmail: currentUserEmail,
                                                                              subject: '4EverHome Purchase: ${emaiMainContainerListingRecord!.listingName}',
                                                                              name: currentUserDisplayName,
                                                                              listingName: emaiMainContainerListingRecord!.listingName,
                                                                              addressName: emaiMainContainerListingRecord!.listingLocation.addressName,
                                                                              postalCode: emaiMainContainerListingRecord!.listingLocation.postalCode,
                                                                              listingType: emaiMainContainerListingRecord!.listingType,
                                                                              listingFloorNumber: emaiMainContainerListingRecord!.listingFloorNumber,
                                                                              listingUnitNumber: emaiMainContainerListingRecord!.listingUnitNumber,
                                                                              leaseDuration: emaiMainContainerListingRecord!.leaseDuration,
                                                                              waitingTime: emaiMainContainerListingRecord!.waitingTimeInMonths,
                                                                              listingID: emaiMainContainerListingRecord!.reference.id,
                                                                              propertyPrice: emaiMainContainerListingRecord!.propertyPrice,
                                                                              optionFees: emaiMainContainerListingRecord!.optionFeePrice,
                                                                              tax: emaiMainContainerListingRecord!.taxPrice,
                                                                              total: emaiMainContainerListingRecord!.totalPrice,
                                                                            );
                                                                            if ((_model.emailSentResponse8?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Email sent: ${(_model.emailSentResponse8?.statusCode ?? 200).toString()}',
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    (_model.emailSentResponse8?.statusCode ?? 200).toString(),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              );
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              NEndPageProjectWidget(),
                                                                        ),
                                                                      );

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text: 'Yes',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          130.0,
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .cultured,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Urbanist',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                      elevation:
                                                                          2.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.35,
                                                                      0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              NEndPageProjectWidget(),
                                                                    ),
                                                                  );
                                                                },
                                                                text: 'No',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .redApple,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Urbanist',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                  elevation:
                                                                      2.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
