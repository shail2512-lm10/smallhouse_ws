// Auto-generated. Do not edit!

// (in-package pr2_controllers_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PointHeadGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
      this.pointing_axis = null;
      this.pointing_frame = null;
      this.min_duration = null;
      this.max_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('pointing_axis')) {
        this.pointing_axis = initObj.pointing_axis
      }
      else {
        this.pointing_axis = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pointing_frame')) {
        this.pointing_frame = initObj.pointing_frame
      }
      else {
        this.pointing_frame = '';
      }
      if (initObj.hasOwnProperty('min_duration')) {
        this.min_duration = initObj.min_duration
      }
      else {
        this.min_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('max_velocity')) {
        this.max_velocity = initObj.max_velocity
      }
      else {
        this.max_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointHeadGoal
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [pointing_axis]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pointing_axis, buffer, bufferOffset);
    // Serialize message field [pointing_frame]
    bufferOffset = _serializer.string(obj.pointing_frame, buffer, bufferOffset);
    // Serialize message field [min_duration]
    bufferOffset = _serializer.duration(obj.min_duration, buffer, bufferOffset);
    // Serialize message field [max_velocity]
    bufferOffset = _serializer.float64(obj.max_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointHeadGoal
    let len;
    let data = new PointHeadGoal(null);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointing_axis]
    data.pointing_axis = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointing_frame]
    data.pointing_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [min_duration]
    data.min_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [max_velocity]
    data.max_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.target);
    length += object.pointing_frame.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr2_controllers_msgs/PointHeadGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b92b1cd5e06c8a94c917dc3209a4c1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    geometry_msgs/PointStamped target
    geometry_msgs/Vector3 pointing_axis
    string pointing_frame
    duration min_duration
    float64 max_velocity
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointHeadGoal(null);
    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.PointStamped.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.PointStamped()
    }

    if (msg.pointing_axis !== undefined) {
      resolved.pointing_axis = geometry_msgs.msg.Vector3.Resolve(msg.pointing_axis)
    }
    else {
      resolved.pointing_axis = new geometry_msgs.msg.Vector3()
    }

    if (msg.pointing_frame !== undefined) {
      resolved.pointing_frame = msg.pointing_frame;
    }
    else {
      resolved.pointing_frame = ''
    }

    if (msg.min_duration !== undefined) {
      resolved.min_duration = msg.min_duration;
    }
    else {
      resolved.min_duration = {secs: 0, nsecs: 0}
    }

    if (msg.max_velocity !== undefined) {
      resolved.max_velocity = msg.max_velocity;
    }
    else {
      resolved.max_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = PointHeadGoal;
