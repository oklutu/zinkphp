<?php
/**
 * Sql Condition '>'
 *
 * @author:  thu
 * @version: 1.0.0
 * @change:
 *    1. 2016/5/15 @thu: 创建；
 */

namespace Zink\Db\Condition;


class GreaterThan extends SqlCondition
{
    public function __construct($key, $value, $alias = null)
    {
        parent::__construct($key, $value, $alias, self::CDN_GT);
    }
}