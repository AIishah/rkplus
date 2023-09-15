import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'hidden_gift_model.dart';
export 'hidden_gift_model.dart';

class HiddenGiftWidget extends StatefulWidget {
  const HiddenGiftWidget({Key? key}) : super(key: key);

  @override
  _HiddenGiftWidgetState createState() => _HiddenGiftWidgetState();
}

class _HiddenGiftWidgetState extends State<HiddenGiftWidget> {
  late HiddenGiftModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HiddenGiftModel());
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
        backgroundColor: Color(0x00065700),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://lottie.host/2bcd1721-6835-4cfa-9149-62d1c9be9e54/hZ7IZSpZUU.json',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                      frameRate: FrameRate(60.0),
                      reverse: true,
                      animate: true,
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('homePage1');
                },
                child: Text(
                  'هورااااا !!!!',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'vazir',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 32.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  'میبینم که بلاخره تونستی قفل رو بشکنی و جایزه رو ببری!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'vazir',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 35.0, 25.0, 0.0),
                child: Text(
                  'از این صفحه یه اسکرین شات بگیر سریع و ارسال کن برای 09138630969 ، داخل ایتا بفرستیا',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'capsule',
                        color: FlutterFlowTheme.of(context).error,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'homePage1',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                        ),
                      },
                    );
                  },
                  text: 'بازگشت به صفحه اصلی',
                  options: FFButtonOptions(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'iranyekan',
                          color: Color(0xFFFF0004),
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
