#!/usr/bin/env python3

from rrbot_control.srv import IK, IKResponse
import rospy
import math

def compute(request):
	x = request.x
	y = request.y
	z = request.z
	alpha = request.alpha
	beta = request.beta
	gamma = request.gamma
	
	r = math.sqrt(x*x+y*y)
	b = (r*r - 2)/2
	t2 = math.atan2(math.sqrt(1-b*b), b)
	t3 = z - 1.1
	t1 = math.atan2(y, x) - math.atan2(math.sin(t2), 1+math.cos(t2))
	print("q1: {}".format(round(t1,2)))
	print("q2: {}".format(round(t2,2)))
	print("q3: {}".format(round(t3,2)))

	return IKResponse(round(t1,2), round(t2,2), round(t3,2))

def server():
	rospy.init_node("ik_server")
	rospy.Service('ik_server', IK, compute)
	rospy.spin()

if __name__ == "__main__":
	server()

