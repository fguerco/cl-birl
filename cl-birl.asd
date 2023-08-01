(asdf:defsystem #:cl-birl
  :name "Birl Language in Common Lisp"
  :version "1.0.0"
  :author "Felipe Guerço Oliveira <felipeguerco@gmail.com>"
  :depends-on (#:cl-birl/src
               #:cl-birl/test)
  :in-order-to ((test-op (test-op #:cl-birl/test))))

(asdf:defsystem #:cl-birl/src
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "birl")))))

(asdf:defsystem #:cl-birl/test
  :depends-on (#:cl-birl/src #:fiveam)
  :components ((:module "test"
                :serial t
                :components ((:file "package")
                             (:file "birl-test"))))
  :perform (test-op (op c)
                    (funcall (read-from-string "5am:run-all-tests"))))
