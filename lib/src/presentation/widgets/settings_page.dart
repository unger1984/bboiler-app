import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:bboiler/src/presentation/blocs/settings_bloc.dart';
import 'package:bboiler/src/presentation/widgets/common/bottom_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class SettingsPage extends StatefulWidget {
  final SettingsEntity settingsInit;
  final SessionEntity sessionInit;

  const SettingsPage({Key? key, required this.sessionInit, required this.settingsInit}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final pinTenController = TextEditingController();
  final pinPumpController = TextEditingController();

  @override
  void initState() {
    final settings = BlocProvider.of<SettingsBLoC>(context).state.data;
    pinPumpController.text = settings.pumpPin.toString();
    pinTenController.text = settings.tenPin.toString();
    super.initState();
  }

  void handleSave() {
    final pinTen = int.tryParse(pinTenController.value.text);
    final pinPump = int.tryParse(pinPumpController.value.text);
    if (pinTen != null && pinPump != null) {
      BlocProvider.of<SettingsBLoC>(context).add(SaveSettingsEvent(tenPin: pinTen, pumpPin: pinPump));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SettingsBLoC, SettingsState>(
        builder: (context, settings) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Тен PIN №'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          textAlign: TextAlign.end,
                          controller: pinTenController,
                          decoration: const InputDecoration(labelText: "pin"),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     const Text('Тен ШИМ PIN №'),
                  //     SizedBox(
                  //       width: 100,
                  //       child: TextField(
                  //         textAlign: TextAlign.end,
                  //         controller: pinPWMController,
                  //         decoration: const InputDecoration(labelText: "pin"),
                  //         keyboardType: TextInputType.number,
                  //         inputFormatters: <TextInputFormatter>[
                  //           FilteringTextInputFormatter.digitsOnly,
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Насос PIN №'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          textAlign: TextAlign.end,
                          controller: pinPumpController,
                          decoration: const InputDecoration(labelText: "pin"),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: handleSave,
                      child: const Text('Сохранить'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomPanel(),
    );
  }
}
