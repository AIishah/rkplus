import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_model.dart';
export 'forgot_password_model.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  late ForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).grayLight,
            size: 32.0,
          ),
        ),
        title: Text(
          'راهنمای ورود به اپلیکیشن',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'iransans',
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/page_bg_transparent@2x.png',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'رنگین کمانی عزیز، سلام\n\nدر ابتدا باید خاطر نشان کرد که این اپلیکیشن فقط مختص اولیا مهد هوشمند رنگین کمان کرمان می باشد و عموم تنها میتوانند نسخه ساده ی این اپلیکیشن را نصب نمایند.\n\nنکته: با توجه به اینکه در این اپلیکیشن ، پیامرسان و شبکه اجتماعی اختصاصی رنگین کمان تعبیه شده اند، و از آنجا که زیرساخت این دو در خارج از کشور هستند؛ برای ورود نیازمند استفاده از vpn یا تحریم شکن میباشیم، در صورتیکه روی گوشی شما هیچ کدام از این برنامه ها موجود نیست، میتوانید نسخه ی ساده اپلیکیشن را استفاده نمائید.\n\nاما در صورتیکه تمایل به استفاده از همین اپلیکیشن را دارید و نیاز به راهنمایی یا رفع مشکل هستید به شماره 09920833310 پیامک ارسال نمائید.\n\n\nمهد هوشمند رنگین کمان کرمان',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'vazir',
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
