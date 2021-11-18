#!/usr/bin/env python3

import rospy
import numpy as np 
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Pose
import math
from tf.transformations import euler_from_matrix

def callback(data):
        q1 = data.position[0]
        q2 = data.position[1]
        q3 = data.position[2]
        
        A1 = [[math.cos(q1), -math.sin(q1), 0, math.cos(q1)], [math.sin(q1), math.cos(q1), 0, math.sin(q1)], [0, 0, 1, 0.1], [0, 0, 0, 1]]
        A2 = [[math.cos(q2), -math.sin(q2), 0, math.cos(q2)], [math.sin(q2), math.cos(q2), 0, math.sin(q2)], [0, 0, 1, 0], [0, 0, 0, 1]]
        A3 = [[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 1+q3], [0, 0, 0, 1]]

        A = np.matmul(np.matmul(A1, A2), A3).round(decimals=2)
        print("\n==============================================================\n")
        print(":::The Homogenous Matrix:::\n")
        print(A)
        print("\n:::Pose of the End-Effector:::\n")
        print("End-effector position:\n {}".format(A[0:3, 3].reshape((3, 1))))
        alpha, beta, gamma = euler_from_matrix(A[0:3, 0:3], 'rzyz')
        print("End-effector orientation (ZYZ):\n alpha (Z): {}, beta (Y): {}, gamma (Z): {}".format(round(alpha*180/np.pi, 2), round(beta*180/np.pi, 2), round(gamma*180/np.pi, 2)))
        
        # The publisher 
        pub = rospy.Publisher('fk_pose', Pose, queue_size=10)
        rate = rospy.Rate(10) # 10hz
        p = Pose()
        p.position.x = A[0, 3]
        p.position.y = A[1, 3]
        p.position.z = A[2, 3]
        p.orientation.x = alpha
        p.orientation.y = beta
        p.orientation.z = gamma
        p.orientation.w = 1.0
        pub.publish(p)

        
rospy.init_node('fkine')
rospy.Subscriber("joint_states", JointState, callback)
rospy.spin()

