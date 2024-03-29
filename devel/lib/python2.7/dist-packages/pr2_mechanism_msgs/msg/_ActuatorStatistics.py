# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_mechanism_msgs/ActuatorStatistics.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class ActuatorStatistics(genpy.Message):
  _md5sum = "c37184273b29627de29382f1d3670175"
  _type = "pr2_mechanism_msgs/ActuatorStatistics"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message contains the state of an actuator on the pr2 robot.
# An actuator contains a motor and an encoder, and is connected
# to a joint by a transmission

# the name of the actuator
string name

# the sequence number of the MCB in the ethercat chain. 
# the first device in the chain gets deviced_id zero
int32 device_id

# the time at which this actuator state was measured
time timestamp

# the encoder position, represented by the number of encoder ticks
int32 encoder_count

# The angular offset (in radians) that is added to the encoder reading, 
# to get to the position of the actuator. This number is computed when the referece
# sensor is triggered during the calibration phase
float64 encoder_offset

# the encoder position in radians
float64 position

# the encoder velocity in encoder ticks per second
float64 encoder_velocity

# the encoder velocity in radians per second
float64 velocity

# the value of the calibration reading: low (false) or high (true)
bool calibration_reading

# bool to indicate if the joint already triggered the rising/falling edge of the reference sensor
bool calibration_rising_edge_valid
bool calibration_falling_edge_valid

# the encoder position when the last rising/falling edge was observed. 
# only read this value when the calibration_rising/falling_edge_valid is true
float64 last_calibration_rising_edge
float64 last_calibration_falling_edge

# flag to indicate if this actuator is enabled or not. 
# An actuator can only be commanded when it is enabled.
bool is_enabled

# indicates if the motor is halted. A motor can be halted because of a voltage or communication problem
bool halted

# the last current/effort command that was requested
float64 last_commanded_current
float64 last_commanded_effort

# the last current/effort command that was executed by the actuator
float64 last_executed_current
float64 last_executed_effort

# the last current/effort that was measured by the actuator
float64 last_measured_current
float64 last_measured_effort

# the motor voltate
float64 motor_voltage

# the number of detected encoder problems 
int32 num_encoder_errors

"""
  __slots__ = ['name','device_id','timestamp','encoder_count','encoder_offset','position','encoder_velocity','velocity','calibration_reading','calibration_rising_edge_valid','calibration_falling_edge_valid','last_calibration_rising_edge','last_calibration_falling_edge','is_enabled','halted','last_commanded_current','last_commanded_effort','last_executed_current','last_executed_effort','last_measured_current','last_measured_effort','motor_voltage','num_encoder_errors']
  _slot_types = ['string','int32','time','int32','float64','float64','float64','float64','bool','bool','bool','float64','float64','bool','bool','float64','float64','float64','float64','float64','float64','float64','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,device_id,timestamp,encoder_count,encoder_offset,position,encoder_velocity,velocity,calibration_reading,calibration_rising_edge_valid,calibration_falling_edge_valid,last_calibration_rising_edge,last_calibration_falling_edge,is_enabled,halted,last_commanded_current,last_commanded_effort,last_executed_current,last_executed_effort,last_measured_current,last_measured_effort,motor_voltage,num_encoder_errors

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ActuatorStatistics, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.device_id is None:
        self.device_id = 0
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      if self.encoder_count is None:
        self.encoder_count = 0
      if self.encoder_offset is None:
        self.encoder_offset = 0.
      if self.position is None:
        self.position = 0.
      if self.encoder_velocity is None:
        self.encoder_velocity = 0.
      if self.velocity is None:
        self.velocity = 0.
      if self.calibration_reading is None:
        self.calibration_reading = False
      if self.calibration_rising_edge_valid is None:
        self.calibration_rising_edge_valid = False
      if self.calibration_falling_edge_valid is None:
        self.calibration_falling_edge_valid = False
      if self.last_calibration_rising_edge is None:
        self.last_calibration_rising_edge = 0.
      if self.last_calibration_falling_edge is None:
        self.last_calibration_falling_edge = 0.
      if self.is_enabled is None:
        self.is_enabled = False
      if self.halted is None:
        self.halted = False
      if self.last_commanded_current is None:
        self.last_commanded_current = 0.
      if self.last_commanded_effort is None:
        self.last_commanded_effort = 0.
      if self.last_executed_current is None:
        self.last_executed_current = 0.
      if self.last_executed_effort is None:
        self.last_executed_effort = 0.
      if self.last_measured_current is None:
        self.last_measured_current = 0.
      if self.last_measured_effort is None:
        self.last_measured_effort = 0.
      if self.motor_voltage is None:
        self.motor_voltage = 0.
      if self.num_encoder_errors is None:
        self.num_encoder_errors = 0
    else:
      self.name = ''
      self.device_id = 0
      self.timestamp = genpy.Time()
      self.encoder_count = 0
      self.encoder_offset = 0.
      self.position = 0.
      self.encoder_velocity = 0.
      self.velocity = 0.
      self.calibration_reading = False
      self.calibration_rising_edge_valid = False
      self.calibration_falling_edge_valid = False
      self.last_calibration_rising_edge = 0.
      self.last_calibration_falling_edge = 0.
      self.is_enabled = False
      self.halted = False
      self.last_commanded_current = 0.
      self.last_commanded_effort = 0.
      self.last_executed_current = 0.
      self.last_executed_effort = 0.
      self.last_measured_current = 0.
      self.last_measured_effort = 0.
      self.motor_voltage = 0.
      self.num_encoder_errors = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2Ii4d3B2d2B7di().pack(_x.device_id, _x.timestamp.secs, _x.timestamp.nsecs, _x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 129
      (_x.device_id, _x.timestamp.secs, _x.timestamp.nsecs, _x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors,) = _get_struct_i2Ii4d3B2d2B7di().unpack(str[start:end])
      self.calibration_reading = bool(self.calibration_reading)
      self.calibration_rising_edge_valid = bool(self.calibration_rising_edge_valid)
      self.calibration_falling_edge_valid = bool(self.calibration_falling_edge_valid)
      self.is_enabled = bool(self.is_enabled)
      self.halted = bool(self.halted)
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2Ii4d3B2d2B7di().pack(_x.device_id, _x.timestamp.secs, _x.timestamp.nsecs, _x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 129
      (_x.device_id, _x.timestamp.secs, _x.timestamp.nsecs, _x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors,) = _get_struct_i2Ii4d3B2d2B7di().unpack(str[start:end])
      self.calibration_reading = bool(self.calibration_reading)
      self.calibration_rising_edge_valid = bool(self.calibration_rising_edge_valid)
      self.calibration_falling_edge_valid = bool(self.calibration_falling_edge_valid)
      self.is_enabled = bool(self.is_enabled)
      self.halted = bool(self.halted)
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i2Ii4d3B2d2B7di = None
def _get_struct_i2Ii4d3B2d2B7di():
    global _struct_i2Ii4d3B2d2B7di
    if _struct_i2Ii4d3B2d2B7di is None:
        _struct_i2Ii4d3B2d2B7di = struct.Struct("<i2Ii4d3B2d2B7di")
    return _struct_i2Ii4d3B2d2B7di
