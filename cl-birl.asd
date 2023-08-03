(defsystem :cl-birl
  :name "Birl Language in Common Lisp"
  :version "1.0.0"
  :author "Felipe Guerço Oliveira <felipeguerco@gmail.com>"
  :license "MIT"
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "birl"))))
  :in-order-to ((test-op (test-op :cl-birl/test))))


(defsystem :cl-birl/test
  :license "MIT"
  :depends-on (:cl-birl :parachute)
  :components ((:module "test"
                :serial t
                :components ((:file "package")
                             (:file "test-utils")
                             (:file "birl-test"))))
  :perform (test-op (op c)
                    (symbol-call :parachute :test :cl-birl-test)))

