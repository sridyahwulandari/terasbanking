<?php

namespace backend\controllers;

use Yii;
use backend\models\TblPelanggan;
use backend\models\TblPelangganSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * TblPelangganController implements the CRUD actions for TblPelanggan model.
 */
class LaporanController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all TblPelanggan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $tanggal_awal   = Yii::$app->request->post('tanggal_awal');
        $tanggal_akhir  = Yii::$app->request->post('tanggal_akhir');

        return $this->render('index', [
            'tanggal_awal'  => $tanggal_awal,
            'tanggal_akhir' => $tanggal_akhir,
        ]);
    }

    // public function actionLaporan()
    // {

    //     $tanggal_awal   = Yii::$app->request->post('tanggal_awal');
    //     $tanggal_akhir  = Yii::$app->request->post('tanggal_akhir');

    //     return $this->render('index', [
    //     ]);
    // }
}
