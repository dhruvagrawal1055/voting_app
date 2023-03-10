import 'package:flutter/material.dart';
import 'package:polls/polls.dart';
// import 'package:polls/polls.dart';

class PollsDemo extends StatefulWidget {
  _PollsDemoState createState() => _PollsDemoState();
}

class _PollsDemoState extends State<PollsDemo> {
  double option1 = 2.0;
  double option2 = 1.0;
  double option3 = 4.0;
  double option4 = 3.0;

  String user = "user@gmail.com";
  Map usersWhoVoted = {
    'test@gmail.com': 1,
    'deny@gmail.com': 3,
    'kent@gmail.com': 2,
    'xyz@gmail.com': 2
  };
  String creater = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polls"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Polls(
              children: [
                Polls.options(title: 'Flutter', value: option1),
                Polls.options(title: 'Kotlin', value: option2),
                Polls.options(title: 'Java', value: option3),
                Polls.options(title: 'React Native', value: option4),
              ],
              question: Text(
                "Which Android App Development Technology is used?",
                style: TextStyle(fontSize: 25),
              ),
              currentUser: this.user,
              creatorID: this.creater,
              voteData: usersWhoVoted,
              userChoice: usersWhoVoted[this.user],
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.cyanAccent.shade400,
              backgroundColor: Colors.white,
              onVote: (choice) {
                print(choice);
                setState(() {
                  this.usersWhoVoted[this.user] = choice;
                });
                if (choice == 1) {
                  setState(() {
                    option1 += 1.0;
                  });
                }
                if (choice == 2) {
                  setState(() {
                    option2 += 1.0;
                  });
                }
                if (choice == 3) {
                  setState(() {
                    option3 += 1.0;
                  });
                }
                if (choice == 4) {
                  setState(() {
                    option4 += 1.0;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
