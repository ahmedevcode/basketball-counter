import 'package:baskeballcounter/cubit/counterstates.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<counterstats> {
  countercubit() :super(counterinital());

  int teamE = 0;
  int teamB = 0;

  void restTeam() {
    teamB = 0;
    teamE = 0;
    emit(counterAsucess());
  }


  void incrementATeam(int n) {
    teamE += n;
    emit(counterAsucess());
  }

  void incrementBTeam(int n) {
    teamB += n;
    emit(counterBsucess());
  }
}
