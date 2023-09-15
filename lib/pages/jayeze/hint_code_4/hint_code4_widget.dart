import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hint_code4_model.dart';
export 'hint_code4_model.dart';

class HintCode4Widget extends StatefulWidget {
  const HintCode4Widget({Key? key}) : super(key: key);

  @override
  _HintCode4WidgetState createState() => _HintCode4WidgetState();
}

class _HintCode4WidgetState extends State<HintCode4Widget> {
  late HintCode4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HintCode4Model());
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
        backgroundColor: Color(0xFFF65700),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('homePage1');
                          },
                          child: Text(
                            'میبینم که راهنمایی میخوای🧐',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'vazir',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 32.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 12.0, 4.0, 20.0),
                  child: Text(
                    'برای اینکه رمز رو پیدا کنی ، باید جواب معما ها رو پیدا کنی؛ تعداد حروف جواب هر معما میشه اون عددی که باید در جای مناسب وارد کنی! ، مثلا اگر جواب معمای رقم اول بشه «سواد» ، یعنی رقم اول 4 هست!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'iranyekan',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                StyledDivider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).warning,
                  lineStyle: DividerLineStyle.dashed,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 20.0, 4.0, 0.0),
                  child: Text(
                    'ببین این قفل، چهار رقم داره به ترتیب،  هر رقم میشه تعداد حروف جواب هر معما.\n \nمعمای رقم اول:   تاپایان عمرم به تو خدمت میکنم، سریعم وقتی که لاغرم - آهسته و کندم وقتی که چاقم، من چی هستم؟\n\nمعمای رقم دوم:  اون چیه که خدا یکی داره اما بنده دوتا داره؟\n\nمعمای رقم سوم:  من یک موجود باستانی هستم که اغلب مورد تعریف و تمجید قرار میگیرم ، هنر و دانش و داستان رو در طول تاریخ زنده کرده ام ، زیاد بزرگ نیستم اما دنیایی دارایی دارم\n\n\nمعمای رقم چهارم:    من رو از معدن به دست می آورند و درون یک زندان چوبی قرار میدهند که هیچ گاه از آن آزاد نخواهم شد\n',
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
                      context.pushNamed('Pinpage');
                    },
                    text: '  بریم رمز رو وارد کنیم  ',
                    options: FFButtonOptions(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 12.0, 4.0, 20.0),
                  child: Text(
                    'قبل از اینکه بری رمز رو وارد کنی،  حواست باشه که رمزی رو که وارد میکنی رو از راست به چپ بخونش ، مثلا اگر رمز 1234 به دست اومد ، تو به ترتیب وارد کن ولی اون چیزی که در نهایت نمایش داده میشه 4321 هست و اشکال نداره چرا که باید از راست بخونیش\n\nاگه نفهمیدی چی گفتم، هر رمزی رو که به دست آوردی یه بار همونو وارد کن ، یه بار هم از آخر به اول واردش کن!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'iranyekan',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w800,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
