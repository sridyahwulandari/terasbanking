<?php

use yii\helpers\Html;
use dosamigos\chartjs\ChartJs;
use backend\models\Rekening;
/* @var $this yii\web\View */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
// $this->title = 'Welcome to web admin';
// ?>

<head>

</head>

<body>
<center>
    <h2><b>SALDO TERAS BANKING SISTEM</b></h2>
</center>

<section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <P>Rp. 50.000.000</P>

                <p>Saldo Bank BCA</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <?= Html::a('Rekening', ['rekening/index'], ['class' => 'small-box-footer']) ; ?>
              <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
              <P>Rp. 50.000.000</P>

              <p>Saldo Bank BRI</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <?= Html::a('Rekening', ['rekening/index'], ['class' => 'small-box-footer']) ; ?>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
              <P>Rp. 50.000.000</P>

              <p>Saldo Bank BNI</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <?= Html::a('Rekening', ['rekening/index'], ['class' => 'small-box-footer']) ; ?>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
              <P>Rp. 50.000.000</P>

              <p>Saldo Bank MANDIRI</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <?= Html::a('Rekening', ['rekening/index'], ['class' => 'small-box-footer']) ; ?>
            </div>
          </div>
        </div>
      </div>
</section>
          <!-- ./col -->
</body>
</html>

<div class="site-index">

    <h1><?= Html::encode($this->title) ?></h1>
    
    
</div>


<script type="text/javascript" src="js/Chart.js"></script>

