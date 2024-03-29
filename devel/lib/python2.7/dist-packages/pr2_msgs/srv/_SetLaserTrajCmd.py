# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_msgs/SetLaserTrajCmdRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import pr2_msgs.msg
import std_msgs.msg

class SetLaserTrajCmdRequest(genpy.Message):
  _md5sum = "83f915c37d36f61442c752779261e7d4"
  _type = "pr2_msgs/SetLaserTrajCmdRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """pr2_msgs/LaserTrajCmd command

================================================================================
MSG: pr2_msgs/LaserTrajCmd
# This message is used to set the profile that the tilt laser controller
# executes.
Header header
string profile              # options are currently "linear" or "linear_blended"
float64[] position          # Laser positions
duration[] time_from_start  # Times to reach laser positions in seconds
float64 max_velocity        # Set <= 0 to use default
float64 max_acceleration    # Set <= 0 to use default

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
"""
  __slots__ = ['command']
  _slot_types = ['pr2_msgs/LaserTrajCmd']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetLaserTrajCmdRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = pr2_msgs.msg.LaserTrajCmd()
    else:
      self.command = pr2_msgs.msg.LaserTrajCmd()

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.command.header.seq, _x.command.header.stamp.secs, _x.command.header.stamp.nsecs))
      _x = self.command.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.command.profile
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.command.position)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.command.position))
      length = len(self.command.time_from_start)
      buff.write(_struct_I.pack(length))
      for val1 in self.command.time_from_start:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_2d().pack(_x.command.max_velocity, _x.command.max_acceleration))
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
      if self.command is None:
        self.command = pr2_msgs.msg.LaserTrajCmd()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.command.header.seq, _x.command.header.stamp.secs, _x.command.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.command.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command.profile = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.command.profile = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.command.position = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.command.time_from_start = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.command.time_from_start.append(val1)
      _x = self
      start = end
      end += 16
      (_x.command.max_velocity, _x.command.max_acceleration,) = _get_struct_2d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.command.header.seq, _x.command.header.stamp.secs, _x.command.header.stamp.nsecs))
      _x = self.command.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.command.profile
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.command.position)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.command.position.tostring())
      length = len(self.command.time_from_start)
      buff.write(_struct_I.pack(length))
      for val1 in self.command.time_from_start:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_2d().pack(_x.command.max_velocity, _x.command.max_acceleration))
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
      if self.command is None:
        self.command = pr2_msgs.msg.LaserTrajCmd()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.command.header.seq, _x.command.header.stamp.secs, _x.command.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.command.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command.profile = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.command.profile = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.command.position = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.command.time_from_start = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.command.time_from_start.append(val1)
      _x = self
      start = end
      end += 16
      (_x.command.max_velocity, _x.command.max_acceleration,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_msgs/SetLaserTrajCmdResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class SetLaserTrajCmdResponse(genpy.Message):
  _md5sum = "3888666920054f1ef39d2df7a5d94b02"
  _type = "pr2_msgs/SetLaserTrajCmdResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time start_time
"""
  __slots__ = ['start_time']
  _slot_types = ['time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetLaserTrajCmdResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.start_time is None:
        self.start_time = genpy.Time()
    else:
      self.start_time = genpy.Time()

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
      _x = self
      buff.write(_get_struct_2I().pack(_x.start_time.secs, _x.start_time.nsecs))
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
      if self.start_time is None:
        self.start_time = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.start_time.secs, _x.start_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      self.start_time.canon()
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
      _x = self
      buff.write(_get_struct_2I().pack(_x.start_time.secs, _x.start_time.nsecs))
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
      if self.start_time is None:
        self.start_time = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.start_time.secs, _x.start_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      self.start_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
class SetLaserTrajCmd(object):
  _type          = 'pr2_msgs/SetLaserTrajCmd'
  _md5sum = '28fe2ce397611c999952c74a1ea882aa'
  _request_class  = SetLaserTrajCmdRequest
  _response_class = SetLaserTrajCmdResponse
