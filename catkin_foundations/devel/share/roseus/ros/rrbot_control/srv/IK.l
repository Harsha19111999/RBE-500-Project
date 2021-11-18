;; Auto-generated. Do not edit!


(when (boundp 'rrbot_control::IK)
  (if (not (find-package "RRBOT_CONTROL"))
    (make-package "RRBOT_CONTROL"))
  (shadow 'IK (find-package "RRBOT_CONTROL")))
(unless (find-package "RRBOT_CONTROL::IK")
  (make-package "RRBOT_CONTROL::IK"))
(unless (find-package "RRBOT_CONTROL::IKREQUEST")
  (make-package "RRBOT_CONTROL::IKREQUEST"))
(unless (find-package "RRBOT_CONTROL::IKRESPONSE")
  (make-package "RRBOT_CONTROL::IKRESPONSE"))

(in-package "ROS")





(defclass rrbot_control::IKRequest
  :super ros::object
  :slots (_x _y _z _alpha _beta _gamma ))

(defmethod rrbot_control::IKRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _alpha
    4
    ;; float32 _beta
    4
    ;; float32 _gamma
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beta
     (setq _beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gamma
     (setq _gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rrbot_control::IKResponse
  :super ros::object
  :slots (_q1 _q2 _q3 ))

(defmethod rrbot_control::IKResponse
  (:init
   (&key
    ((:q1 __q1) 0.0)
    ((:q2 __q2) 0.0)
    ((:q3 __q3) 0.0)
    )
   (send-super :init)
   (setq _q1 (float __q1))
   (setq _q2 (float __q2))
   (setq _q3 (float __q3))
   self)
  (:q1
   (&optional __q1)
   (if __q1 (setq _q1 __q1)) _q1)
  (:q2
   (&optional __q2)
   (if __q2 (setq _q2 __q2)) _q2)
  (:q3
   (&optional __q3)
   (if __q3 (setq _q3 __q3)) _q3)
  (:serialization-length
   ()
   (+
    ;; float32 _q1
    4
    ;; float32 _q2
    4
    ;; float32 _q3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _q1
       (sys::poke _q1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q2
       (sys::poke _q2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q3
       (sys::poke _q3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _q1
     (setq _q1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q2
     (setq _q2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q3
     (setq _q3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rrbot_control::IK
  :super ros::object
  :slots ())

(setf (get rrbot_control::IK :md5sum-) "d1d12092c54e7725284bed2d4e255885")
(setf (get rrbot_control::IK :datatype-) "rrbot_control/IK")
(setf (get rrbot_control::IK :request) rrbot_control::IKRequest)
(setf (get rrbot_control::IK :response) rrbot_control::IKResponse)

(defmethod rrbot_control::IKRequest
  (:response () (instance rrbot_control::IKResponse :init)))

(setf (get rrbot_control::IKRequest :md5sum-) "d1d12092c54e7725284bed2d4e255885")
(setf (get rrbot_control::IKRequest :datatype-) "rrbot_control/IKRequest")
(setf (get rrbot_control::IKRequest :definition-)
      "float32 x
float32 y
float32 z
float32 alpha
float32 beta
float32 gamma
---
float32 q1
float32 q2
float32 q3

")

(setf (get rrbot_control::IKResponse :md5sum-) "d1d12092c54e7725284bed2d4e255885")
(setf (get rrbot_control::IKResponse :datatype-) "rrbot_control/IKResponse")
(setf (get rrbot_control::IKResponse :definition-)
      "float32 x
float32 y
float32 z
float32 alpha
float32 beta
float32 gamma
---
float32 q1
float32 q2
float32 q3

")



(provide :rrbot_control/IK "d1d12092c54e7725284bed2d4e255885")


