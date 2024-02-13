import 'package:flutter/material.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});
  Widget buildIconContainer({required icon, required String text}) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color.fromARGB(255, 208, 208, 208),
      ),
      height: 60,
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.red,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 2, 92),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 92,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                  "assets/avatar.jpg",
                ),
              ),
            ),
            const Text("Ahmad Tamim",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35,
                  fontFamily: 'SingleDay',
                )),
            const Text("Developer",
                style: TextStyle(
                  color: Color.fromARGB(255, 53, 53, 53),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                )),
            const Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 1,
              indent: 60,
              endIndent: 60,
            ),
            buildIconContainer(
              icon: Icons.phone,
              text: '(+970) 568211844',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 2),
            ),
            buildIconContainer(
              icon: Icons.email,
              text: 'ahmadabedtamim@gmail.com',
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              child: const ListTile(
                leading: Icon(
                  Icons.abc,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  "text",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
