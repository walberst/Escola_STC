<?php

class conexaoBD {

    public static $instance;
    private static $sql = "mysql:host=" . HOST . ";dbname=" . BANK;
    private static $user = USER;
    private static $pass = PASS;

    public static function getInstance() {
        if (!isset(self::$instance)) {
            self::$instance = new PDO(self::$sql, self::$user, self::$pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
            self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            self::$instance->setAttribute(PDO::ATTR_ORACLE_NULLS, PDO::NULL_EMPTY_STRING);
        }
        return self::$instance;
    }

}
