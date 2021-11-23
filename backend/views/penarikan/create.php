<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Penarikan */

$this->title = 'Create Penarikan';
$this->params['breadcrumbs'][] = ['label' => 'Penarikans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penarikan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
