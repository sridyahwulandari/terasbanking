<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SetoranSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="setoran-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_setoran') ?>

    <?= $form->field($model, 'id_rekening') ?>

    <?= $form->field($model, 'tanggal') ?>

    <?= $form->field($model, 'no_rekening') ?>

    <?= $form->field($model, 'nama_pemilik_rekening') ?>

    <?php // echo $form->field($model, 'jumlah') ?>

    <?php // echo $form->field($model, 'biaya_admin') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
