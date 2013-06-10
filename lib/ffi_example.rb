require "ffi_example/version"

require 'ffi'
require 'ffi-compiler/loader'

module FfiExample
  extend FFI::Library
  ffi_lib FFI::Compiler::Loader.find('example')

  # example function which takes no parameters and returns long
  attach_function :example, [], :string
end
