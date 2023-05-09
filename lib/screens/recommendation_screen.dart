/*Code by Salma Elabsi*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  final List<Recommendation> recList = [
    Recommendation(
      title: 'Games and Activities',
      description:
          '2 months old:\nCozy blanket for cuddling while awake\nMusic boxes or soft music\nPlastic links or rattles\nReading books out loud\nEncouraging tummy time while awake\n\n4 months old:\nRattles\nSing and talk together\nBoard books with textures\nSoft cloth toys\nPlastic mirrors\n\n6 months old:\nRattles\nMirrors\nActivity centers\nSoft or board books\nSqueaky toys\n\n9 months old:\nContainersfor filling and dumping\nSoft blocks\nRings on a stick\nBoard books\nActivity centers with different textures, shapes and sounds\nPush-and-pull toys\nBalls\n\n1 year old:\nShape sorters\nNesting blocks and cups\nRiding toys (pushing off with feet)\nSmall blocks for stacking\nPush-and-pull toys\nBoard books\nPop-up boxes\nActivity boxes\nBalls\nStacking rings\n\n18 months old:\nBlocks\nFarm or garage sets\nTeacup or kitchen sets\nBooks\nToy telephone\nBubbles\nBalls\nStack and nest cups\nDolls or teddy bears\nCars and trucks\nRiding toys\n\n2 years old:\nFarm or garage sets\nTeacup or kitchen sets\nBooks\nToy telephone\nBubbles\nBalls\nRiding toys\nNesting cups\nWater and sand toys\nDress-up clothes\nDolls or teddy bears\nBlocks and building toys\n\n3 years old:\nPlaydough\nBooks and storytelling\nMatching games\nSmall pegs and peg board\nScribbling\nTricycles or big wheels\nWagons\nPuzzles\nMarkers, crayons, glue, stickers, watercolor parts\nBalls\nSongs\nCostumes, action figures\n',
    ),
    Recommendation(
      title: 'Toy Shops',
      description:
          'Toyzz Shop\nAddress: Forum Kayseri AVM Hunat Mahallesi Sivas Bulvarı SF Blok Mağaza No. 23 No : 24/A, 38030 Melikgazi/Kayseri\n\nCan Toys XL\nAddress: Gülük, Şht. Miralay Nazım Bey Blv., 38240 Melikgazi/Kayseri\n\nHappy Toys\nAddress: ALSANCAK MAHALLESİ, ARGINCIK TOPTANCILAR SİTESİ 6207.SOKAK, NO:34, 01960 KOCASİNAN/Kayseri',
    ),
    Recommendation(
      title: 'YouTube Channels',
      description:
          'BabyBus - Kids Songs and Cartoons\nhttps://www.youtube.com/@babybus\n\nWarnerBros Kids\nhttps://www.youtube.com/@wbkids\n\nCocomelon - Nursery Rhymes\nhttps://www.youtube.com/channel/UCbCmjCuTUZos6Inko4u57UQ',
    ),
    Recommendation(
      title: 'Other Apps',
      description:
          'YouTube Kids\nKhan Academy Kids\nKiddopia\nLingokids\nParental Control - Kids Place',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Recommendations"),
          leading: const BackButton(),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: recList.length,
                  itemBuilder: (context, index) {
                    return recList[index];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Recommendation extends StatelessWidget {
  final String title;
  final String description;

  Recommendation({required this.title, required this.description});

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
