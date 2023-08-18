
(cl:in-package :asdf)

(defsystem "create_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "number_complix" :depends-on ("_package_number_complix"))
    (:file "_package_number_complix" :depends-on ("_package"))
  ))