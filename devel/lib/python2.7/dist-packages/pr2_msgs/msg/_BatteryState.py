# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_msgs/BatteryState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class BatteryState(genpy.Message):
  _md5sum = "00e9f996c2fc26700fd25abcd8422db0"
  _type = "pr2_msgs/BatteryState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# DEPRECATED.  Use pr2_msgs/BatteryState2 instead.
# Each batteries registers
int32 lastTimeBattery #epoch time
uint16[48] batReg
uint16[48] batRegFlag
int32[48] batRegTime
"""
  __slots__ = ['lastTimeBattery','batReg','batRegFlag','batRegTime']
  _slot_types = ['int32','uint16[48]','uint16[48]','int32[48]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lastTimeBattery,batReg,batRegFlag,batRegTime

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BatteryState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.lastTimeBattery is None:
        self.lastTimeBattery = 0
      if self.batReg is None:
        self.batReg = [0] * 48
      if self.batRegFlag is None:
        self.batRegFlag = [0] * 48
      if self.batRegTime is None:
        self.batRegTime = [0] * 48
    else:
      self.lastTimeBattery = 0
      self.batReg = [0] * 48
      self.batRegFlag = [0] * 48
      self.batRegTime = [0] * 48

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
      _x = self.lastTimeBattery
      buff.write(_get_struct_i().pack(_x))
      buff.write(_get_struct_48H().pack(*self.batReg))
      buff.write(_get_struct_48H().pack(*self.batRegFlag))
      buff.write(_get_struct_48i().pack(*self.batRegTime))
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
      end = 0
      start = end
      end += 4
      (self.lastTimeBattery,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 96
      self.batReg = _get_struct_48H().unpack(str[start:end])
      start = end
      end += 96
      self.batRegFlag = _get_struct_48H().unpack(str[start:end])
      start = end
      end += 192
      self.batRegTime = _get_struct_48i().unpack(str[start:end])
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
      _x = self.lastTimeBattery
      buff.write(_get_struct_i().pack(_x))
      buff.write(self.batReg.tostring())
      buff.write(self.batRegFlag.tostring())
      buff.write(self.batRegTime.tostring())
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
      end = 0
      start = end
      end += 4
      (self.lastTimeBattery,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 96
      self.batReg = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=48)
      start = end
      end += 96
      self.batRegFlag = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=48)
      start = end
      end += 192
      self.batRegTime = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=48)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_48H = None
def _get_struct_48H():
    global _struct_48H
    if _struct_48H is None:
        _struct_48H = struct.Struct("<48H")
    return _struct_48H
_struct_48i = None
def _get_struct_48i():
    global _struct_48i
    if _struct_48i is None:
        _struct_48i = struct.Struct("<48i")
    return _struct_48i
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
