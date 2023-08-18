
(cl:in-package :asdf)

(defsystem "move_turtle_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "compl" :depends-on ("_package_compl"))
    (:file "_package_compl" :depends-on ("_package"))
    (:file "complix_number" :depends-on ("_package_complix_number"))
    (:file "_package_complix_number" :depends-on ("_package"))
  ))