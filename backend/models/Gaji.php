<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "gaji".
 *
 * @property int $id_gaji
 * @property string $jabatan
 * @property string $gaji
 */
class Gaji extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'gaji';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['jabatan', 'gaji'], 'required'],
            [['jabatan', 'gaji'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_gaji' => 'Id Gaji',
            'jabatan' => 'Jabatan',
            'gaji' => 'Gaji',
        ];
    }
}
