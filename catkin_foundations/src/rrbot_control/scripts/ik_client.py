#!/usr/bin/env python3

import sys
import rospy
from rrbot_control.srv import *

def solve_ik_client(x, y, z, alpha, beta, gamma):
    rospy.wait_for_service('ik_server')
    try:
        solver = rospy.ServiceProxy('ik_server', IK)
        response = solver(x, y, z, alpha, beta, gamma)
        return response
    except rospy.ServiceException as e:
        print("Service call failed")


if __name__ == "__main__":
    if len(sys.argv) == 7:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        z = float(sys.argv[3])
        alpha = float(sys.argv[4])
        beta = float(sys.argv[5])
        gamma = float(sys.argv[6])    
        print("Sending request to solve invese kinematics for: x:{}, y:{}, z:{}, alpha:{}. beta:{}. gamma:{}".format(x, y, z, alpha, beta, gamma))
        print("The resulting angles of IK are: {}".format(solve_ik_client(x, y, z, alpha, beta, gamma)))
