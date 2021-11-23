<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "karyawan".
 *
 * @property int $id_karyawan
 * @property string $nik
 * @property string $nama_lengkap
 * @property string $no_telpon
 * @property string $email
 * @property string $alamat
 * @property int $id_gaji
 * @property string $status
 */
class Karyawan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'karyawan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nik', 'nama_lengkap', 'no_telpon', 'email', 'alamat', 'id_gaji', 'status'], 'required'],
            [['alamat'], 'string'],
            [['id_gaji'], 'integer'],
            [['nik', 'nama_lengkap', 'email', 'status'], 'string', 'max' => 50],
            [['no_telpon'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_karyawan' => 'Id Karyawan',
            'nik' => 'Nik',
            'nama_lengkap' => 'Nama Lengkap',
            'no_telpon' => 'No Telpon',
            'email' => 'Email',
            'alamat' => 'Alamat',
            'id_gaji' => 'Id Gaji',
            'status' => 'Status',
        ];
    }

    public function getGaji()
    {
        return $this->hasOne(Gaji::className(), ['id_gaji' => 'id_gaji']);
    }
}
