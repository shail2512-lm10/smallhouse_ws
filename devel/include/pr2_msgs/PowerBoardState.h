// Generated by gencpp from file pr2_msgs/PowerBoardState.msg
// DO NOT EDIT!


#ifndef PR2_MSGS_MESSAGE_POWERBOARDSTATE_H
#define PR2_MSGS_MESSAGE_POWERBOARDSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace pr2_msgs
{
template <class ContainerAllocator>
struct PowerBoardState_
{
  typedef PowerBoardState_<ContainerAllocator> Type;

  PowerBoardState_()
    : header()
    , name()
    , serial_num(0)
    , input_voltage(0.0)
    , master_state(0)
    , circuit_state()
    , circuit_voltage()
    , run_stop(false)
    , wireless_stop(false)  {
      circuit_state.assign(0);

      circuit_voltage.assign(0.0);
  }
  PowerBoardState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , serial_num(0)
    , input_voltage(0.0)
    , master_state(0)
    , circuit_state()
    , circuit_voltage()
    , run_stop(false)
    , wireless_stop(false)  {
  (void)_alloc;
      circuit_state.assign(0);

      circuit_voltage.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint32_t _serial_num_type;
  _serial_num_type serial_num;

   typedef double _input_voltage_type;
  _input_voltage_type input_voltage;

   typedef int8_t _master_state_type;
  _master_state_type master_state;

   typedef boost::array<int8_t, 3>  _circuit_state_type;
  _circuit_state_type circuit_state;

   typedef boost::array<double, 3>  _circuit_voltage_type;
  _circuit_voltage_type circuit_voltage;

   typedef uint8_t _run_stop_type;
  _run_stop_type run_stop;

   typedef uint8_t _wireless_stop_type;
  _wireless_stop_type wireless_stop;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STATE_NOPOWER)
  #undef STATE_NOPOWER
#endif
#if defined(_WIN32) && defined(STATE_STANDBY)
  #undef STATE_STANDBY
#endif
#if defined(_WIN32) && defined(STATE_PUMPING)
  #undef STATE_PUMPING
#endif
#if defined(_WIN32) && defined(STATE_ON)
  #undef STATE_ON
#endif
#if defined(_WIN32) && defined(STATE_ENABLED)
  #undef STATE_ENABLED
#endif
#if defined(_WIN32) && defined(STATE_DISABLED)
  #undef STATE_DISABLED
#endif
#if defined(_WIN32) && defined(MASTER_NOPOWER)
  #undef MASTER_NOPOWER
#endif
#if defined(_WIN32) && defined(MASTER_STANDBY)
  #undef MASTER_STANDBY
#endif
#if defined(_WIN32) && defined(MASTER_ON)
  #undef MASTER_ON
#endif
#if defined(_WIN32) && defined(MASTER_OFF)
  #undef MASTER_OFF
#endif
#if defined(_WIN32) && defined(MASTER_SHUTDOWN)
  #undef MASTER_SHUTDOWN
#endif

  enum {
    STATE_NOPOWER = 0,
    STATE_STANDBY = 1,
    STATE_PUMPING = 2,
    STATE_ON = 3,
    STATE_ENABLED = 3,
    STATE_DISABLED = 4,
    MASTER_NOPOWER = 0,
    MASTER_STANDBY = 1,
    MASTER_ON = 2,
    MASTER_OFF = 3,
    MASTER_SHUTDOWN = 4,
  };


  typedef boost::shared_ptr< ::pr2_msgs::PowerBoardState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_msgs::PowerBoardState_<ContainerAllocator> const> ConstPtr;

}; // struct PowerBoardState_

typedef ::pr2_msgs::PowerBoardState_<std::allocator<void> > PowerBoardState;

typedef boost::shared_ptr< ::pr2_msgs::PowerBoardState > PowerBoardStatePtr;
typedef boost::shared_ptr< ::pr2_msgs::PowerBoardState const> PowerBoardStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_msgs::PowerBoardState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_msgs::PowerBoardState_<ContainerAllocator1> & lhs, const ::pr2_msgs::PowerBoardState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.serial_num == rhs.serial_num &&
    lhs.input_voltage == rhs.input_voltage &&
    lhs.master_state == rhs.master_state &&
    lhs.circuit_state == rhs.circuit_state &&
    lhs.circuit_voltage == rhs.circuit_voltage &&
    lhs.run_stop == rhs.run_stop &&
    lhs.wireless_stop == rhs.wireless_stop;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_msgs::PowerBoardState_<ContainerAllocator1> & lhs, const ::pr2_msgs::PowerBoardState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::PowerBoardState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::PowerBoardState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::PowerBoardState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08899b671e6a1a449e7ce0000da8ae7b";
  }

  static const char* value(const ::pr2_msgs::PowerBoardState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08899b671e6a1a44ULL;
  static const uint64_t static_value2 = 0x9e7ce0000da8ae7bULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_msgs/PowerBoardState";
  }

  static const char* value(const ::pr2_msgs::PowerBoardState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message communicates the state of the PR2's power board.\n"
"int8 STATE_NOPOWER=0\n"
"int8 STATE_STANDBY=1\n"
"int8 STATE_PUMPING=2\n"
"int8 STATE_ON=3\n"
"int8 STATE_ENABLED=3  # Preferred over STATE_ON, keeping STATE_ON for backcompat\n"
"int8 STATE_DISABLED=4\n"
"\n"
"int8 MASTER_NOPOWER=0\n"
"int8 MASTER_STANDBY=1\n"
"int8 MASTER_ON=2\n"
"int8 MASTER_OFF=3\n"
"int8 MASTER_SHUTDOWN=4\n"
"\n"
"Header header\n"
"string name # Name with serial number\n"
"uint32 serial_num # Serial number for this board's message\n"
"float64 input_voltage # Input voltage to power board\n"
"\n"
"# Master States:\n"
"#  MASTER_NOPOWER, MASTER_STANDBY, MASTER_ON, MASTER_OFF, MASTER_SHUTDOWN \n"
"int8 master_state  # The master state machine's state in the powerboard\n"
"\n"
"# Circuit States:\n"
"#  STATE_NOPOWER, STATE_STANDBY, STATE_PUMPING, STATE_ON, STATE_DISABLED\n"
"int8[3] circuit_state # One of the above states\n"
"float64[3] circuit_voltage  # Output voltage of each circuit\n"
"\n"
"# True if robot should be enabled\n"
"bool run_stop           #Note - if the wireless run-stop is hit, this will be unobservable\n"
"bool wireless_stop \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::pr2_msgs::PowerBoardState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.serial_num);
      stream.next(m.input_voltage);
      stream.next(m.master_state);
      stream.next(m.circuit_state);
      stream.next(m.circuit_voltage);
      stream.next(m.run_stop);
      stream.next(m.wireless_stop);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PowerBoardState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_msgs::PowerBoardState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "serial_num: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.serial_num);
    s << indent << "input_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.input_voltage);
    s << indent << "master_state: ";
    Printer<int8_t>::stream(s, indent + "  ", v.master_state);
    s << indent << "circuit_state[]" << std::endl;
    for (size_t i = 0; i < v.circuit_state.size(); ++i)
    {
      s << indent << "  circuit_state[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.circuit_state[i]);
    }
    s << indent << "circuit_voltage[]" << std::endl;
    for (size_t i = 0; i < v.circuit_voltage.size(); ++i)
    {
      s << indent << "  circuit_voltage[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.circuit_voltage[i]);
    }
    s << indent << "run_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.run_stop);
    s << indent << "wireless_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wireless_stop);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MSGS_MESSAGE_POWERBOARDSTATE_H
