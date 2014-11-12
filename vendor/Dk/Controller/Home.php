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
   public function Home(Application $app)
   {
      return $app["twig"]->render("home.twig",array());
   }
}