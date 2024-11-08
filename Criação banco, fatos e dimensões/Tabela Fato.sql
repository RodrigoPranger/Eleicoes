-- Criando tabela Fato
CREATE TABLE DM.FATO_VOTACAO
(
	SK_AGREMIACAO				INT FOREIGN KEY REFERENCES DM.DIM_AGREMIACAO			(SK_AGREMIACAO),
	SK_TEMPO					INT FOREIGN KEY REFERENCES DM.DIM_CALENDARIO			(SK_TEMPO),
	SK_CANDIDATO				INT FOREIGN KEY REFERENCES DM.DIM_CANDIDATO				(SK_CANDIDATO),
	SK_CANDIDATURA				INT FOREIGN KEY REFERENCES DM.DIM_CANDIDATURA			(SK_CANDIDATURA),
	SK_CARGO					INT FOREIGN KEY REFERENCES DM.DIM_CARGO					(SK_CARGO),
	SK_ELEICAO					INT FOREIGN KEY REFERENCES DM.DIM_ELEICAO				(SK_ELEICAO),
	SK_LOCALIDADE				INT FOREIGN KEY REFERENCES DM.DIM_LOCALIDADE			(SK_LOCALIDADE),
	SK_PARTIDO					INT FOREIGN KEY REFERENCES DM.DIM_PARTIDO				(SK_PARTIDO),
	SK_SITUACAO_CANDIDATO		INT FOREIGN KEY REFERENCES DM.DIM_SITUACAO_CANDIDATO	(SK_SITUACAO_CANDIDATO),
	SK_TIPO_ELEICAO				INT FOREIGN KEY REFERENCES DM.DIM_TIPO_ELEICAO			(SK_TIPO_ELEICAO),
	FL_VOTO_TRANSITO			CHAR(1), -- FL = Flag, para valores boleanos
	DS_DESTINO_VOTO				VARCHAR(250),
	QT_VOTOS					INT,
	PRIMARY KEY (SK_AGREMIACAO
				,SK_TEMPO
				,SK_CANDIDATO
				,SK_CANDIDATURA
				,SK_CARGO
				,SK_ELEICAO
				,SK_LOCALIDADE
				,SK_PARTIDO	
				,SK_SITUACAO_CANDIDATO
				,SK_TIPO_ELEICAO
				,FL_VOTO_TRANSITO
				,DS_DESTINO_VOTO)

)