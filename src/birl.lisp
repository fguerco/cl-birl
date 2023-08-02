(in-package #:cl-birl)

(defmacro hora-do-show (&body builder)
  `(progn ,@builder))

(defun ce-quer-ver-essa-porra? (&rest essa-porra)
  (format t "~{~a~^ ~}~%" essa-porra))

(defmacro que-que-ce-quer-monstrao? (prompt var &body builder)
  `(progn
     (princ ,prompt)
     (let ((,var (read-line)))
       ,@builder)))

(defmacro ta-comigo-porra (&body builder)
  `(cond
     ,@(mapcar #'macroexpand-1 builder)))

(defmacro ele-que-a-gente-quer? (test &body builder)
  (list test `(progn ,@builder)))

(defmacro que-nao-vai-dar-o-que? (test &body builder)
  (list test `(progn ,@builder)))

(defmacro nao-vai-dar-nao (&body builder)
  (list t `(progn ,@builder)))

(defmacro oh-o-homi-ai-po (name lambda-list &body builder)
  `(defun ,name ,lambda-list
     ,@builder))

(defmacro ajuda-o-maluco-ta-doente (func &rest args)
  `(funcall #',func ,@args))


(defmacro mais-quero-mais (varlist endlist &body builder)
  `(do ,varlist ,endlist
     ,@builder
    monstro))

(defmacro negativa-bambam ((var value) loop-condition  &body builder)
  `(mais-quero-mais ((,var ,value)) ((not ,loop-condition))
    ,@builder))
        

(defmacro sai-filho-da-puta ()
  `(return))

(defmacro vamo-monstro ()
  `(go monstro))

