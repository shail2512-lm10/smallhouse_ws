// Auto-generated. Do not edit!

// (in-package pr2_controllers_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointControllerState = require('./JointControllerState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointControllerStateArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.controllestate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('controllestate')) {
        this.controllestate = initObj.controllestate
      }
      else {
        this.controllestate = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControllerStateArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [controllestate]
    // Serialize the length for message field [controllestate]
    bufferOffset = _serializer.uint32(obj.controllestate.length, buffer, bufferOffset);
    obj.controllestate.forEach((val) => {
      bufferOffset = JointControllerState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControllerStateArray
    let len;
    let data = new JointControllerStateArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [controllestate]
    // Deserialize array length for message field [controllestate]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controllestate = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controllestate[i] = JointControllerState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.controllestate.forEach((val) => {
      length += JointControllerState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr2_controllers_msgs/JointControllerStateArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c47bacaf87f2bc9b8921b0761fb4177e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    JointControllerState[] controllestate
    
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
    MSG: pr2_controllers_msgs/JointControllerState
    Header header
    float64 set_point
    float64 process_value
    float64 process_value_dot
    float64 error
    float64 time_step
    float64 command
    float64 p
    float64 i
    float64 d
    float64 i_clamp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControllerStateArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.controllestate !== undefined) {
      resolved.controllestate = new Array(msg.controllestate.length);
      for (let i = 0; i < resolved.controllestate.length; ++i) {
        resolved.controllestate[i] = JointControllerState.Resolve(msg.controllestate[i]);
      }
    }
    else {
      resolved.controllestate = []
    }

    return resolved;
    }
};

module.exports = JointControllerStateArray;
