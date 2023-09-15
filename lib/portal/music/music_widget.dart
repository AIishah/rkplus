import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music_model.dart';
export 'music_model.dart';

class MusicWidget extends StatefulWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  _MusicWidgetState createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  late MusicModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicModel());
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
        backgroundColor: Color(0xFF03172C),
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
          'قصه کودکانه',
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
                    color: Color(0xFF03172C),
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
                                    'مهد هوشمند رنگین کمان',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'vazir',
                                          color: Colors.white,
                                          fontSize: 20.0,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 4.0, 0.0),
                                    child: Text(
                                      'چند لحظه صبر کن ، تا همگی بیان بالا برات',
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: FlutterFlowAudioPlayer(
                              audio: Audio.network(
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%A7%D8%AD%D9%85%D8%AF-%D9%88-%D8%B3%D8%A7%D8%B1%D8%A7.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%A7%D8%AD%D9%85%D8%AF-%D9%88-%D8%B3%D8%A7%D8%B1%D8%A7.mp3-fde3cf73',
                                  title: 'احمد و سارا',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%B4%DA%A9%D8%A7%D8%B1%DA%86%DB%8C-%D9%88-%D8%B7%D9%88%D9%82%DB%8C.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%B4%DA%A9%D8%A7%D8%B1%DA%86%DB%8C-%D9%88-%D8%B7%D9%88%D9%82%DB%8C.mp3-fb3ce7cb',
                                  title: 'شکارچی و طوقی',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D8%A8%D8%A7%D8%A8%D8%A7%20%D8%A8%D8%B2%D8%B1%DA%AF%20%D9%86%D8%AC%D8%A7%D8%B1.mp3',
                                metas: Metas(
                                  id: '%D8%A8%D8%A7%D8%A8%D8%A7%20%D8%A8%D8%B2%D8%B1%DA%AF%20%D9%86%D8%AC%D8%A7%D8%B1.mp3-ec31e300',
                                  title: 'بابا بزرگ نجار',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87%20%D8%B5%D9%88%D8%AA%DB%8C%20%D8%AE%D8%B1%D9%88%D8%B3%20%D8%AF%D8%A7%D9%86%D8%A7.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87%20%D8%B5%D9%88%D8%AA%DB%8C%20%D8%AE%D8%B1%D9%88%D8%B3%20%D8%AF%D8%A7%D9%86%D8%A7.mp3-316f5adb',
                                  title: 'خروس دانا',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%AF%D9%88-%D8%AE%D9%88%D8%A7%D9%87%D8%B1.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%D8%AF%D9%88-%D8%AE%D9%88%D8%A7%D9%87%D8%B1.mp3-f6ecf7e2',
                                  title: 'دو خواهر',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'https://radiokodak.com/sites/default/files/audio-files/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%DA%AF%D9%88%D8%AF%D8%A7%D9%84-%D8%A2%D8%A8_0.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%DA%AF%D9%88%D8%AF%D8%A7%D9%84-%D8%A2%D8%A8_0.mp3-902cc0a9',
                                  title: 'گودال آب',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-یکی-زیر-یکی-رو.mp3',
                                metas: Metas(
                                  id: '------.mp3-30b15965',
                                  title: 'یکی زیر یکی رو',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-تنور.mp3',
                                metas: Metas(
                                  id: '---.mp3-ea57629e',
                                  title: 'تنور',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-رویه-و-آستر.mp3',
                                metas: Metas(
                                  id: '-----.mp3-8f80a6b6',
                                  title: 'رویه و آستر',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-پسری-در-طبل.mp3',
                                metas: Metas(
                                  id: '-----.mp3-e9f52bed',
                                  title: 'پسری در طبل',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-آهوی-جادو-شده-1-.mp3',
                                metas: Metas(
                                  id: '------1-.mp3-261067f8',
                                  title: 'آهوی جادو شده',
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
                              playbackButtonColor: Color(0xFFFF3962),
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              elevation: 4.0,
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-سبز-گیسو-قسمت-اول-.mp3',
                                metas: Metas(
                                  id: '-------.mp3-1f39536d',
                                  title: 'سبز گیسو',
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
                              playInBackground:
                                  PlayInBackground.disabledRestoreOnForeground,
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
                                'http://radiokodak.com/multimedia/%D9%81%D8%A7%DB%8C%D9%84-%D8%B5%D9%88%D8%AA%DB%8C/%D8%AF%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D9%87%D8%A7/گل نیلوفر ۲.mp3',
                                metas: Metas(
                                  id: '__.mp3-b4911433',
                                  title: 'گل نیلوفر',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
                                'http://radiokodak.com/sites/default/files/audio-files/قصه-صوتی-کودکانه-آهوی-گردن-دراز.mp3',
                                metas: Metas(
                                  id: '-----.mp3-e00dad50',
                                  title: 'آهوی گردن دراز',
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
                                'http://radiokodak.com/multimedia/%D9%81%D8%A7%DB%8C%D9%84-%D8%B5%D9%88%D8%AA%DB%8C/%D8%AF%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D9%87%D8%A7/%D9%88%DB%8C%D9%84%D9%86%20%D8%A2%D9%88%D8%A7%D8%B2%D9%87%20%D8%AE%D9%88%D8%A7%D9%86.mp3',
                                metas: Metas(
                                  id: '%D9%88%DB%8C%D9%84%D9%86%20%D8%A2%D9%88%D8%A7%D8%B2%D9%87%20%D8%AE%D9%88%D8%A7%D9%86.mp3-1f2c2baa',
                                  title: 'ویلن آوازه خوان',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
                                'https://radiokodak.com/sites/default/files/audio-files/%D8%A8%D8%B1%D8%A7%D8%AF%D8%B1%20%D8%A8%D8%B2%D8%B1%DA%AF%20%D9%88%20%D8%A8%D8%B1%D8%A7%D8%AF%D8%B1%20%DA%A9%D9%88%DA%86%DA%A9.mp3',
                                metas: Metas(
                                  id: '%D8%A8%D8%B1%D8%A7%D8%AF%D8%B1%20%D8%A8%D8%B2%D8%B1%DA%AF%20%D9%88%20%D8%A8%D8%B1%D8%A7%D8%AF%D8%B1%20%DA%A9%D9%88%DA%86%DA%A9.mp3-3c2c0c76',
                                  title: 'برادر بزرگتر و برادر کوچکتر',
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
                                'https://radiokodak.com/sites/default/files/audio-files/%D8%A2%D8%AF%D9%85%20%D8%A8%D8%B1%D9%81%DB%8C%20%D8%AE%D9%86%D8%AF%D8%A7%D9%86.mp3',
                                metas: Metas(
                                  id: '%D8%A2%D8%AF%D9%85%20%D8%A8%D8%B1%D9%81%DB%8C%20%D8%AE%D9%86%D8%AF%D8%A7%D9%86.mp3-bc8ef4eb',
                                  title: 'آدم برفی خندان',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%D8%A2%D9%87%D9%88%DB%8C-%D9%84%D8%A7%D8%BA%D8%B1-%D8%B4%D8%AF%D9%87.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%D8%A2%D9%87%D9%88%DB%8C-%D9%84%D8%A7%D8%BA%D8%B1-%D8%B4%D8%AF%D9%87.mp3-8e8e4314',
                                  title: 'آهوی لاغر',
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%D8%A2%D8%B3%D9%85%D8%A7%D9%86_%D8%A2%D8%A8%DB%8C.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%D8%A2%D8%B3%D9%85%D8%A7%D9%86_%D8%A2%D8%A8%DB%8C.mp3-6ac33f0b',
                                  title: 'آسمان آبی',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D8%A2%D8%B1%D8%B2%D9%88%DB%8C%20%D8%AE%D8%B1%DA%AF%D9%88%D8%B4.mp3',
                                metas: Metas(
                                  id: '%D8%A2%D8%B1%D8%B2%D9%88%DB%8C%20%D8%AE%D8%B1%DA%AF%D9%88%D8%B4.mp3-e4cc73cd',
                                  title: 'آرزوی خرگوش',
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%DA%86%D9%87%20%D8%AE%D8%A7%D9%86%D9%87%20%DB%8C%20%D8%B2%DB%8C%D8%A8%D8%A7%DB%8C%DB%8C.mp3',
                                metas: Metas(
                                  id: '%DA%86%D9%87%20%D8%AE%D8%A7%D9%86%D9%87%20%DB%8C%20%D8%B2%DB%8C%D8%A8%D8%A7%DB%8C%DB%8C.mp3-84b86483',
                                  title: 'چه خانه زیبایی',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%DB%B2%20%D9%85%D8%B1%D8%AF%20%D8%A8%D9%87%20%D9%86%D8%A7%D9%85%20%D8%A8%D8%AA%D9%85%D9%86.mp3',
                                metas: Metas(
                                  id: '%DB%B2%20%D9%85%D8%B1%D8%AF%20%D8%A8%D9%87%20%D9%86%D8%A7%D9%85%20%D8%A8%D8%AA%D9%85%D9%86.mp3-03d8e72d',
                                  title: 'دو مرد به نام بتمن',
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
                                'https://radiokodak.com/sites/default/files/special-mp3/%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%DA%A9%D9%81%D8%A7%D8%B4-%D9%88-%D8%B3%D9%87-%DA%A9%D9%88%DA%86%D9%88%D9%84%D9%88.mp3',
                                metas: Metas(
                                  id: '%D9%82%D8%B5%D9%87-%D8%B5%D9%88%D8%AA%DB%8C-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86%D9%87-%DA%A9%D9%81%D8%A7%D8%B4-%D9%88-%D8%B3%D9%87-%DA%A9%D9%88%DA%86%D9%88%D9%84%D9%88.mp3-310ed985',
                                  title: 'کفاش و سه کوچولو',
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
                              playbackButtonColor: Color(0xFFFF3962),
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
