<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='http://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"http://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
