import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  final avatarUrl = "https://avatars.githubusercontent.com/u/115710850?v=4";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Profile Page")),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(radius: 100, backgroundImage: NetworkImage(avatarUrl)),
                SizedBox(height: 20),
                Text("Efe Hancıoğlu", 
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
                Text("Software Developer",style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),),
                SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Text("1.5K", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text("Followers")
                          ],
                        )),
                        Expanded(child: Column(
                          children: [
                            Text("1.0K", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text("Following")
                          ],
                        )),
                        Expanded(child: Column(
                          children: [
                            Text("100", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text("Posts")
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About me", style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("I am a 3rd-year Computer Engineering student at Düzce University. As part of the Erasmus+ program, I completed a semester of education at Lodz University of Technology. While I focus on Node.js, React, and Flutter technologies, I am also keen on learning different backend architectures, mobile and web technologies. I aim to integrate my background in graphic design into my technical projects by adding a visual perspective. As a responsible, hardworking, and team-oriented student, I strive to consolidate my theoretical knowledge through practical projects and professional development.")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
