// Generated by gencpp from file pr2_mechanism_controllers/BaseOdometryState.msg
// DO NOT EDIT!


#ifndef PR2_MECHANISM_CONTROLLERS_MESSAGE_BASEODOMETRYSTATE_H
#define PR2_MECHANISM_CONTROLLERS_MESSAGE_BASEODOMETRYSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace pr2_mechanism_controllers
{
template <class ContainerAllocator>
struct BaseOdometryState_
{
  typedef BaseOdometryState_<ContainerAllocator> Type;

  BaseOdometryState_()
    : velocity()
    , wheel_link_names()
    , drive_constraint_errors()
    , longitudinal_slip_constraint_errors()  {
    }
  BaseOdometryState_(const ContainerAllocator& _alloc)
    : velocity(_alloc)
    , wheel_link_names(_alloc)
    , drive_constraint_errors(_alloc)
    , longitudinal_slip_constraint_errors(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _wheel_link_names_type;
  _wheel_link_names_type wheel_link_names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _drive_constraint_errors_type;
  _drive_constraint_errors_type drive_constraint_errors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _longitudinal_slip_constraint_errors_type;
  _longitudinal_slip_constraint_errors_type longitudinal_slip_constraint_errors;





  typedef boost::shared_ptr< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> const> ConstPtr;

}; // struct BaseOdometryState_

typedef ::pr2_mechanism_controllers::BaseOdometryState_<std::allocator<void> > BaseOdometryState;

typedef boost::shared_ptr< ::pr2_mechanism_controllers::BaseOdometryState > BaseOdometryStatePtr;
typedef boost::shared_ptr< ::pr2_mechanism_controllers::BaseOdometryState const> BaseOdometryStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator1> & lhs, const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator2> & rhs)
{
  return lhs.velocity == rhs.velocity &&
    lhs.wheel_link_names == rhs.wheel_link_names &&
    lhs.drive_constraint_errors == rhs.drive_constraint_errors &&
    lhs.longitudinal_slip_constraint_errors == rhs.longitudinal_slip_constraint_errors;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator1> & lhs, const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_mechanism_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a483e137ebc37abafa4c26549091dd6";
  }

  static const char* value(const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a483e137ebc37abULL;
  static const uint64_t static_value2 = 0xafa4c26549091dd6ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_mechanism_controllers/BaseOdometryState";
  }

  static const char* value(const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Twist velocity\n"
"string[] wheel_link_names\n"
"float64[] drive_constraint_errors\n"
"float64[] longitudinal_slip_constraint_errors\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.velocity);
      stream.next(m.wheel_link_names);
      stream.next(m.drive_constraint_errors);
      stream.next(m.longitudinal_slip_constraint_errors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BaseOdometryState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_mechanism_controllers::BaseOdometryState_<ContainerAllocator>& v)
  {
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "wheel_link_names[]" << std::endl;
    for (size_t i = 0; i < v.wheel_link_names.size(); ++i)
    {
      s << indent << "  wheel_link_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.wheel_link_names[i]);
    }
    s << indent << "drive_constraint_errors[]" << std::endl;
    for (size_t i = 0; i < v.drive_constraint_errors.size(); ++i)
    {
      s << indent << "  drive_constraint_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.drive_constraint_errors[i]);
    }
    s << indent << "longitudinal_slip_constraint_errors[]" << std::endl;
    for (size_t i = 0; i < v.longitudinal_slip_constraint_errors.size(); ++i)
    {
      s << indent << "  longitudinal_slip_constraint_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.longitudinal_slip_constraint_errors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MECHANISM_CONTROLLERS_MESSAGE_BASEODOMETRYSTATE_H
