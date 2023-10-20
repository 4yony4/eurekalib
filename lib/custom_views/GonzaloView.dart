import 'dart:async';

import 'package:flutter/material.dart';

class CustomTimer extends StatefulWidget {

  late int runningSeconds = 0;
  late int runningMinutes = 0;
  late int runningHours = 0;
  late int totalSecondsPlayed = 0;


  @override
  State<StatefulWidget> createState() => _CustomTimerState();

  int getPlayTime() {
    // a esta funcion se la llama desde el AcertijoContainer cuando
    // el jugador resuelve el acertijo. La cantidad total, devuelta
    // en segundos, se suma a la cantidad total en segundos del profile
    // en la bd
    totalSecondsPlayed = runningSeconds + (runningMinutes*60)+ (runningHours*120);
    return totalSecondsPlayed;
  }

}

class _CustomTimerState extends State<CustomTimer> {

/*
  // En un principio las variables de ejecucion donde
  // almacenar los valores de segundos, minutos, horas
  // estaban gestionadas aqui, pero es mejor tenerlas
  // en el propio widget para poder emplear metodos
  // y recuperarlas.

  late int runningSeconds;
  late int runningMinutes;
  late int runningHours;
  int totalSecondsPlayed = 0;

  final _secondsController = TextEditingController();
  final _minutesController = TextEditingController();
  final _hoursController = TextEditingController();
*/

  late Timer timer;

  @override
  void initState() {

    widget.runningSeconds = 0;
    widget.runningMinutes = 0;
    widget.runningHours = 0;

    timer = Timer.periodic(
      const Duration(seconds: 1),
          (Timer timer) => _countTime(),
    );

/*
    _secondsController.value = TextEditingValue(text: '${runningSeconds}');
    _minutesController.value = TextEditingValue(text: '${runningMinutes}');
    _hoursController.value = TextEditingValue(text:'${runningHours}');

    _minutesController.addListener(_minutesManager);
    _hoursController.addListener(_hoursManager);
*/
    super.initState();
  }

  _countTime() {
    setState(() {
      widget.runningSeconds ++;
    });
    _minutesManager();
    _hoursManager();
  }


  _minutesManager() {
    if(widget.runningSeconds == 60) {
      setState(() {
        widget.runningSeconds = 0;
        widget.runningMinutes++;
      });
    }
  }

  _hoursManager() {
    if(widget.runningMinutes == 60) {
      setState(() {
        widget.runningMinutes = 0;
        widget.runningHours++;
      });
    }
  }


  @override
  void dispose() {

    timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Icon(Icons.timer)
        ),
        Expanded(
          child: Text('horas: ${widget.runningHours}',),
        ),
        Expanded(
          child: Text('minutos: ${widget.runningMinutes}',),
        ),
        Expanded(
          child: Text('segundos: ${widget.runningSeconds}',),
        ),
      ],
    );
  }


}