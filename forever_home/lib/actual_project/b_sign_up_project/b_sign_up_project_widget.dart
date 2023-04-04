import '/actual_project/a_login_page_project/a_login_page_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_sign_up_project_model.dart';
export 'b_sign_up_project_model.dart';

class BSignUpProjectWidget extends StatefulWidget {
  const BSignUpProjectWidget({Key? key}) : super(key: key);

  @override
  _BSignUpProjectWidgetState createState() => _BSignUpProjectWidgetState();
}

class _BSignUpProjectWidgetState extends State<BSignUpProjectWidget> {
  late BSignUpProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BSignUpProjectModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.confirmPasswordController ??= TextEditingController();
    _model.displayNameController ??= TextEditingController();
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
      backgroundColor: FlutterFlowTheme.of(context).primary,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Sign Up Page',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Urbanist',
                  color: Color(0xFF0A0000),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.91,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7.0,
                    color: Color(0x4D090F13),
                    offset: Offset(0.0, 3.0),
                  )
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/condominium4.jpg',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                60.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Let\'s get you started',
                              style: FlutterFlowTheme.of(context).displaySmall,
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
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.emailAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Enter your email here...',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).lineGray,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 0.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodySmall,
                                validator: _model
                                    .emailAddressControllerValidator
                                    .asValidator(context),
                              ),
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
                          Expanded(
                            child: TextFormField(
                              controller: _model.passwordController,
                              obscureText: !_model.passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Enter your password here...',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).lineGray,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 24.0, 24.0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.passwordVisibility =
                                        !_model.passwordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF95A1AC),
                                    size: 22.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodySmall,
                              validator: _model.passwordControllerValidator
                                  .asValidator(context),
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
                          Expanded(
                            child: TextFormField(
                              controller: _model.confirmPasswordController,
                              obscureText: !_model.confirmPasswordVisibility,
                              decoration: InputDecoration(
                                labelText: 'ConfirmPassword',
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Re-enter your password here...',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).lineGray,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 24.0, 24.0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.confirmPasswordVisibility =
                                        !_model.confirmPasswordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.confirmPasswordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF95A1AC),
                                    size: 22.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodySmall,
                              validator: _model
                                  .confirmPasswordControllerValidator
                                  .asValidator(context),
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
                          Expanded(
                            child: TextFormField(
                              controller: _model.displayNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'DisplayName',
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Enter your name here...',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).lineGray,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 24.0, 24.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodySmall,
                              validator: _model.displayNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 12.0, 4.0, 0.0),
                            child: StreamBuilder<
                                List<InitialisationCounterRecord>>(
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<InitialisationCounterRecord>
                                    buttonResigsterInitialisationCounterRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final buttonResigsterInitialisationCounterRecord =
                                    buttonResigsterInitialisationCounterRecordList
                                            .isNotEmpty
                                        ? buttonResigsterInitialisationCounterRecordList
                                            .first
                                        : null;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    // CreateListingApplication

                                    final listingApplicationCreateData =
                                        createListingApplicationRecordData(
                                      id: functions.listingApplicationIncrement(
                                          buttonResigsterInitialisationCounterRecord!
                                              .listingApplication!),
                                    );
                                    var listingApplicationRecordReference =
                                        ListingApplicationRecord.collection
                                            .doc();
                                    await listingApplicationRecordReference
                                        .set(listingApplicationCreateData);
                                    _model.listingApplication =
                                        ListingApplicationRecord
                                            .getDocumentFromData(
                                                listingApplicationCreateData,
                                                listingApplicationRecordReference);
                                    if (_model.passwordController.text !=
                                        _model.confirmPasswordController.text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Passwords don\'t match!',
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    final user = await createAccountWithEmail(
                                      context,
                                      _model.emailAddressController.text,
                                      _model.passwordController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    final userCreateData = {
                                      ...createUserRecordData(
                                        email:
                                            _model.emailAddressController.text,
                                        displayName:
                                            _model.displayNameController.text,
                                        uid: functions
                                            .listingApplicationIncrement(
                                                buttonResigsterInitialisationCounterRecord
                                                    .user!)
                                            .toString(),
                                        accountType: 'User',
                                        listingApplicationID:
                                            _model.listingApplication!.id,
                                        password:
                                            _model.passwordController.text,
                                      ),
                                      'created_time':
                                          FieldValue.serverTimestamp(),
                                    };
                                    await UserRecord.collection
                                        .doc(user.uid)
                                        .update(userCreateData);

                                    // UpdateCounter

                                    final initialisationCounterUpdateData = {
                                      'ListingApplication':
                                          FieldValue.increment(1),
                                      'User': FieldValue.increment(1),
                                    };
                                    await buttonResigsterInitialisationCounterRecord
                                        .reference
                                        .update(
                                            initialisationCounterUpdateData);
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ALoginPageProjectWidget(),
                                      ),
                                    );

                                    setState(() {});
                                  },
                                  text: 'Register',
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).cultured,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
