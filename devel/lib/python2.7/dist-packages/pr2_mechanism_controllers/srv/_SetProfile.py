# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_mechanism_controllers/SetProfileRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetProfileRequest(genpy.Message):
  _md5sum = "309001fc196b0094f23b1ae2bd672fb2"
  _type = "pr2_mechanism_controllers/SetProfileRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 UpperTurnaround
float64 LowerTurnaround
float64 upperDecelBuffer
float64 lowerDecelBuffer
float64 profile
float64 period
float64 amplitude
float64 offset
"""
  __slots__ = ['UpperTurnaround','LowerTurnaround','upperDecelBuffer','lowerDecelBuffer','profile','period','amplitude','offset']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       UpperTurnaround,LowerTurnaround,upperDecelBuffer,lowerDecelBuffer,profile,period,amplitude,offset

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetProfileRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.UpperTurnaround is None:
        self.UpperTurnaround = 0.
      if self.LowerTurnaround is None:
        self.LowerTurnaround = 0.
      if self.upperDecelBuffer is None:
        self.upperDecelBuffer = 0.
      if self.lowerDecelBuffer is None:
        self.lowerDecelBuffer = 0.
      if self.profile is None:
        self.profile = 0.
      if self.period is None:
        self.period = 0.
      if self.amplitude is None:
        self.amplitude = 0.
      if self.offset is None:
        self.offset = 0.
    else:
      self.UpperTurnaround = 0.
      self.LowerTurnaround = 0.
      self.upperDecelBuffer = 0.
      self.lowerDecelBuffer = 0.
      self.profile = 0.
      self.period = 0.
      self.amplitude = 0.
      self.offset = 0.

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
      buff.write(_get_struct_8d().pack(_x.UpperTurnaround, _x.LowerTurnaround, _x.upperDecelBuffer, _x.lowerDecelBuffer, _x.profile, _x.period, _x.amplitude, _x.offset))
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
      _x = self
      start = end
      end += 64
      (_x.UpperTurnaround, _x.LowerTurnaround, _x.upperDecelBuffer, _x.lowerDecelBuffer, _x.profile, _x.period, _x.amplitude, _x.offset,) = _get_struct_8d().unpack(str[start:end])
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
      buff.write(_get_struct_8d().pack(_x.UpperTurnaround, _x.LowerTurnaround, _x.upperDecelBuffer, _x.lowerDecelBuffer, _x.profile, _x.period, _x.amplitude, _x.offset))
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
      _x = self
      start = end
      end += 64
      (_x.UpperTurnaround, _x.LowerTurnaround, _x.upperDecelBuffer, _x.lowerDecelBuffer, _x.profile, _x.period, _x.amplitude, _x.offset,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_mechanism_controllers/SetProfileResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetProfileResponse(genpy.Message):
  _md5sum = "be5310e7aa4c90cdee120add91648cee"
  _type = "pr2_mechanism_controllers/SetProfileResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 time


"""
  __slots__ = ['time']
  _slot_types = ['float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetProfileResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = 0.
    else:
      self.time = 0.

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
      _x = self.time
      buff.write(_get_struct_d().pack(_x))
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
      end += 8
      (self.time,) = _get_struct_d().unpack(str[start:end])
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
      _x = self.time
      buff.write(_get_struct_d().pack(_x))
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
      end += 8
      (self.time,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
class SetProfile(object):
  _type          = 'pr2_mechanism_controllers/SetProfile'
  _md5sum = '2c429583cad60964651aba828d788a9a'
  _request_class  = SetProfileRequest
  _response_class = SetProfileResponse
