import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'policy_model.dart';
export 'policy_model.dart';

class PolicyWidget extends StatefulWidget {
  const PolicyWidget({
    Key? key,
    this.userProfile,
  }) : super(key: key);

  final DocumentReference? userProfile;

  @override
  _PolicyWidgetState createState() => _PolicyWidgetState();
}

class _PolicyWidgetState extends State<PolicyWidget> {
  late PolicyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PolicyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3.0,
          sigmaY: 3.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xD60E151B),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 698.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: StreamBuilder<UsersRecord>(
                    stream: UsersRecord.getDocument(currentUserReference!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: SpinKitCircle(
                              color: Color(0xFFFFAA00),
                              size: 40.0,
                            ),
                          ),
                        );
                      }
                      final columnUsersRecord = snapshot.data!;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 3.0,
                              indent: 150.0,
                              endIndent: 150.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                'خط مشی رازداری و سیاست حریم خصوصی',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'iranyekan',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w800,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'مهد هوشمند رنگین کمان کرمان ، از اردیبهشت ماه سال 1394 با آغاز فعالیت در شهرک هشت بهشت کرمان؛ با هدف آموزش و تربیت تخصصی دلبندان و عزیزان شما، با روش بین المللی مونته سوری - گاردنر و با یاری و مدد خداوند متعال آغاز به کار نموده و اکنون با قدمتی بیش از 8 سال و تجربه ای که بیش از 34 سال در راه تعلیم و تربیت در آموزش و پرورش کسب نموده، در تلاش است  فن آوری و نوآوری را با آموزش تلفیق کرده تا اولین و مهمترین پله ی آموزشی دلبندان شما را به بهترین شکل و بالاترین کیفیت بسازد.\nهمچنین به استحضار میرساند، تمامی فن آوری ها و نوآوری ها و مجموعه فعالیت های دیجیتالی که در مهد هوشمند رنگین کمان وجود دارد، به سفارش مرکز مستقل پیش دبستانی رنگین کمان کرمان بوده است و تمامی آنها نظیر اپلیکیشن، شبکه های اختصاصی، هوش مصنوعی، پخش زنده، حضورغیاب هوشمند، آموزش برنامه نویسی و ....  توسط متخصصان ایرانی تولید شده اند.\nدر ضمن تمامی فعالیت ها و عناوین این مهد به ثبت رسیده اند و هر گونه کپی برداری و سواستفاده و یا مصادره به مطلوب، به هر شکل که انجام شود ، بدون اطلاع قبلی ، فرد یا مجموعه خاطی تحت پیگرد قانونی خواهد گرفت.\n\nاز والدین محترم مهد نیز تقاضا داریم تا با توجه به قوانین و مقررات مهد و نیز الزام تعهد به خط مشی رازداری این مرکز و همچنین با توجه به موازین اخلاقی و شرعی؛ از هر گونه افشا، نشر، ارائه و انتقال اطلاعات سازمانی،ساختاری، محتوایی و سیاست کاری این مرکز به سایرین تحت هر گونه شرایطی خود داری نمایند.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'vazir',
                                            fontSize: 14.0,
                                            useGoogleFonts: false,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pop();
                                    },
                                    text: 'بستن',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'vazir',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
