<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Karyawan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="karyawan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nik')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_lengkap')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_telpon')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textarea(['rows' => 6]) ?>

    <?php
    $dataPost=ArrayHelper::map(\backend\models\Gaji::find()->asArray()->all(), 'id_gaji', 'jabatan');
	echo $form->field($model, 'id_gaji')
        ->dropDownList(
            $dataPost,           
            ['id_gaji'=>'jabatan']
        );
    ?>

    <?php
        echo $form->field($model, 'status')->dropDownList(
            ['0' => 'Aktif', '1' => 'Tidak Aktif']
    ); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
