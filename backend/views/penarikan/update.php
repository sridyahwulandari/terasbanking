<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Penarikan */

$this->title = 'Update Penarikan: ' . $model->id_penarikan;
$this->params['breadcrumbs'][] = ['label' => 'Penarikans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_penarikan, 'url' => ['view', 'id' => $model->id_penarikan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="penarikan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
