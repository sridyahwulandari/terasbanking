<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Absensi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="absensi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php
    $dataPost=ArrayHelper::map(\backend\models\Karyawan::find()->asArray()->all(), 'id_karyawan', 'nama_lengkap');
	echo $form->field($model, 'id_karyawan')
        ->dropDownList(
            $dataPost,           
            ['id_karyawan'=>'nama_lengkap']
        );
    ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <?= $form->field($model, 'jam_masuk')->textInput() ?>

    <?= $form->field($model, 'jam_keluar')->textInput() ?>

    <?php
            echo $form->field($model, 'keterangan')->dropDownList(
                ['hadir' => 'Hadir',  'sakit' => 'Sakit', 'izin' => 'Izin', 'alpa' => 'Alpa']
        ); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
