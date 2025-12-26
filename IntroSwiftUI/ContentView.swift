//
//  ContentView.swift
//  IntroSwiftUI
//
//  Created by Obidjon Joraboyev on 23/12/25.
//

import SwiftUI
import UIKit

struct ContentView: View {

    @State var selectedXPositions: [Int] = [] {

        didSet {

            let wins: [[Int]] = [
                [1, 2, 3], [4, 5, 6], [7, 8, 9],  // rows
                [1, 4, 7], [2, 5, 8], [3, 6, 9],  // columns
                [1, 5, 9], [3, 5, 7],  // diagonals
            ]
            let oSet = Set(selectedXPositions)
            if wins.contains(where: { Set($0).isSubset(of: oSet) }) {
                print("this working XX")
                print("X won the game")
                victoryMessage = "X won the game"
                reset()
            }
        }
    }

    @State var selectedOPositions: [Int] = [] {

        didSet {

            let wins: [[Int]] = [
                [1, 2, 3], [4, 5, 6], [7, 8, 9],  // rows
                [1, 4, 7], [2, 5, 8], [3, 6, 9],  // columns
                [1, 5, 9], [3, 5, 7],  // diagonals
            ]
            let oSet = Set(selectedOPositions)
            if wins.contains(where: { Set($0).isSubset(of: oSet) }) {

                print("O won the game")
                victoryMessage = "O won the game"
                reset()
            }
        }
    }
    @State var allSelectedOptions: [Int] = [] {
        didSet {

            if allSelectedOptions.count == 9 {
                if isResetting != true {
                    victoryMessage = "No one won the match, try again!"
                    print("this working ALL")
                    reset()
                }
            }
        }
    }

    @State private var isResetting = false
    @State var victoryMessage = ""

    func reset() {
        print("resetting")
        #if os(iOS)

            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        #endif
        if isResetting == false {
            isResetting = true
            Task {
                try? await Task.sleep(nanoseconds: 3_000_000_000)
                allSelectedOptions.removeAll()
                selectedOPositions.removeAll()
                selectedXPositions.removeAll()
                isResetting = false
                victoryMessage = ""
            }
        }
    }
    var body: some View {

        GeometryReader { geometry in
            VStack(spacing: 0) {

                Text(victoryMessage)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)

                ZStack {
                    VStack(spacing: 5) {

                        HStack(spacing: 5) {

                            Button(action: {
                                if !allSelectedOptions.contains(1) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(1)
                                    } else {
                                        selectedXPositions.append(1)
                                    }
                                    allSelectedOptions.append(1)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            1
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(1)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(2) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(2)
                                    } else {
                                        selectedXPositions.append(2)
                                    }
                                    allSelectedOptions.append(2)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            2
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(2)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(3) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(3)
                                    } else {
                                        selectedXPositions.append(3)
                                    }
                                    allSelectedOptions.append(3)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            3
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(3)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                        }

                        HStack(spacing: 5) {

                            Button(action: {
                                if !allSelectedOptions.contains(4) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(4)
                                    } else {
                                        selectedXPositions.append(4)
                                    }
                                    allSelectedOptions.append(4)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            4
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(4)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(5) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(5)
                                    } else {
                                        selectedXPositions.append(5)
                                    }
                                    allSelectedOptions.append(5)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            5
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(5)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(6) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(6)
                                    } else {
                                        selectedXPositions.append(6)
                                    }
                                    allSelectedOptions.append(6)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            6
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(6)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                        }

                        HStack(spacing: 5) {

                            Button(action: {
                                if !allSelectedOptions.contains(7) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(7)
                                    } else {
                                        selectedXPositions.append(7)
                                    }
                                    allSelectedOptions.append(7)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            7
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(7)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(8) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(8)
                                    } else {
                                        selectedXPositions.append(8)
                                    }
                                    allSelectedOptions.append(8)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            8
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(8)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                            Button(action: {
                                if !allSelectedOptions.contains(9) {
                                    if allSelectedOptions.count % 2 == 0 {
                                        selectedOPositions.append(9)
                                    } else {
                                        selectedXPositions.append(9)
                                    }
                                    allSelectedOptions.append(9)
                                }
                            }) {
                                ZStack {
                                    Color.gray
                                    Image(
                                        systemName: selectedOPositions.contains(
                                            9
                                        )
                                            ? "circle"
                                            : selectedXPositions.contains(9)
                                                ? "xmark" : "empty"
                                    )
                                    .font(.system(size: 40)).foregroundStyle(
                                        .white
                                    )
                                }
                                .frame(width: 110, height: 110)
                                .cornerRadius(12)
                            }

                        }

                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .transaction { $0.animation = nil }
                    .buttonStyle(.plain)
                    .disabled(isResetting)

                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .center
                )

            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .center
            )
        }
    }
}

#Preview {
    ContentView()
}
