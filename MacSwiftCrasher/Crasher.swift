//
//  Crasher.swift
//  MyPorscheDemo
//
//  Created by Robert Galli on 11/1/22.
//

import Foundation

class Crasher {
    let prop: Int? = nil
    
    func GenerateStackFramesAndCrash(time: Int64) {
        print("GenerateStackFramesAndCrash: \(GetTime() - time)")
        StackFrame0(time: time)
    }
    
    func StackFrame0(time: Int64) {
        print("StackFrame0: \(GetTime() - time)")
        StackFrame1(time: time)
    }
    
    func StackFrame1(time: Int64) {
        print("StackFrame1: \(GetTime() - time)")
        StackFrame2(time: time)
    }
    
    func StackFrame2(time: Int64) {
        print("StackFrame2: \(GetTime() - time)")
        Crash(time: time)
    }
    
    func Crash(time: Int64) {
        print("Crash: \(GetTime() - time)")
        _ = prop!
    }
    
    func GetTime() -> Int64 {
        return Int64((Date().timeIntervalSince1970 * 1000.0).rounded());
    }
}
