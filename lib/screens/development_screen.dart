/*Code by Salma Elabsi*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevelopmentScreen extends StatefulWidget {
  const DevelopmentScreen({super.key});

  @override
  State<DevelopmentScreen> createState() => _DevelopmentScreenState();
}

class _DevelopmentScreenState extends State<DevelopmentScreen> {
  final List<Milestone> milestones = [
    Milestone(
      title: '2 Months',
      description:
          'At 2 months, your child is wide-eyed and watching, smiling at faces, and engaging with everything around them. Babies at this age are social and love to interact. Their neck muscles are growing stronger and they can hold their heads erect for a period of time. They can identify and understand the tone, emotions and comfort in your voice.\n',
      learningnow:
          'What your baby is learning now:\n\nWhile babies may progress at different rates, the following are some of the common milestones your baby may reach in this age group:\nMoves arms and kicks\nLifts head when on stomach\nReacts to noises\nSees best from 8-10 inches away\nMakes sounds\nBegins to smile at people\n',
      learningnext:
          'What your baby is learning next:\n\nCoos and begins to imitate sounds\nCrying become more purposeful and is different for hunger, fatigue and other needs\nSleeps for longer stretches of time\nSmiles at faces\nPulls at clothes\nBats or hits at toys\nWatches objects as they move\n',
      todo:
          'What you can do to encourage your baby’s development:\n\nSing together.\nTalk and smile while looking at your baby’s face.\nTalk to your baby with a soothing, animated voice throughout the day while dressing, bathing, feeding or playing with your baby.\nLet your baby hear different sounds.\nVary the sound of your voice.\nSlowly move objects for your baby to watch.\nLook into a mirror with your baby.\n',
    ),
    Milestone(
      title: '4 Months',
      description:
          'Your baby is growing even more social and moving in a purposeful manner. Babies at this age love to babble and coo and mimic sounds they hear. They love to play and copy the movements of others. Also, your baby’s cries will be different, as they communicate hunger, frustration, discomfort or feeling tired.\n',
      learningnow:
          'What your baby is learning now\n\nWhile babies may progress at different rates, the following are some of the common milestones your baby may reach in this age group:\nSqueals and waves arms when excited\nMakes sounds like “ooh” and “aah”\nBriefly holds a small rattle\nPushes up on arms while on stomach\nBrings both hands to mouth\nRolls from back to sides\nSits up with your support\nPushes on legs when feet are on a hard surface\n',
      learningnext:
          'What your baby is learning next:\n\nMakes sounds like “ga” or “ba”\nSmiles at self in mirror\nReaches and grasps toys\nShakes and bangs rattles\nRolls from stomach to back\nGrabs feet when lying on back\n',
      todo:
          'What you can do to encourage your baby’s development:\n\nGive your baby toys to hold and play with.\nMake faces for your baby to copy.\nSing songs while rocking your baby.\nCopy your baby’s sounds.\nHelp your baby sit with support.\nWhen your baby is awake, put her on her stomach.\nPlay peek-a-boo or pat-a-cake.\nTalk about what your baby is looking at or doing.\nRead with your baby.\nHold toys above your baby so he can reach them.\n',
    ),
    Milestone(
      title: '6 Months',
      description:
          'It’s very exciting for parents to see their children grow into more social beings as babies begin to experiment with and recognize sounds. Your baby will use sounds to express emotion. They may mimic sounds they hear, like “Ma, Da, Ba, Ah, Oh,” and even “No!” At 6 months, your baby will begin to recognize familiar faces, reach and grasp for toys, and will soon be crawling.\n',
      learningnow:
          'What your baby is learning now:\n\nWhile babies may progress at different rates, the following are some of the common milestones your baby may reach in this age group:\nLooks at objects as they move across the room\nRecognizes familiar faces\nLikes to look in the mirror\nSits w/o support and rolls over in both directions\nReaches and grasps toys\nBegins to pass objects from one hand to another\nShakes and bangs rattles\nReaches for a book\nMakes sounds to express emotion\nTurns head toward sounds\nResponds to  own name\n',
      learningnext:
          'What your baby is learning next:\n\nStands by holding on to things\nCrawls\nWaves bye-bye and uses other gestures\nPlays peek-a-book and pat-a-cake\nEnjoys looking at books with an adult\nEnjoys dump and fill toys\nEnjoys push-and-pull toys\nGrasps small objects with thumb and finger\nContinues to shake, bang, throw, and drop rattles\nImitates and enjoys making different sounds\n',
      todo:
          'What you can do to encourage your baby’s development:\n\nShare books together.\nPoint and name pictures.\nTalk and sing to your child.\nPlay with your child on the floor.\nMake music part of each day.\nCreate a safe environment.\nUse big smiles and gestures.\nPraise your baby.\n',
    ),
    Milestone(
      title: '9 Months',
      description:
          'By 9 months, your baby is much more mobile and likes to explore. Babies at this age are crawling and can pull up to stand. Safety in the home becomes an important issue as your baby’s curiosity (and mobility) grows. Your baby now responds to his or her name, loves to cuddle with family and may show shyness or fear of strangers. Games like peek-a-boo and pat-a-cake are popular.\n',
      learningnow:
          'What your baby is learning now:\n\nWhile babies may progress at different rates, the following are some of the common milestones your baby may reach in this age group:\nMakes sounds and uses gestures to communicate\nFills and dumps things\nUses toys to make noise\nTurns pages in books\nGrasps smaller objects with hands and fingers\nSits, crawls and pulls up to stand\n',
      learningnext:
          'What your baby is learning next:\n\nBegins to recognize and know what words mean\nPoints to objects\nRecognizes pictures in books\nPlays with others by handing them things\nLikes games like peek-a-boo and pat-a-cake\nPlays with toys by pushing, pulling, stacking and dumping\nStands alone and sits with control\n',
      todo:
          'What you can do to encourage your baby’s development:\n\nRead books together and name the pictures.\nName objects you see.\nCall your child by name.\nEncourage your child to imitate your words and sounds.\nPraise your baby for good behavior.\nUse finger foods to promote use of hands to grab food.\n',
    ),
    Milestone(
      title: '1 Year',
      description:
          'After a baby’s first birthday, the rate at which they grow begins to slow. By 1, your baby is officially a toddler. Toddlers are more active, curious and expressive. Your toddler may begin to use words, be able to stand on his or her own and take a few steps. Read books to your child, encourage active play, and reward them for good behavior.\n',
      learningnow:
          'What your toddler is learning now:\n\nWhile toddlers may progress at different rates, the following are some of the common milestones your toddler may reach in this age group:\nMay start to use words\nMay be shy around strangers\nPoints to objects\nTurns pages in a book\nLikes to push, pull and dump things\nStacks two blocks\nHands objects to others\nPlays peek-a-boo\nCrawls well\nStands alone, sits down\nMay take steps alone\n',
      learningnext:
          'What your toddler is learning next:\n\nUses single words\nPoints to pictures in books\nScribbles with large crayons (with supervision)\nHides and finds objects\nNotices other children\nPlays with blocks and puzzles\nWalks\nClimbs into a chair\n',
      todo:
          'What you can do to encourage your toddler’s development:\n\nRead books together — let your child turn pages and point to pictures.\nName objects you see.\nTalk with your child about everyday things.\nPlay with your child on the floor.\nSet clear rules and be consistent.\nMake time for active play.\nPraise your child for good behavior.\nDemonstrate respectful interactions for your toddler to emulate.\n',
    ),
    Milestone(
      title: '18 Months',
      description:
          'You toddler is now walking and using basic words. At this age, children love to play and explore. They begin to show some independence. They may play pretend and point at objects they want. They also begin to understand what things in the house are used for, such as a cup or spoon. Your toddler may have temper tantrums around this age, when they grow frustrated trying to communicate how they feel.\n',
      learningnow:
          'What your toddler is learning now:\n\nWhile toddlers may progress at different rates, the following are some of the common milestones your toddler may reach in this age group:\nUses around eight or more words\nPoints to pictures in books\nScribbles\nHides and finds objects\nShows interest in other children\nPlays with blocks and puzzles\nUses a spoon and cup\nWalks quickly\nClimbs into a chair by self\nMay have tantrums\nMay show interest in using the toilet\n',
      learningnext:
          'What your toddler is learning next:\n\nWalks forward and backward\nRolls a large ball back-and-forth\nStoops and squats\nTurns pages of books\nUses two- to three-word sentences\nPoints to some body parts\nSings and dances\nImitates parent activities\n',
      todo:
          'What you can do to encourage your toddler’s development:\n\nRead books together: Let your child turn pages and point to pictures.\nTalk with your child about everyday things.\nPlay with your child on the floor.\nPlay dress-up.\nUse routines: Toddlers like to know what to expect.\nSet clear rules and be consistent.\nPraise your toddler for good behavior.\n',
    ),
    Milestone(
      title: '2 Years',
      description:
          'By the age of 2, your toddler is talking, walking, climbing, jumping, running and bursting with energy. Your child now has a growing vocabulary and acquires new words on a regular basis. They can sort shapes and colors. They may show an interest in potty training. As they grow more independent, toddlers may show signs of defiance as they begin to push boundaries and explore their world.\n',
      learningnow:
          'What your toddler is learning now:\n\nWhile toddlers may progress at different rates, the following are some of the common milestones your toddler may reach in this age group:\nWalks forward and backward\nRolls a large ball back-and-forth\nStoops and squats\nTurns pages of books\nUses two- to three-word sentences\nPoints to some body parts\nSings and dances\nMay be interested in using the toilet\nScribbles\n',
      learningnext:
          'What your toddler is learning next:\n\nSigns of toilet readiness\nUndresses self\nKicks a ball\nEnjoys riding toys\nListens to brief stories\nDoes simple puzzles\nMatches a picture and object\n',
      todo:
          'What you can do to encourage your toddler’s development:\n\nRead a little everyday.\nHave conversations with your child.\nTeach new words.\nLet your child help with chores.\nPraise your toddler for good behavior.\nSet clear rules and be consistent.\nHelp your child learn how to share.\nExercise together by jumping, running and walking.\n',
    ),
    Milestone(
      title: '3 Years',
      description:
          'At 3, your child is beginning to grow out of the toddler years. Full of fun and ideas, 3-year-olds are active and communicative. They understand past tense in speech. They may begin asking “why” all the time. They enjoy playing with other children and are learning how to share. They are able to feed themselves by this age and have all 20 primary baby teeth!\n',
      learningnow:
          'What your child is learning now:\n\nWhile children may progress at different rates, the following are some of the common milestones your child may reach in this age group:\nPlays well with other children\nCan copy a circle and lines\nRides a tricycle\nUses their word sentences\nUses pronouns\nKnows colors\nCan count to three\nUses the toilet\nPuts on T-shirt by self\nSings and dances\nPlays make-believe\nMay have fears of certain things, like the dark or a monster under the bed\n',
      learningnext:
          'What your child is learning next:\n\nUses full sentences\nCan have a conversation\nUses the words “in” “on” and “under” correctly\nLikes pretend play\nDraws a person\nDresses by self\nKnows five or more colors\nListens to whole stories\nSays full name and age\nCan match a picture with an object\n',
      todo:
          'What you can do to encourage your child’s development:\n\nRead  everyday.\nHave conversations.\nTalk about colors and shapes.\nCount.\nSing songs together.\nPlay is more important than passively watching TV or a screen.\nLet your child help with chores.\nPraise your child for good behavior.\nSet clear rules and be consistent.\nExercise together.\n',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Developmental Milestones"),
          leading: const BackButton(),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: milestones.length,
                  itemBuilder: (context, index) {
                    return milestones[index];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Milestone extends StatelessWidget {
  final String title;
  final String description;
  final String learningnow;
  final String learningnext;
  final String todo;

  Milestone(
      {required this.title,
      required this.description,
      required this.learningnow,
      required this.learningnext,
      required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(title),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (BuildContext context) {
                    return MaterialApp(
                      home: Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.amberAccent,
                          title: Text(title),
                          actions: [],
                        ),
                        body: Column(
                          children: [
                            Container(
                              child: Text(description),
                            ),
                            Container(
                              child: Text(learningnow),
                            ),
                            Container(
                              child: Text(learningnext),
                            ),
                            Container(
                              child: Text(todo),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
