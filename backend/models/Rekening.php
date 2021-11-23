<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "rekening".
 *
 * @property int $id_rekening
 * @property string $bank
 * @property string $no_rekening
 * @property string $saldo
 */
class Rekening extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'rekening';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['bank', 'no_rekening', 'saldo'], 'required'],
            [['bank', 'no_rekening'], 'string', 'max' => 50],
            [['saldo'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_rekening' => 'Id Rekening',
            'bank' => 'Bank',
            'no_rekening' => 'No Rekening',
            'saldo' => 'Saldo',
        ];
    }
}
