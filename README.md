# Protocol Buffers, Objective C

An implementation of Protocol Buffers in Objective C.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
This project is based on an implementation of Protocol Buffers from Google.  See the
[Google protobuf project][g-protobuf] for more information.

[g-protobuf]: http://code.google.com/p/protobuf/

## Plug 'n Play

* added pre-compiled binaries for protoc and protoc-gen-obj
* added universal binary
* compiled with maverick

Add the libProtoBuf.framework to your project. The library will work for iOS Simulator and iOS 7.0 on iPhone 4+. To generate new  protobuf model, create a .proto file, in terminal navigate to the directory and run `protoc --objc_out=./`.

## Installation

1. Install XCode and XCode command line tools
2. Install brew
3. `brew install autogen`
4. `brew install aclocal`
5. `brew install automake`
6. `brew install protobuf`
6. Download source or clone repository to local machine
7. `cd` into root directory of project
8. `./autogen.sh`
9. `./configure`
10. `make -B -d & make install`

## Usage

`cd /folder/with/.proto files/ && protoc --objc_out=/my/output/folder *`

## Troubleshooting

Issue installing Protobufs 2.5.0 in Mavericks. Comment out the iosfwd
  
  #ifdef __DECCXX
  // HP C++'s iosfwd doesn't work.
  #include <iostream>
  #else
  #include <sstream>
  //#include <iosfwd> // comment out this for the sstream
  #endif

## File locations

  /usr/local/bin 
    protoc (file or symlink)
    protoc-gen-objc (file or symlink)
  /usr/local/include
    needs a symlink called "protobuf" to /usr/local/Cellar/protobuf/2.5.0/include
  /usr/local/opt
    needs a symlink called "protobuf" to /usr/local/Cellar/protobuf/2.5.0


# Credits

Booyah Inc.
-------------------------------------------------------------------------------
- Jon Parise <jon@booyah.com>


Google Protocol Buffers, Objective C
-------------------------------------------------------------------------------
- Cyrus Najmabadi  (http://code.google.com/p/metasyntactic/wiki/ProtocolBuffers)
- Sergey Martynov  (http://github.com/martynovs/protobuf-objc)


Google Protocol Buffers
-------------------------------------------------------------------------------
- Kenton Varda, Sanjay Ghemawat, Jeff Dean, and others
