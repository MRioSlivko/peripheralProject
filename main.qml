import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12





ApplicationWindow {
    visible: true
    width: Screen.width
    height: Screen.height
    minimumHeight: 500
    minimumWidth: 350
    property color backgroundColor: "white"
    title: "test"
    visibility: ApplicationWindow.Windowed

    property string selectedBackground: ""
    onWidthChanged: widthText.text = "Width: " + width
    onHeightChanged: heightText.text = "Height: " + height


    property string bgColor: "white" //глобальные переменные (только для QML)
    property string msgQML: " "
    property bool msgBool: false



    Rectangle {
        anchors.fill: parent
        color: backgroundColor
    }
    // Главная страница
    Item{
        id: mainpage
        visible: true



        Button {
            id: devicesButton
            text: "devices info"
            onClicked: stackView.push(devicespage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.4
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }


        Button {
            text: "cpu info"
            onClicked: stackView.push(cpupage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.5
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }

        Button {
            text: "memory info"
            onClicked: stackView.push(memorypage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.6
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }

        Button {
            text: "dmesg info"
            onClicked: stackView.push(dmesgpage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.7
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }

        Button {
            text: "port info"
            onClicked: stackView.push(portpage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.8
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }
        Button {
            text: "algorithm"
            onClicked: stackView.push(algopage)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.9
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }

        Button {
            text: "ind"
            onClicked: stackView.push(indicator)
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.2
            width: 120
            height: 40

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
        }

    }
    // Страница с информацией о девайсах
    Item {
        id: devicespage
        visible: false
        Button {

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }

            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }

        Rectangle {
            color: backgroundColor
            width: 100; height: 100
            anchors.centerIn: parent
            ScrollView {

                id: scrollView
                anchors.fill: parent

                Text {
                    id: devicestext
                    visible: true
                    color: "black"
                    text: page1Text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }

    // Страница с информацией о проце
    Item {
        visible: false
        id: cpupage
        Rectangle {
            color: backgroundColor
            width: 300; height: 300
            visible: true
            anchors.centerIn: parent
            ScrollView {

                id: scrollView1
                anchors.fill: parent
                Text {
                    anchors.fill: cpupage
                    anchors.left: cpupage
                    id: cputext
                    visible: true
                    color: "black"
                    text: page2Text

                }
            }
        }


        Button {
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }

            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }
    }



    // Страница с информацией о памяти
    Item {
        id: memorypage
        visible: false
        Button {
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }

        Rectangle {
            color: backgroundColor
            width: 300; height: 300
            visible: true
            anchors.centerIn: parent
            ScrollView{
                id: scrollView2
                anchors.fill: parent
                Text {
                    id: memorytext
                    visible: true
                    color: "black"
                    text: page3Text
                    wrapMode: Text.WordWrap
                }

            }
        }
    }

    Item {
        id: dmesgpage
        visible: false
        Button {
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }

        Rectangle {
            color: backgroundColor
            width: 300; height: 300
            visible: true
            anchors.centerIn: parent
            ScrollView{
                id: scrollView3
                anchors.fill: parent
                Text {
                    id: dmesgtext
                    visible: true
                    color: "black"
                    text: page4Text
                    wrapMode: Text.WordWrap
                }

            }
        }
    }
// Страница с информацией о портах
    Item {
        id: portpage
        visible: false
        Button {
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }

        Rectangle {
            color: backgroundColor
            width: 300; height: 300
            visible: true
            anchors.centerIn: parent
            ScrollView{
                id: scrollView4
                anchors.fill: parent
                Text {
                    id: porttext
                    visible: true
                    color: "black"
                    text: page5Text
                    wrapMode: Text.WordWrap
                }

            }
        }
    }

    Item {
        id: algopage
        visible: false
        Button {
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "black"
                border.width: 2
            }
            text: "to main"
            onClicked: {
                stackView.pop()
            }
        }

        Rectangle {
            color: backgroundColor
            width: 300; height: 300
            visible: true
            anchors.centerIn: parent
            ScrollView{
                id: scrollView6
                anchors.fill: parent
                Text {
                    id: algotext
                    visible: true
                    color: "black"
                    text: page6Text
                    wrapMode: Text.WordWrap
                }
            }
        }
    }

    Item {
        id: indicator

            signal buttonClicked18();

            Keys.onPressed: {
                if (event.key === Qt.Key_1) {
                    console.log("Key 1");
                    myobj.driver1Call();
                }
                if (event.key === Qt.Key_Up) {
                    console.log("Up");
                    msgQML = "Нажмите клавишу включения любого индикатора клавиатуры";
                    msgBool = true; //msgBool говорит о том, что сообщение выведено и надо обработать нажатие NumLock или CapsLock
                }
                if(msgBool && (event.key === Qt.Key_NumLock)){ msgQML = "NumLock pressed" }
                if(msgBool && (event.key === Qt.Key_CapsLock)){ msgQML = "CapsLock pressed" }
                if (event.key > 0x01000029 && event.key < 0x0100003c) { // адреса клавиш от F1 до F12
                    console.log("F1-F12 pressed");
                    myobj.driver3Call();
                }
            }

            Button {
                text: "back"
                onClicked: indicator.buttonClicked18()
            }

            Column{
                anchors.centerIn: parent
                Text { text: "Нажмите кнопку 1, чтобы включить и выключить индикаторы" }
                Text { text: "Нажмите на стрелку вверх, чтобы узнать, какой индикатор будет включен"; }
                Text { text: "Нажмите на любую клавишу из F1-F12, чтобы инвертировать значения индикаторов";}

                Text{ text: " " } //
                Text{ text: " " } // для красоты
                Text{ text: " " }
                Text{ text: " " }

                Text{ text: msgQML } // этот текст меняется
            }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainpage
    }



    Rectangle {
//
        x: 150
        y: 150

        Column {
            anchors.centerIn: parent
            spacing: 10

            Text {
                text: "Screen Size Information"
                font.pixelSize: 16
            }

            Text {
                id: widthText
                text: "Screen Width: " + width
            }

            Text {
                id: heightText
                text: "Screen Height: " + height
            }


        }
    }




        }


