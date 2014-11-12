<?php
/**
 * Controller des compétences
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
namespace Dk\Controller;

use Silex\Application;

class Skills
{
   /**
    * Affichage de la page d'accueil des compétences
    *
    * @param  Application $app
    * @return string
    */
   public function main(Application $app)
   {
      return $app['twig']->render("skills.twig", array());
   }
}