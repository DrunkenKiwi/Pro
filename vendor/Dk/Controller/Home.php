<?php
/**
 * Controller de l'accueil
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
namespace Dk\Controller;

use Silex\Application;

class Home
{
   /**
    * Affichage de la page d'accueil
    *
    * @param Application $app
    * @return  string
    */
   public function Home(Application $app)
   {
      return $app["twig"]->render("home.twig",array());
   }
}