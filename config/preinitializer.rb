require 'fileutils'

file_utils_no_write = FileUtils::NoWrite
Object.send :remove_const, :FileUtils
FileUtils = file_utils_no_write
