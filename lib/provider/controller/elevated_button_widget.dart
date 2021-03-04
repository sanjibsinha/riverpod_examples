import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/any_type_provider_model.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final myModel = Provider.of<ProviderModel>(context, listen: false);
    return ChangeNotifierProvider<ProviderModel>(
      //      <--- ChangeNotifierProvider
      create: (context) => ProviderModel(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue[200],
            child: Consumer<ProviderModel>(
              //                    <--- Consumer
              builder: (context, myModel, child) {
                return FloatingActionButton(
                  onPressed: () => myModel.changeName(),
                  child: Icon(Icons.add),
                  tooltip: 'Change Name',
                );
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.redAccent,
            child: Consumer<ProviderModel>(
              //                    <--- Consumer
              builder: (context, myModel, child) {
                return Text(myModel.littleMonk);
              },
            ),
          ),
        ],
      ),
    );
  }
}
