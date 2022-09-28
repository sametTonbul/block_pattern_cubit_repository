import 'package:block_pattern_cubit_repository/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomePageCubit())],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfNumber1 = TextEditingController();
  var tfNumber2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text('BLOC/CUBIT/REPO'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 50, left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocBuilder<HomePageCubit, int>(builder: (context, result) {
                    return Text(result.toString(),
                        style: const TextStyle(fontSize: 30));
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: tfNumber1,
                      decoration: const InputDecoration(hintText: 'Number 1 '),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: tfNumber2,
                      decoration: const InputDecoration(hintText: 'Number 2'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.lightGreen),
                        shadowColor: MaterialStateProperty.all(Colors.teal),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0))),
                      ),
                      onPressed: () {
                        String number1forPlus = tfNumber1.text;
                        String number2forPlus = tfNumber2.text;
                        context
                            .read<HomePageCubit>()
                            .doPlus(number1forPlus, number2forPlus);
                      },
                      child: const Text('Plus')),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.lightGreen),
                        shadowColor: MaterialStateProperty.all(Colors.teal),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0))),
                      ),
                      onPressed: () {
                        String number1forMultiply = tfNumber1.text;
                        String number2forMultiply = tfNumber2.text;
                        context
                            .read<HomePageCubit>()
                            .doMultiply(number1forMultiply, number2forMultiply);
                      },
                      child: const Text('Multiply')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
