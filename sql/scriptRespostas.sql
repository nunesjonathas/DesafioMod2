use desafio2igti;
-- P1 Qual o país possui a maior média de vitórias? No geral (independente do jogo).

select nome_pais, avg(num_vitorias)
from jogador, pais
where jogador.cod_pais = pais.cod_pais
group by(nome_pais);


-- P2 Qual país possui o maior número de derrotas no Jogo da velha?
-- 1 Dama, 2 Velha, 3 Xadrez
select nome_pais, sum(num_derrotas)
from jogador, pais, jogo
where jogador.cod_pais = pais.cod_pais and nome_jogo = 'Jogo da velha' and jogador.cod_jogo = jogo.cod_jogo
group by(nome_pais);

-- P3 Qual o jogo possui o maior número de partidas?


select nome_jogo, sum(total_partidas)
from jogador, jogo
where jogador.cod_jogo = jogo.cod_jogo
group by(nome_jogo);


-- P4 Qual o jogo preferido entre as mulheres?
select nome_jogo, count(genero)
from jogador, jogo
where jogador.cod_jogo = jogo.cod_jogo and jogador.genero = 'Feminino'
group by(nome_jogo);


-- P5 Qual o pais com mais jogadores de Dama?

select nome_pais, count(jogador.cod_pais)
from jogador, pais, jogo
where nome_jogo = 'Dama' and jogador.cod_pais = pais.cod_pais and jogador.cod_jogo = jogo.cod_jogo
group by(nome_pais);
 
