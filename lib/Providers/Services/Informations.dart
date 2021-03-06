import 'package:flutter/foundation.dart';
import 'package:refontnanews/Providers/Models/Commentaire.dart';
import 'package:refontnanews/Providers/Models/Information.dart';

class Informations with ChangeNotifier {
  List<Information> _items = [
    Information(
        idInfo: 0,
        title:
            'People: la dernière sortie de Konnie Toure qui fait bruit à Abidjan',
        description:
            'Aujourd\'hui parmi les femmes de médias les plus suivies et les 30 personnalités féminines qui font la Côte d’Ivoire selon le classement du journal en ligne œil d’Afrique, l’animatrice de « On s’éclate » fait souvent rêver ses fans via sa page officielle facebook avec des sorties qui touchent.Ainsi, la journée d\'hier a été marquée par une publication aussi comique que plaisante qui a fait réagir bon nombre de ses admirateurs.En effet, la dame de presse y écrit :" Pourquoi quand je suis concentrée, je ressemble à djoula comme ça " suivi de "rire", le tout avec une photo qui en dit long.Un message qui a évidemment fait rire les nombreux lecteurs, au point de capter l\'attention de plusieurs fans d\'Abidjan.Pour rappel, l\'animatrice a annoncé officiellement le 12 juin 2015 sa démission de la Radio nostalgie pour rejoindre Vibe Radio, la toute nouvelle radio qui venait de débarquer en Côte d\'Ivoire, où elle occupe le poste de directrice des programmes.Il est à noter aussi, qu\'en dehors de ses activité radiophoniques, elle est la directrice de « KonnieVence », une entreprise qu’elle a mis sur pied',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/dc8eb4696cdb86d7e5532383df5331e6?quality=uhq&format=webp&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-03 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/law-justice/f7e26015117e0f80eee1de0f480f63c5',
        comment: [
          Commentaire(
              id: 0,
              pseudo: 'Abou',
              commentaire: 'La Côte d\'Ivoire es belle',
              countLiked: 45,
              countdisliked: 0,
              date: '21h'),
          Commentaire(
              id: 1,
              pseudo: 'Affou',
              commentaire: 'Abobo la Joie',
              countLiked: 100,
              countdisliked: 2,
              date: '2min')
        ]),
    Information(
        idInfo: 1,
        title: 'Education: Resultat du BAC',
        description:
            'Les résultats du baccalauréat session 2020 sont connus depuis le 14 août. Malgré une année scolaire en dent de scie due aux grèves, mais également à la Covid-19 certains élèves et établissements se sont démarqués de la masse. Ainsi sur les 51 meilleurs bacheliers 2020, 23 sont des filles soit 45% et 55% des garçons soit 28 jeunes garçons.',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/2fed6a1f7579712e171e67ab6c1c8f33?quality=uhq&format=jpeg&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-01 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/education/cbf2eba322a0ee28026b8bf61aaa3849',
        comment: [
          Commentaire(
              id: 2,
              pseudo: 'Sery',
              commentaire: 'Abobo la Joie',
              countLiked: 100,
              countdisliked: 2,
              date: '2min'),
          Commentaire(
              id: 3,
              pseudo: 'Kouamé',
              commentaire: 'Marcory la Paix',
              countLiked: 200,
              countdisliked: 50,
              date: '5min')
        ]),
    Information(
        idInfo: 2,
        title:
            'Un manifestant poignarde un policier lors d\'une marche et se rend compte que c\'est son oncle',
        description:
            'Lors des Marches de protestation, l\'on assiste très souvent à des échauffourées qui aboutissent à des situations dramatiques. Lisons cette histoire qui dépeint la situation d\'un jeune élève qui regrette son acte posé pendant une marche de protestation',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/645f11f22623cdbc7868aa30d048f5c0?quality=uhq&format=webp&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-01 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/crime/e38c9cc31e2602b6800685a18e1f9d5f',
        comment: [
          Commentaire(
              id: 4,
              pseudo: 'Koffi',
              commentaire: 'Plateau la Joie',
              countLiked: 100,
              countdisliked: 2,
              date: '21min')
        ]),
    Information(
        idInfo: 3,
        title: 'Education: Resultat du BAC',
        description:
            'Les résultats du baccalauréat session 2020 sont connus depuis le 14 août. Malgré une année scolaire en dent de scie due aux grèves, mais également à la Covid-19 certains élèves et établissements se sont démarqués de la masse. Ainsi sur les 51 meilleurs bacheliers 2020, 23 sont des filles soit 45% et 55% des garçons soit 28 jeunes garçons.',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/2fed6a1f7579712e171e67ab6c1c8f33?quality=uhq&format=jpeg&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-01 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/education/cbf2eba322a0ee28026b8bf61aaa3849',
        comment: [
          Commentaire(
              id: 5,
              pseudo: 'Alpha',
              commentaire: 'Abobo la Joie',
              countLiked: 100,
              countdisliked: 2,
              date: '2min')
        ]),
    Information(
        idInfo: 4,
        title:
            'People: la dernière sortie de Konnie Toure qui fait bruit à Abidjan',
        description:
            'Aujourd\'hui parmi les femmes de médias les plus suivies et les 30 personnalités féminines qui font la Côte d’Ivoire selon le classement du journal en ligne œil d’Afrique, l’animatrice de « On s’éclate » fait souvent rêver ses fans via sa page officielle facebook avec des sorties qui touchent.Ainsi, la journée d\'hier a été marquée par une publication aussi comique que plaisante qui a fait réagir bon nombre de ses admirateurs.En effet, la dame de presse y écrit :" Pourquoi quand je suis concentrée, je ressemble à djoula comme ça " suivi de "rire", le tout avec une photo qui en dit long.Un message qui a évidemment fait rire les nombreux lecteurs, au point de capter l\'attention de plusieurs fans d\'Abidjan.Pour rappel, l\'animatrice a annoncé officiellement le 12 juin 2015 sa démission de la Radio nostalgie pour rejoindre Vibe Radio, la toute nouvelle radio qui venait de débarquer en Côte d\'Ivoire, où elle occupe le poste de directrice des programmes.Il est à noter aussi, qu\'en dehors de ses activité radiophoniques, elle est la directrice de « KonnieVence », une entreprise qu’elle a mis sur pied',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/dc8eb4696cdb86d7e5532383df5331e6?quality=uhq&format=webp&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-03 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/law-justice/f7e26015117e0f80eee1de0f480f63c5',
        comment: [
          Commentaire(
              id: 1,
              pseudo: 'Boudre',
              commentaire: 'Agboville c\'est notre champ',
              countLiked: 500,
              countdisliked: 0,
              date: '2min')
        ]),
    Information(
        idInfo: 5,
        title:
            'Un manifestant poignarde un policier lors d\'une marche et se rend compte que c\'est son oncle',
        description:
            'Lors des Marches de protestation, l\'on assiste très souvent à des échauffourées qui aboutissent à des situations dramatiques. Lisons cette histoire qui dépeint la situation d\'un jeune élève qui regrette son acte posé pendant une marche de protestation',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/645f11f22623cdbc7868aa30d048f5c0?quality=uhq&format=webp&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-01 11:13:55',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/crime/e38c9cc31e2602b6800685a18e1f9d5f'),
    Information(
        idInfo: 5,
        title:
            'Violation de l\'espace de l\'Eglise catholique : voici la sanction qui guette Kobenan Adjoumani',
        description:
            'La Côte d\'Ivoire est secouée de toutes parts, depuis l\'annonce de la candidature du président Alassane Ouattara, à un troisième mandat. Marches de protestation réprimées, emprisonnements de manifestants, destruction de bien publics et privés, morts d\'hommes. Tout ça, à deux mois de la présidentielle, dont '
            'les conditions ne sont pas réunies pour une élection apaisée, juste, crédible et transparente'
            ', selon Tidjane Thiam, qui l\'a exprimé sur le plateau de TV5',
        image:
            'https://res.6chcdn.feednews.com/assets/v2/3f6a984f88e065575840dcdb7e02140f?quality=uhq&format=webp&resize=720',
        countComment: 45,
        countLike: 20,
        date: '2020-09-02 17:55:44',
        siteWeb: 'OperaNews.com',
        url:
            'https://ci.opera.news/ci/fr/crime/e38c9cc31e2602b6800685a18e1f9d5f'),
  ];
  List<Information> get items {
    return [..._items];
  }
}
