<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='http://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"http://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
