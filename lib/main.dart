import 'package:baskeballcounter/cubit/countercubit.dart';
import 'package:baskeballcounter/cubit/counterstates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( pointsCounter());
}
class pointsCounter extends StatelessWidget {
  const pointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int teamE=0;
    int teamB=0;
    return BlocProvider(create: (context)=>countercubit(),
      child:MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<countercubit,counterstats>( listener: (BuildContext context,state){

    },
            builder: (BuildContext context, state){
            return Scaffold(
                appBar: AppBar(
                backgroundColor: Colors.orange,
                title: const Text('Points Counter'),
              ),
              body: Column(
              children: [
              const SizedBox(
              height: 32,
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
              children: [
               Text(
              'Team E',
              style: TextStyle(
              fontSize: 42,
              ),
              ),
              Text(
              '${BlocProvider.of<countercubit>(context).teamE}',
              style: TextStyle(
              fontSize: 150,
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementATeam(1);
              },
              child: const Text(
              'Add 1 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              const SizedBox(
              height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementATeam(2);
              },
              child: const Text(
              'Add 2 Point',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              const SizedBox(
              height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementATeam(3);

              },
              child: const Text(
              'Add 3 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ],
              ),
              const SizedBox(
              height: 420,
              child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              ),
              ),
              Column(
              children: [
              const Text(
              'TeamB',
              style: TextStyle(
              fontSize: 42,
              ),
              ),
              Text(
              '${BlocProvider.of<countercubit>(context).teamB}',
              style: TextStyle(
              fontSize: 150,
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementBTeam(1);
              },
              child: const Text(
              'Add 1 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              const SizedBox(
              height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementBTeam(2);
              },
              child: const Text(
              'Add 2 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              const SizedBox(
              height: 16,
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
              BlocProvider.of<countercubit>(context).incrementBTeam(3);
              },
              child: const Text(
              'Add 3 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ],
              ),
              ],
              ),
              const Spacer(),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize: const Size(50, 25),
              ),
              onPressed: () {
                BlocProvider.of<countercubit>(context).restTeam();


              },
              child: const Text(
              ' restart ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              const Spacer(),
              ],
              ),

              );
            }


          ),
      )
    );
  }
}
