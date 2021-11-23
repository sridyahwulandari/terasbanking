<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "setoran".
 *
 * @property int $id_setoran
 * @property int $id_rekening
 * @property string $tanggal
 * @property string $no_rekening
 * @property string $nama_pemilik_rekening
 * @property string $jumlah
 * @property string $biaya_admin
 */
class Setoran extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'setoran';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_rekening', 'tanggal', 'no_rekening', 'nama_pemilik_rekening', 'jumlah', 'biaya_admin'], 'required'],
            [['id_rekening'], 'integer'],
            [['tanggal'], 'safe'],
            [['no_rekening', 'nama_pemilik_rekening', 'jumlah', 'biaya_admin'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_setoran' => 'Id Setoran',
            'id_rekening' => 'Id Rekening',
            'tanggal' => 'Tanggal',
            'no_rekening' => 'No Rekening',
            'nama_pemilik_rekening' => 'Nama Pemilik Rekening',
            'jumlah' => 'Jumlah',
            'biaya_admin' => 'Biaya Admin',
        ];
    }
    public function getRekening()
    {
        return $this->hasOne(Rekening::className(), ['id_rekening' => 'id_rekening']);
    }
}
