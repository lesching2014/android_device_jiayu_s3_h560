def FullOTA_InstallBegin(self):
  CreateVendorPartition(self)
  return

def IncrementalOTA_InstallBegin(self):
  CreateVendorPartition(self)
  return

def CreateVendorPartition(info):
  info.script.AppendExtra('package_extract_file("install/bin/vendor.sh", "/tmp/vendor.sh");');
  info.script.AppendExtra('set_metadata("/tmp/vendor.sh", "uid", 0, "gid", 0, "mode", 0755);');
  info.script.AppendExtra('ui_print("Checking for vendor partition...");');
  info.script.AppendExtra('if run_program("/tmp/vendor.sh") != 0 then');
  info.script.AppendExtra('abort("Create /vendor partition failed.");');
  info.script.AppendExtra('else');
  info.script.AppendExtra('ui_print("Successfully completed.");');
  info.script.AppendExtra('endif;');
