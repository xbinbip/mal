#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(ql:quickload :uiop)
(ql:quickload :cl-readline)
(ql:quickload :cl-ppcre)
(ql:quickload :genhash)

(defpackage #:mal-asd
  (:use :cl :asdf))

(in-package :mal-asd)

(defsystem "step1_read_print"
  :name "MAL"
  :version "1.0"
  :author "Iqbal Ansari"
  :description "Implementation of step 1 of MAL in Common Lisp"
  :serial t
  :components ((:file "utils")
               (:file "types")
               (:file "reader")
               (:file "printer")
               (:file "step1_read_print"))
  :depends-on (:uiop :cl-readline :cl-ppcre :genhash))
