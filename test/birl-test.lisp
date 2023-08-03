(in-package :cl-birl-test)

(define-test test-output-single
  (capture-io (:out-var output)
    (ce-quer-ver-essa-porra? "sample")
    (is string-equal (multiline-string "sample") output)))

(define-test test-loop-jumps
  "Test for loop and jumps"
  (is equal '(5 3 1)
      (mais-quero-mais ((m 0 (1+ m)) (results nil)) ((= m 10))
        (ta-comigo-porra
          (ele-que-a-gente-quer? (= m 7)
            (sai-filho-da-puta results))
          (que-nao-vai-dar-o-que? (evenp m)
            (vamo-monstro)))
      (push m results))))

(define-test test-loop-while
  "Test for while loop"
  (is string-equal "543"
      (with-output-to-string (st)
        (negativa-bambam (x 5) (1- x) (> x 2)
          (princ x st)))))

(define-test test-input
  "Test for getting input from user"
  (capture-io (:input "é 13 memo" :out-var output)
    (que-que-ce-quer-monstrao? input
      (is string-equal "que que ce quer monstrao? " output)
      (is string-equal "é 13 memo" input))))
      

(define-test test-if
  (true (ta-comigo-porra
          (ele-que-a-gente-quer? (> 2 1) t))))

(define-test test-else-if
  (is = 2 (ta-comigo-porra
            (ele-que-a-gente-quer? (> 1 2) 1)
            (que-nao-vai-dar-o-que? (< 1 2) 2))))

(define-test test-else
  (is = 3 (ta-comigo-porra
            (ele-que-a-gente-quer? (> 1 2) 1)
            (que-nao-vai-dar-o-que? (< 11 2) 2)
            (nao-vai-dar-nao 3))))

