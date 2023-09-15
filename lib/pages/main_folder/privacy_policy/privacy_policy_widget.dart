import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
              context.pop();
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'سیاست خط مشی رازداری',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'iranyekan',
                    fontWeight: FontWeight.w900,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 15.0),
                              child: Container(
                                width: double.infinity,
                                height: 300.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 5.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/images/splash4.jpg',
                                      width: double.infinity,
                                      height: 59.0,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 12.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 8.0, 10.0, 12.0),
                        child: Text(
                          'مهد هوشمند رنگین کمان کرمان ، از اردیبهشت ماه سال 1394 با آغاز فعالیت در شهرک هشت بهشت کرمان؛ با هدف آموزش و تربیت تخصصی دلبندان و عزیزان شما، با روش بین المللی مونته سوری - گاردنر و با یاری و مدد خداوند متعال آغاز به کار نموده و اکنون با قدمتی بیش از 8 سال و تجربه ای که بیش از 34 سال در راه تعلیم و تربیت در آموزش و پرورش کسب نموده، در تلاش است  فن آوری و نوآوری را با آموزش تلفیق کرده تا اولین و مهمترین پله ی آموزشی دلبندان شما را به بهترین شکل و بالاترین کیفیت بسازد.\nهمچنین به استحضار میرساند، تمامی فن آوری ها و نوآوری ها و مجموعه فعالیت های دیجیتالی که در مهد هوشمند رنگین کمان وجود دارد، به سفارش مرکز مستقل پیش دبستانی رنگین کمان کرمان بوده است و تمامی آنها نظیر اپلیکیشن، شبکه های اختصاصی، هوش مصنوعی، پخش زنده، حضورغیاب هوشمند، آموزش برنامه نویسی و ....  توسط متخصصان ایرانی تولید شده اند.\nدر ضمن تمامی فعالیت ها و عناوین این مهد به ثبت رسیده اند و هر گونه کپی برداری و سواستفاده و یا مصادره به مطلوب، به هر شکل که انجام شود ، بدون اطلاع قبلی ، فرد یا مجموعه خاطی تحت پیگرد قانونی خواهد گرفت.\n\nاز والدین محترم مهد نیز تقاضا داریم تا با توجه به قوانین و مقررات مهد و نیز الزام خط مشی رازداری و همچنین با توجه به موازین اخلاقی و شرعی؛ از هر گونه افشا، نشر، ارائه و انتقال اطلاعات سازمانی،ساختاری، محتوایی و سیاست کاری این مرکز به سایرین تحت هر گونه شرایطی خود داری نمایند.\n',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'iransans',
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            32.0, 8.0, 32.0, 44.0),
                        child: Text(
                          'طراحی و تولید  : تیم کد نویسی مهد هوشمند رنگین کمان',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'vazir',
                                    color: Color(0x35FFFFFF),
                                    useGoogleFonts: false,
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
      ),
    );
  }
}
