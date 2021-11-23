<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\Pembayaran */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pembayaran-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php
        $dataPost=ArrayHelper::map(\backend\models\Rekening::find()->asArray()->all(), 'id_rekening', 'bank');
        echo $form->field($model, 'id_rekening')
            ->dropDownList(
                $dataPost,           
                ['id_rekening'=>'bank']
            );
    ?>

    <?= $form->field($model, 'tanggal')->widget(DatePicker::classname(), [
            'options' => ['placeholder' => 'Pilih Tanggal...'],
            'pluginOptions' => [
                'autoclose' =>true,
                'format' => 'yyyy-mm-dd'
            ]
            ]); ?>


    <?php
            echo $form->field($model, 'tagihan')->dropDownList(
                ['Listrik PLN' => 'Listrik PLN',
                 'BPJS' => 'BPJS',
                 'Telkom' => 'Telkom',
                 'TV Kabel & Internet' => 'TV Kabel & Internet',
                 'Pasca Bayar' => 'Pasca Bayar',
                 'PDAM' => 'PDAM',
                 'Indihome' => 'Indihome']
        ); ?>

    <?= $form->field($model, 'no_pelanggan')->textInput(['maxlength' => true]) ?>

    <?php
            echo $form->field($model, 'nominal')->dropDownList(
                ['20000' => '20000',
                '50000' => '50000',
                '100000' => '100000',
                '200000' => '200000',
                '500000' => '500000',
                '1000000' => '1000000']
        ); ?>

    <?= $form->field($model, 'biaya_admin')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
