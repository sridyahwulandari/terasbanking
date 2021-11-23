<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Pembayaran;

/**
 * PembayaranSearch represents the model behind the search form of `backend\models\Pembayaran`.
 */
class PembayaranSearch extends Pembayaran
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pembayaran', 'id_rekening'], 'integer'],
            [['tanggal', 'tagihan', 'no_pelanggan', 'nominal', 'biaya_admin'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Pembayaran::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_pembayaran' => $this->id_pembayaran,
            'id_rekening' => $this->id_rekening,
            'tanggal' => $this->tanggal,
        ]);

        $query->andFilterWhere(['like', 'tagihan', $this->tagihan])
            ->andFilterWhere(['like', 'no_pelanggan', $this->no_pelanggan])
            ->andFilterWhere(['like', 'nominal', $this->nominal])
            ->andFilterWhere(['like', 'biaya_admin', $this->biaya_admin]);

        return $dataProvider;
    }
}
