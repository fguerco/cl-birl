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

Display
```lisp
(ce-quer-ver-essa-porra? "BOOOOOORA!")
```
Output
```
BOOOOOORA!
```

Prompt
```lisp
(que-que-ce-quer-monstrao? x
  (ce-quer-ver-essa-porra? "bambam disse:" x))
```
Output
```
que que ce quer monstrao? 13
bambam disse: 13
```

Condicional
```lisp
;; inicio da estrutura
(ta-comigo-porra
  ;; teste (if)
  (ele-que-a-gente-quer? (> 1 2)
    (ce-quer-ver-essa-porra? "treze memo carai"))
  ;; teste (else if)
  (que-nao-vai-dar-o-que? (< 11 2)
    (ce-quer-ver-essa-porra? "quero mais!"))
  ;; else
  (nao-vai-dar-nao
    (ce-quer-ver-essa-porra? "nao vai dar nao")))
```
Output
```
nao vai dar nao
```


Loop com skip e saída
```lisp
;; define variavel m, a cada step incrementa m e sai do loop quando m = 10
(mais-quero-mais ((m 0 (1+ m))) ((= m 10))
  (ta-comigo-porra
    (ele-que-a-gente-quer? (= m 7)
      ;; sai do loop retornando valor (opcional)
      (sai-filho-da-puta "BIRL"))
    (que-nao-vai-dar-o-que? (evenp m)
      ;; skip para a proxima iteração
      (vamo-monstro)))

  (ce-quer-ver-essa-porra? "essa porra: " m))
```
Output
```
essa porra: 1
essa porra: 3
essa porra: 5
```
Retorno
```
"BIRL"
```

Loop while
```lisp
;; define variavel x, a cada step decrementa x e continua loop enquanto x > 2
(negativa-bambam (x 5) (1- x) (> x 2)
  (ce-quer-ver-essa-porra? "bora!" x))
```
Output
```
bora! 5
bora! 4
bora! 3
```

Função
```lisp
;; define função chamada bora! com parametro vai
(oh-o-homi-ai-po bora! (vai)
  (ce-quer-ver-essa-porra? vai))
```

Chamando função
```lisp
;; chama a função bora! passando a string como argumento
(ajuda-o-maluco-ta-doente bora! "É 37 anos carai!")
```
