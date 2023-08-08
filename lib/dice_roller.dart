import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() //this is a function where we return a state
  {
    return _DiceRollerState();
  }
}

var randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceimage1 = "assets/images/dice-1.png";
  var activeDiceimage2 = "assets/images/dice-1.png";

  var score1 = 0;
  var score2 = 0;

  rollDices() {
    var random1 = randomizer.nextInt(6) + 1;
    var random2 = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceimage1 = "assets/images/dice-$random1.png";
      score1 += random1;
      score2 += random2;
      activeDiceimage2 = "assets/images/dice-$random2.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Player A",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 100),
            Text(
              "Player B",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Text(
                  "Score : $score1",
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),

            const SizedBox(width: 10),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(activeDiceimage1, width: 100),
              ],
            ),

            const SizedBox(width: 20),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(activeDiceimage2, width: 100),
              ],
            ),

            const SizedBox(width: 10),

            Column(
              children: [
                Text(
                  "Score : $score2",
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        ),


        Row(
          children: const [SizedBox(height: 20)],
        ),


        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              onPressed: rollDices,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 5, 108, 168),
                backgroundColor: const Color.fromARGB(255, 3, 33, 79),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        )
      ],
    );
    // Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Image.asset(activeDiceimage1, width: 150),

    //     ],
    //   ),
    //  const SizedBox(width:20),
    //   Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Image.asset(activeDiceimage2, width: 150),

    //     ],
    //   ),
    //     ],
    //   );
    // OutlinedButton(
    //       onPressed: rollDices,
    //       style: OutlinedButton.styleFrom(
    //         foregroundColor: const Color.fromARGB(255, 5, 108, 168),
    //         backgroundColor: const Color.fromARGB(255, 3, 33, 79),
    //         textStyle: const TextStyle(fontSize: 20),
    //       ),
    //       child: const Text("Roll Dice"),
    //     ),
  }
}
