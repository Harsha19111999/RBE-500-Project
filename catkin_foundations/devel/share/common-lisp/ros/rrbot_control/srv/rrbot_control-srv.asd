
(cl:in-package :asdf)

(defsystem "rrbot_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IK" :depends-on ("_package_IK"))
    (:file "_package_IK" :depends-on ("_package"))
  ))