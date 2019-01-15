//: Playground - noun: a place where people can play

import UIKit

func calcSimilarity(userRatingsA: [String:Float], userRatingsB: [String:Float]) -> Float {
    let distance = userRatingsA.merging(userRatingsB){$0 - $1}.map{$0.value}.map{$0 * $0}.reduce(0.0, +).squareRoot()
    return 1.0 / (1.0 + distance)
}

let jo : [String:Float] = ["Monsters Inc." : 5.0, "The Bourne Identity" : 2.0, "The Martian" : 2.0, "Blade Runner" : 1.0]

let sam : [String:Float] = ["The Martian" : 4.0, "Blade Runner" : 4.0, "The Matrix" : 4.0, "Inception" : 5.0]

let chris : [String:Float] = ["The Bourne Identity" : 4.0, "The Martian" : 5.0, "Blade Runner" : 5.0, "Inception" : 4.0]

print(calcSimilarity(
    userRatingsA: sam,
    userRatingsB: jo
))

print(calcSimilarity(
    userRatingsA: sam,
    userRatingsB: sam
))

print(calcSimilarity(
    userRatingsA: sam,
    userRatingsB: chris
))
