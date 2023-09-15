import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'koodak_hooshmand_model.dart';
export 'koodak_hooshmand_model.dart';

class KoodakHooshmandWidget extends StatefulWidget {
  const KoodakHooshmandWidget({Key? key}) : super(key: key);

  @override
  _KoodakHooshmandWidgetState createState() => _KoodakHooshmandWidgetState();
}

class _KoodakHooshmandWidgetState extends State<KoodakHooshmandWidget> {
  late KoodakHooshmandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KoodakHooshmandModel());
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).success,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'کودک هوشمند',
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'iranyekan',
                color: Colors.white,
                fontWeight: FontWeight.w900,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).success,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x32171717),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'این قسمت از اپلیکیشن «رنگین مهد» ، ویژه شما مادر و پدر نازنین رنگین کمانی هست و آموزشی برای تربیت صحیح و بهتره\nپس ازت خواهش میکنیم که نذار دلبندمون ، کوچولوی رنگین کمان به این بخش دسترسی داشته باشه!',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'vazir',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 8.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 4.0, 0.0),
                                    child: Text(
                                      'ویژه اولیای هوشمهد رنگین کمان',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'vazir',
                                            color: Color(0xB3FFFFFF),
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: false,
                                          ),
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
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        'همیشه رنگین کمانی بمون!',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'vazir',
                                  useGoogleFonts: false,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        'RKMAHD',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'vazir',
                                  useGoogleFonts: false,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://d3ctxlq1ktw2nl.cloudfront.net/staging/2021-2-24/b79a9188-89c2-265a-c4fb-3aa3050b969c.mp3',
                                metas: Metas(
                                  id: 'b79a9188-89c2-265a-c4fb-3aa3050b969c.mp3-9a56b8fe',
                                  title: 'بهتر بودن عزت نفس',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net//008/Farsi/34/Podcast/1398/34-padkast-razetarbiat.mp3',
                                metas: Metas(
                                  id: '34-padkast-razetarbiat.mp3-b8742176',
                                  title: 'راز تربیت کودکان 7 تا 14 سال',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/34/Podcast/1398/34-padkast-koodak.mp3',
                                metas: Metas(
                                  id: '34-padkast-koodak.mp3-c4d3f9d7',
                                  title: 'تربیت کودک - مقام معظم رهبری',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/hemmati/14-porseman-136.Mp3',
                                metas: Metas(
                                  id: '14-porseman-136.Mp3-da219969',
                                  title: 'طرد کردن کودک ممنوع',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/hemmati/14-porseman-3.Mp3',
                                metas: Metas(
                                  id: '14-porseman-3.Mp3-fb3c20e2',
                                  title: 'جریان همانند سازی کودک',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/hemmati/14-porseman-47.Mp3',
                                metas: Metas(
                                  id: '14-porseman-47.Mp3-72db85d7',
                                  title: 'سن آموزش کودکان',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/hemmati/14-porseman-114.Mp3',
                                metas: Metas(
                                  id: '14-porseman-114.Mp3-58a0f362',
                                  title: 'بصیرت افزایی کودکان',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/hemmati/14-porseman-79.Mp3',
                                metas: Metas(
                                  id: '14-porseman-79.Mp3-3f4f5b48',
                                  title: 'تربیت دینی در کودکان',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/sayer/1398/14-tarbiat-5.Mp3',
                                metas: Metas(
                                  id: '14-tarbiat-5.Mp3-f012fea8',
                                  title: 'علاقه کودکان به گوشی موبایل',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/sayer/1398/14-dokhtaran.Mp3',
                                metas: Metas(
                                  id: '14-dokhtaran.Mp3-302d6c68',
                                  title: 'نماز نخواندن کودک',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/horaei/1398/tarbiat.mp3',
                                metas: Metas(
                                  id: 'tarbiat.mp3-6ae5a720',
                                  title: 'آیا بچه خوبی تربیت کرده ام؟',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/dehnavi/1398/14-60-dehnavi-koodak.mp3_95026-1.mp3',
                                metas: Metas(
                                  id: '14-60-dehnavi-koodak.mp3_95026-1.mp3-fa564abd',
                                  title: 'کنجکاوی جنسی کودک',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/dehnavi/1398/14-78-dehnavi-koodak.mp3_95145-1.mp3',
                                metas: Metas(
                                  id: '14-78-dehnavi-koodak.mp3_95145-1.mp3-1ad7bac1',
                                  title: 'پیشگیری از انحراف جنسی کودک',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/dehnavi/1398/14-90-dehnavi-koodak.mp3_95162-1.mp3',
                                metas: Metas(
                                  id: '14-90-dehnavi-koodak.mp3_95162-1.mp3-1c4dc42a',
                                  title: 'عوامل تربیت جنسی',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/dehnavi/1398/14-dehnavi(103).mp3_95317-1.mp3',
                                metas: Metas(
                                  id: '14-dehnavi(103).mp3_95317-1.mp3-51fe2ce5',
                                  title: 'با سوالات جنسی فرزندانمان چه کنیم؟',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/tarashioon-alireza/1398/14-54_alage_be_oryani_d_142998.mp3',
                                metas: Metas(
                                  id: '14-54_alage_be_oryani_d_142998.mp3-4f75faba',
                                  title: 'علاقه به برهنه شدن کودک',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/tarashioon-alireza/1398/14-7_masaele_khososi_d_152371.mp3',
                                metas: Metas(
                                  id: '14-7_masaele_khososi_d_152371.mp3-18c159e8',
                                  title: 'مسائل خصوصی خانواده',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/tarashioon-alireza/14-14-tarashiun_hesse_malekiat_dar_koodakan_312102.mp3',
                                metas: Metas(
                                  id: '14-14-tarashiun_hesse_malekiat_dar_koodakan_312102.mp3-a7e909ab',
                                  title: 'حس مالکیت کودکان',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/rafiei-naser/1398/14-rafiei-tarbiat.mp3',
                                metas: Metas(
                                  id: '14-rafiei-tarbiat.mp3-38190d80',
                                  title: '5 وظیفه تربیتی والدین',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/panahian-alireza/1398/14-panahian-tarbiat.mp3',
                                metas: Metas(
                                  id: '14-panahian-tarbiat.mp3-20f679ed',
                                  title: 'کلیدی ترین عامل تربیتی والدین',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://media.rasekhoon.net/008/Farsi/14/tarashioon-alireza/14-14-tarashiun_aghosh_madar_312103.mp3',
                                metas: Metas(
                                  id: '14-14-tarashiun_aghosh_madar_312103.mp3-9c04db08',
                                  title: 'آغوش مادر بهترین جای دنیا',
                                ),
                              ),
                              titleTextStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'vazir',
                                    fontSize: 15.0,
                                    useGoogleFonts: false,
                                  ),
                              playbackDurationTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              playbackButtonColor: Color(0xFFFFAA00),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground: PlayInBackground.enabled,
                            ),
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
      ),
    );
  }
}
