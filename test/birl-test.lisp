(in-package #:cl-birl-test)

(defmacro capture-io ((&key (input "") out-var) &body forms)
  (let ((in-st (gensym "IN"))
        (out-st (gensym "OUT")))
    `(let ((,out-var (make-array '(0) :element-type 'extended-char
                                      :fill-pointer 0 :adjustable t)))
       (with-input-from-string (,in-st ,input)
         (with-output-to-string (,out-st ,out-var)
           (let ((*standard-input* ,in-st)
                 (*standard-output* ,out-st))
             ,@forms))))))

(def-suite birl-test
  :description "Tests for birl language")

(in-suite birl-test)

(defun multiline-string (&rest lines)
  (format nil "~{~a~%~}" lines))

(test test-loop-jumps
  (capture-io (:out-var output)
    (hora-do-show
      (mais-quero-mais ((m 0 (1+ m))) ((= m 10))
        (ta-comigo-porra
          (ele-que-a-gente-quer? (= m 7)
            (sai-filho-da-puta))
          (que-nao-vai-dar-o-que? (evenp m)
            (vamo-monstro)))
        (ce-quer-ver-essa-porra? "essa porra:" m)))
    
    (is (string-equal (multiline-string "essa porra: 1"
                                        "essa porra: 3"
                                        "essa porra: 5")
                      output))))

(test test-loop-while
  (capture-io (:out-var output)
    (negativa-bambam (x 5) (> x 2)
      (ce-quer-ver-essa-porra? "bora!" x)
      (decf x))
    (is (string-equal (multiline-string "bora! 5"
                                        "bora! 4"
                                        "bora! 3")
                      output))))

(test test-input
  (capture-io (:input "é 13 memo" :out-var output)
    (que-que-ce-quer-monstrao? "é 13? " input
      (is (string-equal input "é 13 memo")))))
      


(test test-conditionals
  (capture-io (:out-var output)
    (ta-comigo-porra
      (ele-que-a-gente-quer? (> 1 2)
        (ce-quer-ver-essa-porra? "treze memo carai"))
      (que-nao-vai-dar-o-que? (< 11 2)
        (ce-quer-ver-essa-porra? "quero mais!"))
      (nao-vai-dar-nao
        (ce-quer-ver-essa-porra? "nao vai dar nao")))
    (is (string-equal (multiline-string "nao vai dar nao")
                      output))))
                  
