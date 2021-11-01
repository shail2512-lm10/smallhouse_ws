
"use strict";

let SwitchControllerFeedback = require('./SwitchControllerFeedback.js');
let SwitchControllerActionGoal = require('./SwitchControllerActionGoal.js');
let SwitchControllerActionFeedback = require('./SwitchControllerActionFeedback.js');
let SwitchControllerGoal = require('./SwitchControllerGoal.js');
let SwitchControllerResult = require('./SwitchControllerResult.js');
let SwitchControllerAction = require('./SwitchControllerAction.js');
let SwitchControllerActionResult = require('./SwitchControllerActionResult.js');
let ActuatorStatistics = require('./ActuatorStatistics.js');
let JointStatistics = require('./JointStatistics.js');
let ControllerStatistics = require('./ControllerStatistics.js');
let MechanismStatistics = require('./MechanismStatistics.js');

module.exports = {
  SwitchControllerFeedback: SwitchControllerFeedback,
  SwitchControllerActionGoal: SwitchControllerActionGoal,
  SwitchControllerActionFeedback: SwitchControllerActionFeedback,
  SwitchControllerGoal: SwitchControllerGoal,
  SwitchControllerResult: SwitchControllerResult,
  SwitchControllerAction: SwitchControllerAction,
  SwitchControllerActionResult: SwitchControllerActionResult,
  ActuatorStatistics: ActuatorStatistics,
  JointStatistics: JointStatistics,
  ControllerStatistics: ControllerStatistics,
  MechanismStatistics: MechanismStatistics,
};
