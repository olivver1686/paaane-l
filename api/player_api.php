<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='http://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"http://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
