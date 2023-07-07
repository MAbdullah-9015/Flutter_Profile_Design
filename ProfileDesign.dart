import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var bgColorFaint = const Color(0xff212121);
    var bgColor = const Color(0xff161616);
    return Scaffold(
      body: Container(
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [bgColor.withOpacity(0.8), bgColorFaint],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child:
                      Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(width: 400, height: 450),
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          bgColorFaint,
                          bgColor.withOpacity(0.9),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70),
                      Text("Muhammad Abdullah",
                          style: TextStyle(
                              fontFamily: AutofillHints.birthday,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 5),
                      Text(
                        "🌀 Flutter Developer | 🎨 UI/UX Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                "89",
                              ),
                              Text(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                "Score",
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Projects",
                                style: TextStyle(
                                  fontFamily: AutofillHints.birthday,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rating",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 28, 28, 28),
                            radius: 80),
                        CircleAvatar(
                            backgroundColor: Color(0xfffda638),
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                            radius: 72)
                      ],
                    )),
                Positioned(
                    top: 130,
                    child: Chip(
                        backgroundColor: Colors.green,
                        label: Text(
                          "Available",
                        )))
              ],
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xfffda638),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                "Contact Now",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              )),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                style: TextStyle(
                  color: Colors.white,
                ),
                "Visit profile",
              )),
            )
          ],
        ),
      ),
    );
  }
}
