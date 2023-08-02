# cl-birl - Birl Language in Common Lisp

## BIRL Language
https://birl-language.github.io/

O BIRL (Bambam's "It's show time" Recursive Language) é a linguagem de
programação mais treze já inventada.
Deve ser utilizada apenas por quem realmente constrói fibra e não é
água com código. É uma linguagem extremamente simples porém com poder
para derrubar todas as árvores do parque Ibirapuera.
Programando em BIRL, é verão o ano todo! 

## Load

```lisp
(asdf:load-system "cl-birl")
```

## Test
```lisp
(asdf:test-system "cl-birl")
```


## Exemplos


Loop com pulo e saída
```lisp
(hora-do-show
  (mais-quero-mais ((m 0 (1+ m))) ((= m 10))
    (ta-comigo-porra
      (ele-que-a-gente-quer? (= m 7)
        (sai-filho-da-puta))
      (que-nao-vai-dar-o-que? (evenp m)
        (vamo-monstro)))

    (ce-quer-ver-essa-porra? "essa porra: " m)))
```
Output
```
essa porra: 1
essa porra: 3
essa porra: 5
```

Loop while
```lisp
(negativa-bambam (x 5) (> x 2)
  (ce-quer-ver-essa-porra? "bora!" x)
  (decf x))
```
Output
```
bora! 5
bora! 4
bora! 3
```

Prompt
```lisp
(hora-do-show
  (que-que-ce-quer-monstrao? x
    (ce-quer-ver-essa-porra? "bambam disse:" x)))
```
Output
```
que que ce quer monstrao? 13
bambam disse: 13
```

Condicional
```lisp
(ta-comigo-porra
  (ele-que-a-gente-quer? (> 1 2)
    (ce-quer-ver-essa-porra? "treze memo carai"))
  (que-nao-vai-dar-o-que? (< 11 2)
    (ce-quer-ver-essa-porra? "quero mais!"))
  (nao-vai-dar-nao
    (ce-quer-ver-essa-porra? "nao vai dar nao")))
```
Output
```
nao vai dar nao
```

Função
```lisp
(oh-o-homi-ai-po bora! (vai)
  (ce-quer-ver-essa-porra? vai))
```

Chamando função
```lisp
(ajuda-o-maluco-ta-doente bora! "É 37 anos carai!")
```
