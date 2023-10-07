class landing1 extends StatelessWidget {
  const landing1({Key? key}) : super (key: key) ;
  @override
  Widget build (BuildContext context) {
  return Scaffold(
  appBar: CommonAppBar •getAppBar () ,
  bottomNavigationBar: CommonFooterMenu( cntext) •getFooterMenu (3) ,
  body: Center(
  child: ElevatedButton (
  onPressed: () {
  / Navigate back to first screen when tapped.
  3,
  child: const Text ('groups screen'),
  ), // ElevatedButton
  / Center
  );
  /Scaffold