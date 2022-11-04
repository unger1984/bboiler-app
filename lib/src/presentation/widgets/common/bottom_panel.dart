import 'package:bboiler/src/presentation/blocs/route_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class BottomPanel extends StatelessWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 5.0,
          ),
        ],
        color: Colors.white,
      ),
      child: BlocBuilder<RouteBLoC, RouteState>(
        builder: (context, state) {
          var index = 0;
          if (state is BoilingRouteState) index = 0;
          if (state is SettingsRouteState) index = 1;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => BlocProvider.of<RouteBLoC>(context).add(const BoilingRouteEvent()),
                child: Text(
                  'Варка',
                  style: TextStyle(color: index == 0 ? Colors.green : Colors.blue),
                ),
              ),
              TextButton(
                onPressed: () => BlocProvider.of<RouteBLoC>(context).add(const SettingsRouteEvent()),
                child: Text(
                  'Настройки',
                  style: TextStyle(color: index == 1 ? Colors.green : Colors.blue),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
