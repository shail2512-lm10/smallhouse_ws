;; Auto-generated. Do not edit!


(when (boundp 'pr2_controllers_msgs::JointTrajectoryAction)
  (if (not (find-package "PR2_CONTROLLERS_MSGS"))
    (make-package "PR2_CONTROLLERS_MSGS"))
  (shadow 'JointTrajectoryAction (find-package "PR2_CONTROLLERS_MSGS")))
(unless (find-package "PR2_CONTROLLERS_MSGS::JOINTTRAJECTORYACTION")
  (make-package "PR2_CONTROLLERS_MSGS::JOINTTRAJECTORYACTION"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryAction.msg.html


(defclass pr2_controllers_msgs::JointTrajectoryAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod pr2_controllers_msgs::JointTrajectoryAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance pr2_controllers_msgs::JointTrajectoryActionGoal :init))
    ((:action_result __action_result) (instance pr2_controllers_msgs::JointTrajectoryActionResult :init))
    ((:action_feedback __action_feedback) (instance pr2_controllers_msgs::JointTrajectoryActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; pr2_controllers_msgs/JointTrajectoryActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; pr2_controllers_msgs/JointTrajectoryActionResult _action_result
    (send _action_result :serialization-length)
    ;; pr2_controllers_msgs/JointTrajectoryActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pr2_controllers_msgs/JointTrajectoryActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; pr2_controllers_msgs/JointTrajectoryActionResult _action_result
       (send _action_result :serialize s)
     ;; pr2_controllers_msgs/JointTrajectoryActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pr2_controllers_msgs/JointTrajectoryActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; pr2_controllers_msgs/JointTrajectoryActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; pr2_controllers_msgs/JointTrajectoryActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get pr2_controllers_msgs::JointTrajectoryAction :md5sum-) "a04ba3ee8f6a2d0985a6aeaf23d9d7ad")
(setf (get pr2_controllers_msgs::JointTrajectoryAction :datatype-) "pr2_controllers_msgs/JointTrajectoryAction")
(setf (get pr2_controllers_msgs::JointTrajectoryAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

JointTrajectoryActionGoal action_goal
JointTrajectoryActionResult action_result
JointTrajectoryActionFeedback action_feedback

================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
JointTrajectoryGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
JointTrajectoryResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
JointTrajectoryFeedback feedback

================================================================================
MSG: pr2_controllers_msgs/JointTrajectoryFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======


")



(provide :pr2_controllers_msgs/JointTrajectoryAction "a04ba3ee8f6a2d0985a6aeaf23d9d7ad")


