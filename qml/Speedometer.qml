// Copyright (C) 2024 Michael Torrie and the QtAgOpenGPS Dev Team
// SPDX-License-Identifier: GNU General Public License v3.0 or later
//
// Main window Speedo
import QtQuick 2.0

Rectangle
{
    id: speedo
    width: 117
    height: 117
    color: "transparent"
    property double speed: 0

    Image {
        id: speedoNumbers
        anchors.fill: parent
        source: prefix + "/images/textures/speedo.png"
        fillMode: Image.PreserveAspectCrop
    }
    Image {
        id: speedoNeedle
        anchors.centerIn: parent
        source: prefix + "/images/textures/SpeedoNedle.png"
        fillMode: Image.PreserveAspectCrop
        width: speedo.width * 0.829
        height: speedo.height * 0.829

        transform: Rotation {
                origin.x: speedoNeedle.width/2
                origin.y: speedoNeedle.height/2
                angle: (speedo.speed > 20) ? 150 : (speedo.speed - 10) * 15
        }
    }
}
