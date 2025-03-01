import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Flashcard'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ), //AppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: Colors.purple[700],
            child: Padding(
              padding: EdgeInsets.all(100),
              child: Column(
                children: [
                  Text('Question',style: TextStyle(fontSize: 20)),
                  Text('Answer',style: TextStyle(fontSize: 20)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color:Colors.black))
                ],
              )
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add_rounded),
                backgroundColor: Colors.purple[700],
              ),
            ],
          ),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label:'CARDS'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label:'PRACTICE'),
        ],
      ),
    );
  }
}