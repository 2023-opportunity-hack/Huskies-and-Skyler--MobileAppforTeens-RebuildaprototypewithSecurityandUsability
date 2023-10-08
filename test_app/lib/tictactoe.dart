import 'package:flutter/material.dart';
import 'package:test_app/home_temp.dart';
import 'package:flutter/services.dart';
import 'package:test_app/utils.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Tictactoe());
}

class Tictactoe extends StatelessWidget {
  static final String title = 'Tic Tac Toe';


  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/home_temp': (context) => Hometemp(),
    },
    title: title,
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class Player {
  static const none = '';
  static const X = 'X';
  static const O = 'O';
}

class _MainPageState extends State<MainPage> {
  static final countMatrix = 3;
  static final double size = 92;

  String lastMove = Player.none;
  late List<List<String>> matrix;

  var count=0;
  var count0=0;

  @override
  void initState() {
    super.initState();

    setEmptyFields();
  }

  void setEmptyFields() => setState(() => matrix = List.generate(
    countMatrix,
        (_) => List.generate(countMatrix, (_) => Player.none),
  ));

  Color getBackgroundColor() {
    final thisMove = lastMove == Player.X ? Player.O : Player.X;

    return getFieldColor(thisMove).withAlpha(150);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: getBackgroundColor(),
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Utils.modelBuilder(matrix, (x, value) => buildRow(x)),
    ),
  );

  Widget buildRow(int x) {
    final values = matrix[x];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Utils.modelBuilder(
        values,
            (y, value) => buildField(x, y),
      ),
    );
  }

  Color getFieldColor(String value) {
    switch (value) {
      case Player.O:
        return Colors.blue;
      case Player.X:
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  Widget buildField(int x, int y) {
    final value = matrix[x][y];
    final color = getFieldColor(value);

    return Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(size, size), backgroundColor: color,
        ),
        child: Text(value, style: TextStyle(fontSize: 32)),
        onPressed: () => selectField(value, x, y),
      ),
    );
  }

  void selectField(String value, int x, int y) {
    if (value == Player.none) {
      final newValue = lastMove == Player.X ? Player.O : Player.X;

      setState(() {
        lastMove = newValue;
        matrix[x][y] = newValue;
      });

      if (isWinner(x, y)) {
        showEndDialog('Player $newValue Won');
      } else if (isEnd()) {
        showEndDialog('Undecided Game');
      }
    }

    //triple tap checker
    if (value == Player.X) {
      count++;
      if (count==3) {
        count=0;
        count0=0;
        Navigator.pushNamed(context, '/home_temp');
      }
    }
    if (value == Player.O) {
      count0++;
      if (count0==3) {
        count=0;
        count0=0;
        Navigator.pushNamed(context, '/home_temp');
      }
    }
  }

  bool isEnd() =>
      matrix.every((values) => values.every((value) => value != Player.none));

  /// Check out logic here: https://stackoverflow.com/a/1058804
  bool isWinner(int x, int y) {
    var col = 0, row = 0, diag = 0, rdiag = 0;
    final player = matrix[x][y];
    final n = countMatrix;

    for (int i = 0; i < n; i++) {
      if (matrix[x][i] == player) col++;
      if (matrix[i][y] == player) row++;
      if (matrix[i][i] == player) diag++;
      if (matrix[i][n - i - 1] == player) rdiag++;
    }

    return row == n || col == n || diag == n || rdiag == n;
  }

  Future showEndDialog(String title) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text('Press to Restart the Game'),
      actions: [
        ElevatedButton(
          onPressed: () {
            count=0;
            count0=0;
            setEmptyFields();
            Navigator.of(context).pop();
          },
          child: Text('Restart'),
        )
      ],
    ),
  );

}