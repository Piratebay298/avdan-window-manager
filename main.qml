import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
Window {
    //TODO: Uncomment it for working WM
    flags: Qt.BypassWindowManagerHint | Qt.FramelessWindowHint
    title:qStr("Hello World")
    visible: true
    width:1920
    height:1080
    color: "#444"
    //Rectangle{color: "red";height:parent.height;y:0;x:0;width:parent.width/5}
    //Rectangle{color:"blue";height:parent.height;y:0;x:1*parent.width/5;width:parent.width/5}
    //Rectangle{color:"green";height:parent.height;y:0;x:2*parent.width/5;width:parent.width/5}
    //Rectangle{color:"black";height:parent.height;y:0;x:3*parent.width/5;width:parent.width/5}
    //Rectangle{color:"white";height:parent.height;y:0;x:4*parent.width/5;width:parent.width/5}
    Rectangle{
        color:"black"
        anchors.centerIn: parent
        height:childrenRect.height
        width:childrenRect.width
        Label{
            text:"<h1>Avdan OS Window Manager</h1>"
            anchors.centerIn: parent
            color:"white"
            font.family: "monospace"
        }
    }
    Item{
        id:overlay
        width:parent.width
        height:parent.width

        property int zorder: 1
        AWindow{
            width:640
            height:480
            x:50
            y:50
            z:zorder
        }
        AWindow{
            width:640
            height:480
            x:50
            y:50
            z:zorder
        }
    }
}
