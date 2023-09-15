import '/components/eroor_page_g_ift/eroor_page_g_ift_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'gift_page_model.dart';
export 'gift_page_model.dart';

class GiftPageWidget extends StatefulWidget {
  const GiftPageWidget({Key? key}) : super(key: key);

  @override
  _GiftPageWidgetState createState() => _GiftPageWidgetState();
}

class _GiftPageWidgetState extends State<GiftPageWidget> {
  late GiftPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GiftPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).success,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/699cdfdc-c33f-474f-b050-6254062bdc99/p96BBfexxl.json',
                width: 200.0,
                height: 162.0,
                fit: BoxFit.cover,
                reverse: true,
                animate: true,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('homePage1');
                      },
                      child: Text(
                        'میبینم جایزه نقدی میخوای😉',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'vazir',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 32.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 20.0),
                child: Text(
                  'اینجا راهنمایی نداره، فقط باید فکر کنی که ما داشتیم به چه رمزی مرتبط با مهد رنگین کمان فکر میکردیم!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'vazir',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              PinCodeTextField(
                autoDisposeControllers: false,
                appContext: context,
                length: 6,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'iranyekan',
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                enableActiveFill: true,
                autoFocus: true,
                enablePinAutofill: false,
                errorTextSpace: 16.0,
                showCursor: true,
                cursorColor: FlutterFlowTheme.of(context).primaryBtnText,
                obscureText: false,
                hintCharacter: '-',
                keyboardType: TextInputType.visiblePassword,
                pinTheme: PinTheme(
                  fieldHeight: 44.0,
                  fieldWidth: 44.0,
                  borderWidth: 2.0,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: PinCodeFieldShape.circle,
                  activeColor: FlutterFlowTheme.of(context).tertiary,
                  inactiveColor: FlutterFlowTheme.of(context).tertiary,
                  selectedColor: FlutterFlowTheme.of(context).error,
                  activeFillColor: FlutterFlowTheme.of(context).tertiary,
                  inactiveFillColor: FlutterFlowTheme.of(context).tertiary,
                  selectedFillColor: FlutterFlowTheme.of(context).error,
                ),
                controller: _model.pinCodeController,
                onChanged: (_) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:
                    _model.pinCodeControllerValidator.asValidator(context),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'وارد که کردی، بزن روی دکمه زیر',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'vazir',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (_model.pinCodeController!.text == 'RKMAHD') {
                      context.pushNamed('HiddenGift');
                    } else {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: EroorPageGIftWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    }
                  },
                  text: ' برسی رمز وارد شده ',
                  options: FFButtonOptions(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'iranyekan',
                          color: FlutterFlowTheme.of(context).darkBackground,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('homePage1');
                  },
                  text: ' بیخیال بابا ',
                  options: FFButtonOptions(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'iranyekan',
                          color: FlutterFlowTheme.of(context).error,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
