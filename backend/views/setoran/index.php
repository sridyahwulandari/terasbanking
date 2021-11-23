<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SetoranSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Setorans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="setoran-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Setoran', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id_setoran',
            // 'id_rekening',
            'rekening.bank',
            'tanggal',
            'no_rekening',
            'nama_pemilik_rekening',
            // 'jumlah',
            [ 
                'attribute' => 'jumlah', 
                'value' => function ($model)
                { 
                    return "Rp. ".number_format($model->jumlah).",-"; 
                },
            ],
            // 'biaya_admin',
            [ 
                'attribute' => 'biaya_admin', 
                'value' => function ($model)
                { 
                    return "Rp. ".number_format($model->biaya_admin).",-"; 
                },
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        //'pjax' => true, // pjax is set to always true for this demo
        // set your toolbar
        'toolbar' =>  [

            '{export}',
            '{toggleData}',
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        // set export properties
        'export' => [
            'fontAwesome' => true
        ],
        'responsiveWrap' => false,
        // parameters from the demo form
        //'bordered' => $bordered,
        //'striped' => $striped,
        //'condensed' => $condensed,
        //'responsive' => $responsive,
        //'hover' => $hover,
        //'showPageSummary' => $pageSummary,
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => 'Data Setoran Tunai',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 100],
        'autoXlFormat' => true,
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        'export' => [
            'showConfirmAlert' => false,
            'target' => GridView::TARGET_BLANK
        ],
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => 'Data Karyawan',
                'showPageSummary' => true,
            ]

        ],
    ]); ?>
</div>
