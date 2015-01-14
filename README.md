# Protocol Buffers, Objective C

An implementation of Protocol Buffers for Objective C and Swift.

Protocol Buffers very compact data format for transporting over the internet. This compatible over REST and socket servers. They are very flexible for server end points that change frequently without breaking the client. Also the .proto files are a great way to document the server endpoints request and response with minimal work and auto generate serialization/deserialization on the client and the server. 

The current implemenation uses an Objective-C port of Google's spec. In the future this will move to be a wrapper around the official C++ implementation for better performance while maintaining Swift compatibility.

Swift is supported as well with this libary via the native compability with Objective-C. [Apple Swift/Object-C Docs][appl-swift]

[appl-swift]: https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-XID_75

This project is based on an implementation of Protocol Buffers from Google.  See the
[Google protobuf project][g-protobuf] for more information.

[g-protobuf]: https://developers.google.com/protocol-buffers

## Generating Protocol Buffer code


1. Copy the protocol buffer framework at `bin/Fat/ProtocolBuffers.framework` to your project
2. Add your .proto files (but don't include them in the compiled source). [See Language syntax][g-proto] 
3. Optionally add a Build Phase script to regenerate pb.h/pb.m files when releasing

	if [ $CONFIGURATION == Release ]; then
	    pushd ${PROJECT_DIR}/protos/
		/usr/local/bin/protoc --plugin=/usr/local/bin/protoc-gen-objc *.proto --objc_out=../src
	fi
4. Include all the .pb.m files to your project to be compiled
5. Build your project in Xcode

[g-proto]: https://developers.google.com/protocol-buffers/docs/proto

## Cocoa Pods Support

In testing for Cocoa Pods. It's not been submitted to the central repo yet.

## Plug 'n Play

* added pre-compiled binaries for protoc and protoc-gen-obj
* added universal binary
* added ARC support for generated models
* added NSCoding and NSCopying to store directly to disk or keychain
* compiled with Maverick and works with Yosemite

Add the ProtocolBuffers.framework to your project. The library will work for iOS Simulator and iOS 7.0 on iPhone 4,4s,5,5s.  

To generate protocol buffers model, create a .proto file, in terminal navigate to the `bin/protobuf/2.5.0/bin` directory and run `protoc --objc_out=./ <your_folder_with_.protofiles>`.



## Full Installation

1. Install XCode and XCode command line tools
2. Install brew `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
3. Install Autogen - `brew install autogen`
5. Install Automake - `brew install automake`
6. Install Google Protocol Buffers Compiler - `brew install homebrew/versions/protobuf250`
7. Download ObjC Protocol Buffer Code Generation & Framework - `https://github.com/puppybits/protobuf-objc.git`
8. Either copy the precompiled objc code generation plugin for protocol buffers - `cp ./bin/protoc-gen-objc /usr/local/bin`
7. Or build it

	./autogen.sh
	./configure CXXFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib
	make install

## Usage

`cd /folder/with/.proto files/ && protoc --objc_out=/my/output/folder *`

## Troubleshooting

Issue installing Protobufs 2.5.0 in Mavericks. Comment out the iosfwd.  

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
