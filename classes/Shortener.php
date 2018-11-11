<?php
    require dirname(__FILE__).'../../app/config.php';

class Shortener {

    protected $DB;

    public function __construct(){
        $this->DB = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    }

    //generate a unique code for shortening url
    protected function generateCode($num){
        return base_convert($num, 10, 36);
    }

    // the actual URL Shortening Function
    public function makeCode($url){
        
        $url = trim($url);
        if(!filter_var($url, FILTER_VALIDATE_URL)){
            return '';
        }

        $url = $this->DB->escape_string($url);
        $exist = $this->DB->query("SELECT code FROM links WHERE url = '{$url}'");

        if($exist->num_rows){

            return $exist->fetch_object()->code;

        }else{

            // insert record Without a code
            $this->DB->query("INSERT INTO links (url, created) VALUES('{$url}', now())");

            //generate code Based on inserted ID
            $code = $this->generateCode($this->DB->insert_id);

            $this->DB->query("UPDATE links SET code = '{$code}' WHERE url='{$url}'");
            
            return $code;
        }
    }

    public function getURL($code){
        $code = $this->DB->escape_string($code);
        $code = $this->DB->query("SELECT url FROM links WHERE code = '{$code}'");

        if($code->num_rows){
            return $code->fetch_object()->url;
        }
        return '';
    }


}