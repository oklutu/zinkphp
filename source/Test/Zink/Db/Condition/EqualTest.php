<?php
/**
 *
 *
 * @author:  thu
 * @version: 1.0.0
 * @change:
 *    1. 2016/6/4 @thu: 创建；
 */

namespace Test\Zink\Db\Condition;

use Zink\Db\Condition\Equal;
class EqualTest extends SqlConditionTest
{
    public function setUp()
    {
        $this->_conditionClass = Equal::class;

        parent::setUp(); // TODO: Change the autogenerated stub
    }

    public function dataProvider()
    {
        return [
            ["name", "zero", null, "`name` = :name", [':name' => 'zero']],
            ["name", "zero", "A", "A.name = :A_name", [':A_name' => 'zero']]
        ];
    }
}
