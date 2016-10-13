/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_arena.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf


public struct Proto2ArenaUnittest_NestedMessage: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Proto2ArenaUnittest_NestedMessage"}
  public var protoMessageName: String {return "NestedMessage"}
  public var protoPackageName: String {return "proto2_arena_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "d": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "d": 1,
  ]}

  var unknown = ProtobufUnknownStorage()

  public var d: Int32? = nil

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &d)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = d {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "d", jsonFieldName: "d", swiftFieldName: "d")
    }
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Proto2ArenaUnittest_NestedMessage) -> Bool {
    if ((d != nil || other.d != nil) && (d == nil || other.d == nil || d! != other.d!)) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

public struct Proto2ArenaUnittest_ArenaMessage: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Proto2ArenaUnittest_ArenaMessage"}
  public var protoMessageName: String {return "ArenaMessage"}
  public var protoPackageName: String {return "proto2_arena_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "repeatedNestedMessage": 1,
    "repeatedImportNoArenaMessage": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "repeated_nested_message": 1,
    "repeated_import_no_arena_message": 2,
  ]}

  var unknown = ProtobufUnknownStorage()

  public var repeatedNestedMessage: [Proto2ArenaUnittest_NestedMessage] = []

  public var repeatedImportNoArenaMessage: [Proto2ArenaUnittest_ImportNoArenaNestedMessage] = []

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRepeatedMessageField(fieldType: Proto2ArenaUnittest_NestedMessage.self, value: &repeatedNestedMessage)
    case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Proto2ArenaUnittest_ImportNoArenaNestedMessage.self, value: &repeatedImportNoArenaMessage)
    default:
      handled = false
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !repeatedNestedMessage.isEmpty {
      try visitor.visitRepeatedMessageField(value: repeatedNestedMessage, protoFieldNumber: 1, protoFieldName: "repeated_nested_message", jsonFieldName: "repeatedNestedMessage", swiftFieldName: "repeatedNestedMessage")
    }
    if !repeatedImportNoArenaMessage.isEmpty {
      try visitor.visitRepeatedMessageField(value: repeatedImportNoArenaMessage, protoFieldNumber: 2, protoFieldName: "repeated_import_no_arena_message", jsonFieldName: "repeatedImportNoArenaMessage", swiftFieldName: "repeatedImportNoArenaMessage")
    }
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Proto2ArenaUnittest_ArenaMessage) -> Bool {
    if repeatedNestedMessage != other.repeatedNestedMessage {return false}
    if repeatedImportNoArenaMessage != other.repeatedImportNoArenaMessage {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
