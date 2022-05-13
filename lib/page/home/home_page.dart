import 'package:ai_project/ultil/screen_arguments.dart';
import 'package:ai_project/ultil/screen_util.dart';
import 'package:ai_project/ultil/shared_preferences.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:local_auth/local_auth.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.data}) : super(key: key);
  static const routeName = '/HomePage';
  final ScreenArguments data;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LocalAuthentication auth = LocalAuthentication();
  PrefsUtil _prefsUtil;
  String userName;
  String password;
  String getUser;
  String getPass;
  final _textController = TextEditingController();
  final _focusText = FocusNode();
  final _textKey = GlobalKey<FormState>();
  stt.SpeechToText _speechToText;
  bool _speechEnabled = false;
  String _lastWords = '';
  double accuracy = 1.0;
  bool _isListening = false;
  String textToSpeech = 'Tap the microphone to start listening...';

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  _listen() async {
    if (_speechToText.isAvailable) {
      if (!_speechEnabled) {
        _speechToText.listen(onResult: (result) {
          setState(() {
            accuracy = result.confidence;
            _lastWords = result.recognizedWords;
            _speechEnabled = true;
          });
        });
      } else {
        setState(() {
          _speechEnabled = false;
          _speechToText.stop();
        });
      }
    }
  }

  void onListen() async {
    if (!_isListening) {
      bool available = await _speechToText.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() {
          _isListening = true;
        });
        _speechToText.listen(
          onResult: (val) => setState(() {
            textToSpeech = val.recognizedWords;
            _textController.text = textToSpeech;
          }),
          localeId: 'vi',
        );
      }
    } else {
      _isListening = false;
      _speechToText.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    userName = widget.data.arg1;
    password = widget.data.arg2;

    print('$userName   $password');
    _speechToText = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().getAdapterSize(8)),
        child: Column(
          children: [
            SizedBox(height: ScreenUtil.getInstance().getAdapterSize(20)),
            Form(
              key: _textKey,
              child: TextFormField(
                focusNode: _focusText,
                autofocus: true,
                controller: _textController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Tìm kiếm',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.pinkAccent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(textToSpeech
                    // _speechToText.isListening
                    //     ? '$_lastWords'
                    //     : _speechEnabled
                    //     ? 'Tap the microphone to start listening...'
                    //     : 'Speech not available',
                    ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onListen();
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: AvatarGlow(
          animate: _isListening,
          glowColor: Colors.pinkAccent,
          endRadius: 80,
          duration: Duration(microseconds: 5000),
          repeatPauseDuration: Duration(microseconds: 1000),
          repeat: true,
          child: Icon(
            _isListening ? Icons.mic : Icons.mic_none,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
