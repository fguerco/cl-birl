(in-package :cl-birl-test)

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


(defun multiline-string (&rest lines)
  (format nil "~{~a~%~}" lines))


(define-test test-loop-jumps
  "Test for loop and jumps"
  (capture-io (:out-var output)
    (hora-do-show
      (mais-quero-mais ((m 0 (1+ m))) ((= m 10))
        (ta-comigo-porra
          (ele-que-a-gente-quer? (= m 7)
            (sai-filho-da-puta))
          (que-nao-vai-dar-o-que? (evenp m)
            (vamo-monstro)))
        (ce-quer-ver-essa-porra? "essa porra:" m)))
    
    (is string-equal (multiline-string "essa porra: 1"
                                        "essa porra: 3"
                                        "essa porra: 5")
                      output)))

(define-test test-loop-while
  "Test for while loop"
  (capture-io (:out-var output)
    (negativa-bambam (x 5) (> x 2)
      (ce-quer-ver-essa-porra? "bora!" x)
      (decf x))
    (is string-equal (multiline-string "bora! 5"
                                        "bora! 4"
                                        "bora! 3")
                      output)))

(define-test test-input
  "Test for getting input from user"
  (capture-io (:input "é 13 memo" :out-var output)
    (que-que-ce-quer-monstrao? "é 13? " input
      (is string-equal input "é 13 memo"))))
      

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

