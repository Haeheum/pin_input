import 'package:flutter/material.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    super.key,
    required this.isLightTheme,
    required this.toggleTheme,
  });

  final bool isLightTheme;
  final void Function() toggleTheme;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: toggleTheme,
              icon: Icon(isLightTheme ? Icons.nightlight : Icons.sunny),
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 80,
                        child: Center(
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onTapOutside: (_) {
                              FocusScope.of(context).unfocus();
                            },
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 80,
                        child: Center(
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onTapOutside: (_) {
                              FocusScope.of(context).unfocus();
                            },
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 80,
                        child: Center(
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onTapOutside: (_) {
                              FocusScope.of(context).unfocus();
                            },
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 80,
                        child: Center(
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).unfocus();
                              }
                            },
                            onTapOutside: (_) {
                              FocusScope.of(context).unfocus();
                            },
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.zero,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('Resend'),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
