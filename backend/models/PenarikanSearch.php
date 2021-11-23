<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Penarikan;

/**
 * PenarikanSearch represents the model behind the search form of `backend\models\Penarikan`.
 */
class PenarikanSearch extends Penarikan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_penarikan', 'id_rekening'], 'integer'],
            [['tanggal', 'no_rekening', 'nama_pemilik_rekening', 'jumlah', 'biaya_admin'], 'safe'],
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
        $query = Penarikan::find();

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
            'id_penarikan' => $this->id_penarikan,
            'id_rekening' => $this->id_rekening,
            'tanggal' => $this->tanggal,
        ]);

        $query->andFilterWhere(['like', 'no_rekening', $this->no_rekening])
            ->andFilterWhere(['like', 'nama_pemilik_rekening', $this->nama_pemilik_rekening])
            ->andFilterWhere(['like', 'jumlah', $this->jumlah])
            ->andFilterWhere(['like', 'biaya_admin', $this->biaya_admin]);

        return $dataProvider;
    }
}
