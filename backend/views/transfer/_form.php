<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Transfer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transfer-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tanggal')->widget(DatePicker::classname(), [
            'options' => ['placeholder' => 'Pilih Tanggal...'],
            'pluginOptions' => [
                'autoclose' =>true,
                'format' => 'yyyy-mm-dd'
            ]
            ]); ?>

    <?php
        $dataPost=ArrayHelper::map(\backend\models\Rekening::find()->asArray()->all(), 'id_rekening', 'bank');
        echo $form->field($model, 'id_rekening')
            ->dropDownList(
                $dataPost,           
                ['id_rekening'=>'bank']
            );
    ?>

    <?= $form->field($model, 'rekening_tujuan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_pemilik_rekening')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jumlah')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_referensi_nasabah')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'biaya')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
