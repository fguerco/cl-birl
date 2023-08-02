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

