import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'story_brain.dart';

//TODO: ======= Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.
// SUCCESS
void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//TODO: ======= Step 9 - Create a new storyBrain object from the StoryBrain class.

StoryBrain storyBrain = new StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //TODO: ======= Step 1 - Add background.png to this Container as a background image.

//
//        decoration: BoxDecoration(
//
//
//        //image: Image.asset('images/background.png'), // this is the wrong way
//
//
//        //image: DecorationImage(image: Image.asset('background.png'))
//
//        //my explorations with these stuff for being right or wrong
//
//          image: DecorationImage(image: AssetImage('background.png')
//
//          )
//
//
//    ),
//

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover),
        ),

        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: ======= Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    //'Story text will go here.',   a a a a and we should know that when calling here don't use semi column
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: ======= Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    //TODO: ======= Step 13 - Use the storyBrain to get the text for choice 1.
                    //'Choice 1',
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: ======= Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: ======= Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible() ,
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      //TODO: ======= Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      setState(() {
                        storyBrain.nextStory(2);
                      });

                    },
                    color: Colors.blue,
                    child: Text(
                      //TODO: ======= Step 14 - Use the storyBrain to get the text for choice 1.
                      //'Choice 2',
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
//            image: DecorationImage(image: AssetImage('background.png'))
  }
}

//TODO: ======= Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: ======= Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/

// final
// now thank you all
// for helping me
// good job mans
// wp wp wp n a a a y y .