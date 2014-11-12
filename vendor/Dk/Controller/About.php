<?php
/**
 * Controller de l'a propos
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
namespace Dk\Controller;

use Silex\Application;

class About
{
   /**
    * Page d'accueil
    *
    * @param  Application $app
    * @return string
    */
   public function main(Application $app)
   {
      return $app['twig']->render("about.twig", array());
   }

   /**
    * Ma vie professionnelle
    *
    * @param  Application $app
    * @return string
    */
   public function brain(Application $app)
   {
      return $app['twig']->render("about_brain.twig", array());
   }

   /**
    * Mes gouts et loisirs
    *
    * @param  Application $app
    * @return string
    */
   public function heart(Application $app)
   {
      return $app['twig']->render("about_heart.twig", array());
   }
}