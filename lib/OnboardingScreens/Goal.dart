import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/weight.dart';

class GoalSetting extends StatefulWidget {
  const GoalSetting({super.key});

  @override
  State<GoalSetting> createState() => _GoalSettingState();
}

class _GoalSettingState extends State<GoalSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(
            "Goal Settings",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(0.3 * MediaQuery.of(context).size.width, 1.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 0.3 * MediaQuery.of(context).size.width,
                  child: Divider(
                    color: Colors.black54,
                    thickness: 2.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("What's Your Goal",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24

                  ),),
                  Text("Torem ipsum dolor sit amet, consectetur alertyim adipiscing elit.",
                    style:TextStyle(
                      fontSize: 14,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageIcon(
                              AssetImage("Images/weightloss.png"),
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 15,),
                            Text("Lose Weight",style: TextStyle(
                                fontSize: 20
                            ),)
                          ],),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF6154D5),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Row(

                          children: [
                            ImageIcon(
                              AssetImage("Images/weightloss.png"),
                              size: 24,
                            ),
                            //Icon Image

                            SizedBox(width: 10,),
                            Text("Be Fit",style: TextStyle(
                              fontSize: 20,
                            ),)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage("Images/weightscales.png"),

                              size: 24,
                            ),
                            SizedBox(width: 15,),
                            Text("Gain Weight",style: TextStyle(
                                fontSize: 20
                            ),)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Weight()),
                      );

                    },
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6154D5),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],),
        ),
      ),
    );
  }
}
