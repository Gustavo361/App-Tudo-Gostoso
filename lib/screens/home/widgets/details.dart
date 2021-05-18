import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget {
  final Recipe recipe;
  Details(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeTheme,
      padding: EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 10,
      ),
      child: Column(
        //Um child do Container(); que tem uma coluna com muitos filhos (children)
        children: [
          Text(
            this.recipe.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            //Uma linha do Column(); com children
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(
                FontAwesomeIcons.solidClock,
                color: Colors.white,
              ), //Container FaIcon com o ícone
              SizedBox(
                height: 10,
              ), //Container SizedBox pra criar uma caixa moldavel pra dar um espaçamentp (pode ser espaçamento vertical ou horizontal)
              Text(
                "PREPARO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${this.recipe.preparationTime} Min",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.cheese,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Rendimento",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${this.recipe.income} Porções",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Favoritos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                this.recipe.numberOfFavorities.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.solidCommentAlt,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Comentarios",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                this.recipe.numberOfComments.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
