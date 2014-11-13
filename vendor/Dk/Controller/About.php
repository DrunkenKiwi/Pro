<?php
/**
 * Controller de l'a propos
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
namespace Dk\Controller;

use Silex\Application;
use Symfony\Component\Yaml\Parser;

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
        $parser = new Parser();
        $details = $parser->parse(
                                  file_get_contents(
                                        preg_replace("/vendor.*/",'config/about_heart.yml', __DIR__)
                                  )
                           );

        return $app['twig']->render("about_heart.twig", array(
                    "details" => json_encode($details),
              ));
   }
}