<?php
/**
 * Fichier d'index
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/vendor/Dk/autoload.php';
ini_set('display_errors', true);

use Symfony\Component\Config\FileLocator;
use Symfony\Component\Routing\Loader\YamlFileLoader;
use Symfony\Component\Routing\RouteCollection;
use Silex\Application;

$app = new Application();

if($_SERVER['SERVER_NAME'] == "pro.dev"){
   ini_set('display_errors', true);
   $app['debug'] = true;
}

$app['routes'] = $app->extend('routes', function (RouteCollection $routes, Application $app) {
    $loader     = new YamlFileLoader(new FileLocator(__DIR__ . '/config'));
    $collection = $loader->load('routes.yml');
    $routes->addCollection($collection);
 
    return $routes;
});

$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__.'/views',
));
 
$app->run();