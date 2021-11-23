<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "pembayaran".
 *
 * @property int $id_pembayaran
 * @property int $id_rekening
 * @property string $tanggal
 * @property string $tagihan
 * @property string $no_pelanggan
 * @property string $nominal
 * @property string $biaya_admin
 */
class Pembayaran extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pembayaran';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_rekening', 'tanggal', 'tagihan', 'no_pelanggan', 'nominal', 'biaya_admin'], 'required'],
            [['id_rekening'], 'integer'],
            [['tanggal'], 'safe'],
            [['tagihan', 'no_pelanggan', 'nominal', 'biaya_admin'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_pembayaran' => 'Id Pembayaran',
            'id_rekening' => 'Id Rekening',
            'tanggal' => 'Tanggal',
            'tagihan' => 'Tagihan',
            'no_pelanggan' => 'No Pelanggan',
            'nominal' => 'Nominal',
            'biaya_admin' => 'Biaya Admin',
        ];
    }

    public function getRekening()
    {
        return $this->hasOne(Rekening::className(), ['id_rekening' => 'id_rekening']);
    }
}
