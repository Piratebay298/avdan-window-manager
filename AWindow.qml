import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
Rectangle{
    id:awindow
    //DropShadow{anchors.fill: parent;horizontalOffset: 0;radius: 16;verticalOffset: 0;spread: 0;samples: 32;color: "#aa000000";source: parent;}
    MouseArea{
        anchors.fill: parent
        onClicked: {
            //zorder=1;
            parent.z=2;
        }
    }

    color:"#88000000"
    radius:10
    //clip:true
    Drag.active:true
    //Drag.hotSpot.x: 10
    //Drag.hotSpot.y: 10
    //Drag.target: parent
    Rectangle{
        MouseArea{
            id: dragArea
            anchors.fill: parent
            drag.target: parent.parent
        }
        Rectangle{
            id:tabbar
            width:parent.width-(multitaskbuttoncontainer.width+windowtoolbuttonscontainer.width+20)
            height:parent.height-10
            y:5
            x:5
            radius: 10
            color:"#00000000"
        }
        Rectangle{
            id:multitaskbuttoncontainer
            width:100
            height:parent.height-10
            y:5
            color:"#66ffffff"
            radius: 10
            x:tabbar.width+10
        }
        Rectangle{
            color:"#66ffffff"
            width:100
            radius: 10
            height:parent.height-10
            id:windowtoolbuttonscontainer
            y:5
            x:tabbar.width+multitaskbuttoncontainer.width+15
        }

        x:0
        y:0
        width:parent.width
        height:40
        radius:10
        color:"#00000000"
    }
    Rectangle{
        x:0
        y:40
        height:parent.height-40
        width: parent.width
        radius:10
        color: "#88ffffff"
    }
}
