// Auto-generated. Do not edit!

// (in-package move_turtle_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class complix_number {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real = null;
      this.imagine = null;
    }
    else {
      if (initObj.hasOwnProperty('real')) {
        this.real = initObj.real
      }
      else {
        this.real = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('imagine')) {
        this.imagine = initObj.imagine
      }
      else {
        this.imagine = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type complix_number
    // Serialize message field [real]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.real, buffer, bufferOffset);
    // Serialize message field [imagine]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.imagine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type complix_number
    let len;
    let data = new complix_number(null);
    // Deserialize message field [real]
    data.real = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [imagine]
    data.imagine = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'move_turtle_pkg/complix_number';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6037b8259193f89f4a2a86bd6aab0df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 real
    std_msgs/Float32 imagine 
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new complix_number(null);
    if (msg.real !== undefined) {
      resolved.real = std_msgs.msg.Float32.Resolve(msg.real)
    }
    else {
      resolved.real = new std_msgs.msg.Float32()
    }

    if (msg.imagine !== undefined) {
      resolved.imagine = std_msgs.msg.Float32.Resolve(msg.imagine)
    }
    else {
      resolved.imagine = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = complix_number;
