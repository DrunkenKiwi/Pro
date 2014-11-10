<?php
/**
 * Autoloader du namespace Dk
 *
 * @author GIL Morgan gilmorgan.pro@gmail.com
 */
spl_autoload_register(function ($className){
   if(preg_match('/^Dk/', $className)){            
      require_once __DIR__.str_replace("\\","/",preg_replace('/^Dk/','',$className)).".php";
   }
});
