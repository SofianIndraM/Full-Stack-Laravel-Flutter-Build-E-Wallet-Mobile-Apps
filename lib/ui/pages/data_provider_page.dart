import 'package:bank_sha/models/operator_card_model.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/data_package_page.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/operator_card/operator_card_bloc.dart';
import '../../shared/shared_methods.dart';

class DataProviderPage extends StatefulWidget {
  const DataProviderPage({super.key});

  @override
  State<DataProviderPage> createState() => _DataProviderPageState();
}

class _DataProviderPageState extends State<DataProviderPage> {
  OperatorCardModel? selectedOperatorCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beli Data',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_bg_card.png',
                width: 80,
              ),
              SizedBox(
                width: 16,
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthSuccess) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.user.cardNumber!.replaceAllMapped(
                              RegExp(r".{4}"), (match) => "${match.group(0)} "),
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Balance: ${formatCurrency(state.user.balance ?? 0)}',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    );
                  }
                  return Container();
                },
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          BlocProvider(
            create: (context) => OperatorCardBloc()..add(OperatorCardGet()),
            child: BlocBuilder<OperatorCardBloc, OperatorCardState>(
              builder: (context, state) {
                print(state);
                if (state is OperatorCardSuccess) {
                  return Column(
                    children: state.operatorCards.map((operatorCard) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOperatorCard = operatorCard;
                          });
                        },
                        child: DataProviderItem(
                          operatorCard: operatorCard,
                          isSelected:
                              operatorCard.id == selectedOperatorCard?.id,
                        ),
                      );
                    }).toList(),
                  );
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
      floatingActionButton: (selectedOperatorCard != null)
          ? Container(
              margin: EdgeInsets.all(24),
              child: CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataPackagePage(
                        operatorCard: selectedOperatorCard!,
                      ),
                    ),
                  );
                },
              ),
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
