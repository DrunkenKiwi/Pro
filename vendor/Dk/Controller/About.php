<?php
/**
 * Controller de l'a propos
 * 
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
namespace Dk\Controller;

use Silex\Application;

class About{
   public function main(Application $app){
      return $app['twig']->render("about.twig", array());
   }
}