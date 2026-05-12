import 'package:class_4/constants/my_colors.dart';
import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});
  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

//Winning Patterns
//012
//345
//678

//036
//147
//258

//048
//246

class _TicTacToeState extends State<TicTacToe> {
  // List<String> boxesVal = ["", "", "", "", "", "", "", "", ""];
  List<String> boxesVal = ["0", "1", "2", "3", "4", "5", "6", "7", "8"];
  bool isXturn = true;

  void handleOnBoxtap(int index) {
    if (isXturn == true) {
      boxesVal[index] = "X";
    } else {
      boxesVal[index] = "0";
    }
    isXturn = !isXturn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetColors.primaryColor,
      //Main column
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Column(
            children: [
              //Score Card Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // X Score
                  Column(
                    children: [
                      Text(
                        "Player X",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // 0 Score
                  Column(
                    children: [
                      Text(
                        "Player 0",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                    // X Score
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              //Game Board
              SizedBox(
                height: 480,
                child: GridView.builder(
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          handleOnBoxtap(index);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(4),
                          height: 100,
                          width: 100,
                          decoration:
                              BoxDecoration(color: AssetColors.secondaryColor),
                          child: Text(
                            boxesVal[index],
                            style: TextStyle(
                                fontSize: 80, color: AssetColors.primaryColor),
                          ),
                        ),
                      );
                    }),
              ),
              const Spacer(
                flex: 1,
              ),

              //Bottom Section
              Text(
                "Time Up",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      180,
                      60,
                    ),
                    foregroundColor: AssetColors.primaryColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    "Start Play",
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
