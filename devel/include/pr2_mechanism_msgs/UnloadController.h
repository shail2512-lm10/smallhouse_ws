// Generated by gencpp from file pr2_mechanism_msgs/UnloadController.msg
// DO NOT EDIT!


#ifndef PR2_MECHANISM_MSGS_MESSAGE_UNLOADCONTROLLER_H
#define PR2_MECHANISM_MSGS_MESSAGE_UNLOADCONTROLLER_H

#include <ros/service_traits.h>


#include <pr2_mechanism_msgs/UnloadControllerRequest.h>
#include <pr2_mechanism_msgs/UnloadControllerResponse.h>


namespace pr2_mechanism_msgs
{

struct UnloadController
{

typedef UnloadControllerRequest Request;
typedef UnloadControllerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UnloadController
} // namespace pr2_mechanism_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pr2_mechanism_msgs::UnloadController > {
  static const char* value()
  {
    return "647e5c54b8d6468952d8d31f1efe96c0";
  }

  static const char* value(const ::pr2_mechanism_msgs::UnloadController&) { return value(); }
};

template<>
struct DataType< ::pr2_mechanism_msgs::UnloadController > {
  static const char* value()
  {
    return "pr2_mechanism_msgs/UnloadController";
  }

  static const char* value(const ::pr2_mechanism_msgs::UnloadController&) { return value(); }
};


// service_traits::MD5Sum< ::pr2_mechanism_msgs::UnloadControllerRequest> should match
// service_traits::MD5Sum< ::pr2_mechanism_msgs::UnloadController >
template<>
struct MD5Sum< ::pr2_mechanism_msgs::UnloadControllerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pr2_mechanism_msgs::UnloadController >::value();
  }
  static const char* value(const ::pr2_mechanism_msgs::UnloadControllerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pr2_mechanism_msgs::UnloadControllerRequest> should match
// service_traits::DataType< ::pr2_mechanism_msgs::UnloadController >
template<>
struct DataType< ::pr2_mechanism_msgs::UnloadControllerRequest>
{
  static const char* value()
  {
    return DataType< ::pr2_mechanism_msgs::UnloadController >::value();
  }
  static const char* value(const ::pr2_mechanism_msgs::UnloadControllerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pr2_mechanism_msgs::UnloadControllerResponse> should match
// service_traits::MD5Sum< ::pr2_mechanism_msgs::UnloadController >
template<>
struct MD5Sum< ::pr2_mechanism_msgs::UnloadControllerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pr2_mechanism_msgs::UnloadController >::value();
  }
  static const char* value(const ::pr2_mechanism_msgs::UnloadControllerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pr2_mechanism_msgs::UnloadControllerResponse> should match
// service_traits::DataType< ::pr2_mechanism_msgs::UnloadController >
template<>
struct DataType< ::pr2_mechanism_msgs::UnloadControllerResponse>
{
  static const char* value()
  {
    return DataType< ::pr2_mechanism_msgs::UnloadController >::value();
  }
  static const char* value(const ::pr2_mechanism_msgs::UnloadControllerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PR2_MECHANISM_MSGS_MESSAGE_UNLOADCONTROLLER_H