import '/actual_project/k2_id_app_project/k2_id_app_project_widget.dart';
import '/actual_project/l_summary_project/l_summary_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'k1_id_assistance_project_model.dart';
export 'k1_id_assistance_project_model.dart';

class K1IdAssistanceProjectWidget extends StatefulWidget {
  const K1IdAssistanceProjectWidget({Key? key}) : super(key: key);

  @override
  _K1IdAssistanceProjectWidgetState createState() =>
      _K1IdAssistanceProjectWidgetState();
}

class _K1IdAssistanceProjectWidgetState
    extends State<K1IdAssistanceProjectWidget> {
  late K1IdAssistanceProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => K1IdAssistanceProjectModel());
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
              k1IdAssistanceProjectListingApplicationRecordList =
              snapshot.data!;
          final k1IdAssistanceProjectListingApplicationRecord =
              k1IdAssistanceProjectListingApplicationRecordList.isNotEmpty
                  ? k1IdAssistanceProjectListingApplicationRecordList.first
                  : null;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFF4B39EF),
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
                'Interior Designer Assistance',
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: Image.asset(
                    'assets/images/createAccount_BG@3x.jpg',
                  ).image,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.78),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 170.0, 0.0, 0.0),
                                          child: Image.asset(
                                            'assets/images/id_assistance_image.png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 140.0, 0.0, 0.0),
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 140.0, 0.0, 0.0),
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 115.0, 0.0, 0.0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 25.0),
                                              child: Text(
                                                'Do you require assistance for finding an interior designer?',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontSize: 22.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -0.35, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        K2IdAppProjectWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Yes',
                                              options: FFButtonOptions(
                                                width: 130.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .cultured,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Urbanist',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.35, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final listingApplicationUpdateData =
                                                    createListingApplicationRecordData(
                                                  interiorDesignerID: '0',
                                                );
                                                await k1IdAssistanceProjectListingApplicationRecord!
                                                    .reference
                                                    .update(
                                                        listingApplicationUpdateData);
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        LSummaryProjectWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'No',
                                              options: FFButtonOptions(
                                                width: 130.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .redApple,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Urbanist',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
