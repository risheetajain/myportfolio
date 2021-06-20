import 'package:flutter/material.dart';
import 'package:rubber/rubber.dart';

class Rubber extends StatefulWidget {
  @override
  _RubberState createState() => _RubberState();
}

class _RubberState extends State<Rubber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("Default"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Menu"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Spring settings"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpringPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Scrolling"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Dismissable"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DismissablePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
class DefaultPage extends StatefulWidget {
  DefaultPage({Key key}) : super(key: key);

  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> with SingleTickerProviderStateMixin {

  RubberAnimationController _controller;

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        halfBoundValue: AnimationControllerValue(percentage: 0.5),
        lowerBoundValue: AnimationControllerValue(pixel: 200),
        duration: Duration(milliseconds: 200)
    );
    _controller.addStatusListener(_statusListener);
    _controller.animationState.addListener(_stateListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeStatusListener(_statusListener);
    _controller.animationState.removeListener(_stateListener);
    super.dispose();
  }

  void _stateListener() {
    print("state changed ${_controller.animationState.value}");
  }

  void _statusListener(AnimationStatus status) {
    print("changed status ${_controller.status}");
  }

  void _expand() {
    _controller.expand();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Default",style: TextStyle(color: Colors.cyan[900]),),
      ),
      body: Container(
        child: RubberBottomSheet(
          lowerLayer: _getLowerLayer(),
          upperLayer: _getUpperLayer(),
          animationController: _controller,
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "flt1",
            onPressed: () {
              _controller.setVisibility(!_controller.visibility.value);
            },
            backgroundColor: Colors.cyan[900],
            foregroundColor: Colors.cyan[400],
            child: Icon(Icons.visibility),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: FloatingActionButton(
              heroTag: "flt2",
              onPressed: _expand,
              backgroundColor: Colors.cyan[900],
              foregroundColor: Colors.cyan[400],
              child: Icon(Icons.vertical_align_top),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getLowerLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan[100]
      ),
    );
  }
  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan
      ),
    );}}

class DismissablePage extends StatefulWidget {

  DismissablePage({Key key}) : super(key: key);

  @override
  _DismissablePageState createState() => _DismissablePageState();

}

class _DismissablePageState extends State<DismissablePage> with SingleTickerProviderStateMixin {

  RubberAnimationController _controller;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        //lowerBoundValue: AnimationControllerValue(percentage: 0.0),
        upperBoundValue: AnimationControllerValue(percentage: 0.9),
        duration: Duration(milliseconds: 200),
        dismissable: true
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissable",style: TextStyle(color: Colors.cyan[900]),),
      ),
      body: Container(
        child: RubberBottomSheet(
          onDragEnd: (){
            print("onDragEnd");
          },
          scrollController: _scrollController,
          lowerLayer: _getLowerLayer(),
          upperLayer: _getUpperLayer(),
          animationController: _controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _controller.expand();
        },
      ),
    );
  }

  Widget _getLowerLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan[100]
      ),
    );
  }

  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan
      ),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("Item $index"));
          },
          itemCount: 20
      ),
    );
  }
}

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with SingleTickerProviderStateMixin {

  RubberAnimationController _controller;

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        dismissable: true,
        lowerBoundValue: AnimationControllerValue(pixel: 100),
        upperBoundValue: AnimationControllerValue(pixel: 400),
        duration: Duration(milliseconds: 200)
    );
    super.initState();
  }

  void _expand() {
    print("expand");
    _controller.launchTo(_controller.value,_controller.upperBound,velocity: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu",style: TextStyle(color: Colors.cyan[900]),),
      ),
      body: Container(
        child: RubberBottomSheet(
          lowerLayer: _getLowerLayer(),
          upperLayer: _getUpperLayer(),
          menuLayer: _getMenuLayer(),
          animationController: _controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "flt3",
        onPressed: _expand,
        backgroundColor: Colors.cyan[900],
        foregroundColor: Colors.cyan[400],
        child: Icon(Icons.vertical_align_top),
      ),
    );
  }

  Widget _getLowerLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan[100]
      ),
    );
  }
  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan
      ),
    );
  }
  Widget _getMenuLayer() {
    return Container(
      height: 100,
      child: Center(
        child: Text("MENU"),
      ),
      decoration: BoxDecoration(
          color: Colors.red
      ),
    );
  }

}

class ScrollPage extends StatefulWidget {
  ScrollPage({Key key}) : super(key: key);

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage>
    with SingleTickerProviderStateMixin {
  RubberAnimationController _controller;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        halfBoundValue: AnimationControllerValue(percentage: 0.5),
        duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scrolling",
          style: TextStyle(color: Colors.cyan[900]),
        ),
      ),
      body: Container(
        child: RubberBottomSheet(
          scrollController: _scrollController,
          lowerLayer: _getLowerLayer(),
          header: Container(
            color: Colors.yellow,
          ),
          headerHeight: 60,
          upperLayer: _getUpperLayer(),
          animationController: _controller,
        ),
      ),
    );
  }

  Widget _getLowerLayer() {
    return Container(
      decoration: BoxDecoration(color: Colors.cyan[100]),
    );
  }

  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(color: Colors.cyan),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("Item $index"));
          },
          itemCount: 100),
    );
  }
}

class SpringPage extends StatefulWidget {
  SpringPage({Key key}) : super(key: key);

  @override
  _SpringPageState createState() => _SpringPageState();
}

class _SpringPageState extends State<SpringPage> with SingleTickerProviderStateMixin {

  RubberAnimationController _controller;

  double _dampingValue = DampingRatio.HIGH_BOUNCY;
  double _stiffnessValue = Stiffness.HIGH;

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        lowerBoundValue: AnimationControllerValue(pixel: 100),
        upperBoundValue: AnimationControllerValue(percentage: 0.9),
        springDescription: SpringDescription.withDampingRatio(
            mass: 1,
            stiffness: _stiffnessValue,
            ratio: _dampingValue
        ),
        duration: Duration(milliseconds: 300)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spring",style: TextStyle(color: Colors.cyan[900]),),
      ),
      body: Column(
        children: <Widget>[
          Text("Daming ratio",style: _heading()),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(
                value: DampingRatio.HIGH_BOUNCY,
                groupValue: _dampingValue,
                onChanged: _handleDampingValueChange,
              ),
              new Text('High'),
              new Radio(
                value: DampingRatio.MEDIUM_BOUNCY,
                groupValue: _dampingValue,
                onChanged: _handleDampingValueChange,
              ),
              new Text('Medium'),
              new Radio(
                value: DampingRatio.LOW_BOUNCY,
                groupValue: _dampingValue,
                onChanged: _handleDampingValueChange,
              ),
              new Text('Low'),
              new Radio(
                value: DampingRatio.NO_BOUNCY,
                groupValue: _dampingValue,
                onChanged: _handleDampingValueChange,
              ),
              new Text('No'),
            ],
          ),
          Text("Stiffness",style: _heading(),),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(
                value: Stiffness.HIGH,
                groupValue: _stiffnessValue,
                onChanged: _handleStiffnessValueChange,
              ),
              new Text('High'),
              new Radio(
                value: Stiffness.MEDIUM,
                groupValue: _stiffnessValue,
                onChanged: _handleStiffnessValueChange,
              ),
              new Text('Medium'),
              new Radio(
                value: Stiffness.LOW,
                groupValue: _stiffnessValue,
                onChanged: _handleStiffnessValueChange,
              ),
              new Text('Low'),
              new Radio(
                value: Stiffness.VERY_LOW,
                groupValue: _stiffnessValue,
                onChanged: _handleStiffnessValueChange,
              ),
              new Text('Very low'),
            ],
          ),
          Expanded(
            child: RubberBottomSheet(
              lowerLayer: _getLowerLayer(),
              upperLayer: _getUpperLayer(),
              animationController: _controller,
            ),
          ),
        ],
      ),
    );
  }

  void _handleStiffnessValueChange(double value) {
    _stiffnessValue = value;
    setState(() {
      _setController();
    });
  }

  void _handleDampingValueChange(double value) {
    _dampingValue = value;
    setState(() {
      _setController();
    });
  }

  Widget _getLowerLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan[100]
      ),
    );
  }
  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan
      ),
    );
  }


  void _setController() {
    _controller.springDescription = SpringDescription.withDampingRatio(
        mass: 1,
        stiffness: _stiffnessValue,
        ratio: _dampingValue
    );
  }

  TextStyle _heading() {
    return TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  }
}