// Auto-generated. Do not edit!

// (in-package create_message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class number_complix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reall = null;
      this.imaginee = null;
    }
    else {
      if (initObj.hasOwnProperty('reall')) {
        this.reall = initObj.reall
      }
      else {
        this.reall = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('imaginee')) {
        this.imaginee = initObj.imaginee
      }
      else {
        this.imaginee = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type number_complix
    // Serialize message field [reall]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.reall, buffer, bufferOffset);
    // Serialize message field [imaginee]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.imaginee, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type number_complix
    let len;
    let data = new number_complix(null);
    // Deserialize message field [reall]
    data.reall = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [imaginee]
    data.imaginee = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'create_message/number_complix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '824870208b69eefe6aae44af86b3c2d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 reall
    std_msgs/Float32 imaginee
    
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
    const resolved = new number_complix(null);
    if (msg.reall !== undefined) {
      resolved.reall = std_msgs.msg.Float32.Resolve(msg.reall)
    }
    else {
      resolved.reall = new std_msgs.msg.Float32()
    }

    if (msg.imaginee !== undefined) {
      resolved.imaginee = std_msgs.msg.Float32.Resolve(msg.imaginee)
    }
    else {
      resolved.imaginee = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = number_complix;
