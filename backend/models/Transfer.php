<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "transfer".
 *
 * @property int $id_transfer
 * @property string $tanggal
 * @property int $id_rekening
 * @property string $rekening_tujuan
 * @property string $nama_pemilik_rekening
 * @property string $jumlah
 * @property string $no_referensi_nasabah
 * @property string $biaya
 */
class Transfer extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transfer';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tanggal', 'id_rekening', 'rekening_tujuan', 'nama_pemilik_rekening', 'jumlah', 'no_referensi_nasabah', 'biaya'], 'required'],
            [['tanggal'], 'safe'],
            [['id_rekening'], 'integer'],
            [['rekening_tujuan', 'nama_pemilik_rekening', 'jumlah', 'no_referensi_nasabah'], 'string', 'max' => 50],
            [['biaya'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_transfer' => 'Id Transfer',
            'tanggal' => 'Tanggal',
            'id_rekening' => 'Id Rekening',
            'rekening_tujuan' => 'Rekening Tujuan',
            'nama_pemilik_rekening' => 'Nama Pemilik Rekening',
            'jumlah' => 'Jumlah',
            'no_referensi_nasabah' => 'No Referensi Nasabah',
            'biaya' => 'Biaya',
        ];
    }

    public function getRekening()
    {
        return $this->hasOne(Rekening::className(), ['id_rekening' => 'id_rekening']);
    }
}
