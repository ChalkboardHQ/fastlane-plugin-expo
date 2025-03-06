#include "fastlane_plugin_expo.h"

VALUE rb_mFastlanePluginExpo;

void
Init_fastlane_plugin_expo(void)
{
  rb_mFastlanePluginExpo = rb_define_module("FastlanePluginExpo");
}
