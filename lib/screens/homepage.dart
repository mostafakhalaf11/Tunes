import 'package:flutter/material.dart';
import 'package:tunes/widgets/tune_widget.dart';
import '../models/tune_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.black, sound: 'note1.wav'),
    TuneModel(color: Colors.white, sound: 'note2.wav'),
    TuneModel(color: Colors.black, sound: 'note3.wav'),
    TuneModel(color: Colors.white, sound: 'note4.wav'),
    TuneModel(color: Colors.black, sound: 'note5.wav'),
    TuneModel(color: Colors.white, sound: 'note6.wav'),
    TuneModel(color: Colors.black, sound: 'note7.wav'),
    TuneModel(color: Colors.white, sound: 'note2.wav'),
    TuneModel(color: Colors.black, sound: 'note3.wav'),
    TuneModel(color: Colors.white, sound: 'note4.wav'),
    TuneModel(color: Colors.black, sound: 'note5.wav'),
    TuneModel(color: Colors.white, sound: 'note6.wav'),
    TuneModel(color: Colors.black, sound: 'note7.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Piano Player',
          style: TextStyle(
            fontFamily: 'SedanSC',
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xFF232E36),
      ),
      body: Column(
        children: tunes.map((e  ) => TuneItem(tune: e )).toList(),
      ),
    );
  }
}
