import 'package:flutter/material.dart';
import 'package:shoe_app/features/shop/screens/review_screen/widgets/rating_indicator.dart';

class EOverAllRating extends StatelessWidget {
  const EOverAllRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ERatingIndicator(text: '5',value: 1.0,),
              ERatingIndicator(text: '4',value: 0.8,),
              ERatingIndicator(text: '3',value: 0.6,),
              ERatingIndicator(text: '2',value: 0.4,),
              ERatingIndicator(text: '1',value: 0.2,),
    
            ],
          ),
        )
        
      ],
    );
  }
}