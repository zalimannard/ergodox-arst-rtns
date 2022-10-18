#!/bin/bash

# Russian

SHORT_NAME="eru"
NAME="ErgoDox Русская"

echo Updating file with Russian layout
sudo cp ./$SHORT_NAME /usr/share/X11/xkb/symbols

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/base.lst; then
    echo Adding information to /usr/share/X11/xkb/rules/base.lst

    sed "/! layout/ a \  $SHORT_NAME             $NAME" /usr/share/X11/xkb/rules/base.lst > ./base.lst

    sudo cp ./base.lst /usr/share/X11/xkb/rules/base.lst
    rm ./base.lst
else
    echo The /usr/share/X11/xkb/rules/base.lst file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/evdev.lst; then
    echo Adding information to /usr/share/X11/xkb/rules/evdev.lst

    sed "/! layout/ a \  $SHORT_NAME             $NAME" /usr/share/X11/xkb/rules/evdev.lst > ./evdev.lst

    sudo cp ./evdev.lst /usr/share/X11/xkb/rules/evdev.lst
    rm ./evdev.lst
else
    echo The /usr/share/X11/xkb/rules/evdev.lst file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/base.xml; then
    echo Adding information to /usr/share/X11/xkb/rules/base.xml

    sed "/<layoutList>/ a \    </layout>" /usr/share/X11/xkb/rules/base.xml > ./base.xml
    sed "/<layoutList>/ a \      </configItem>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        </languageList>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \          <iso639Id>rus</iso639Id>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <languageList>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \      <description>$NAME</description>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <shortDescription>$SHORT_NAME</shortDescription>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <name>$SHORT_NAME</name>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \      <configItem>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \    <layout>" ./base.xml > ./tmp
    mv ./tmp ./base.xml

    sudo cp ./base.xml /usr/share/X11/xkb/rules/base.xml
    rm ./base.xml
else
    echo The /usr/share/X11/xkb/rules/base.xml file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/evdev.xml; then
    echo Adding information to /usr/share/X11/xkb/rules/evdev.xml

    sed "/<layoutList>/ a \    </layout>" /usr/share/X11/xkb/rules/evdev.xml > ./evdev.xml
    sed "/<layoutList>/ a \      </configItem>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        </languageList>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \          <iso639Id>rus</iso639Id>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <languageList>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \      <description>$NAME</description>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <shortDescription>$SHORT_NAME</shortDescription>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <name>$SHORT_NAME</name>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \      <configItem>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \    <layout>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml

    sudo cp ./evdev.xml /usr/share/X11/xkb/rules/evdev.xml
    rm ./evdev.xml
else
    echo The /usr/share/X11/xkb/rules/evdev.xml file already contains layout data
fi

# English

SHORT_NAME="enn"
NAME="ErgoDox English"

echo
echo Updating file with English layout
sudo cp ./$SHORT_NAME /usr/share/X11/xkb/symbols

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/base.lst; then
    echo Adding information to /usr/share/X11/xkb/rules/base.lst

    sed "/! layout/ a \  $SHORT_NAME             $NAME" /usr/share/X11/xkb/rules/base.lst > ./base.lst

    sudo cp ./base.lst /usr/share/X11/xkb/rules/base.lst
    rm ./base.lst
else
    echo The /usr/share/X11/xkb/rules/base.lst file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/evdev.lst; then
    echo Adding information to /usr/share/X11/xkb/rules/evdev.lst

    sed "/! layout/ a \  $SHORT_NAME             $NAME" /usr/share/X11/xkb/rules/evdev.lst > ./evdev.lst

    sudo cp ./evdev.lst /usr/share/X11/xkb/rules/evdev.lst
    rm ./evdev.lst
else
    echo The /usr/share/X11/xkb/rules/evdev.lst file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/base.xml; then
    echo Adding information to /usr/share/X11/xkb/rules/base.xml

    sed "/<layoutList>/ a \    </layout>" /usr/share/X11/xkb/rules/base.xml > ./base.xml
    sed "/<layoutList>/ a \      </configItem>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        </languageList>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \          <iso639Id>rus</iso639Id>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <languageList>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \      <description>$NAME</description>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <shortDescription>$SHORT_NAME</shortDescription>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \        <name>$SHORT_NAME</name>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \      <configItem>" ./base.xml > ./tmp
    mv ./tmp ./base.xml
    sed "/<layoutList>/ a \    <layout>" ./base.xml > ./tmp
    mv ./tmp ./base.xml

    sudo cp ./base.xml /usr/share/X11/xkb/rules/base.xml
    rm ./base.xml
else
    echo The /usr/share/X11/xkb/rules/base.xml file already contains layout data
fi

if ! grep -q "$NAME" /usr/share/X11/xkb/rules/evdev.xml; then
    echo Adding information to /usr/share/X11/xkb/rules/evdev.xml

    sed "/<layoutList>/ a \    </layout>" /usr/share/X11/xkb/rules/evdev.xml > ./evdev.xml
    sed "/<layoutList>/ a \      </configItem>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        </languageList>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \          <iso639Id>rus</iso639Id>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <languageList>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \      <description>$NAME</description>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <shortDescription>$SHORT_NAME</shortDescription>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \        <name>$SHORT_NAME</name>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \      <configItem>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml
    sed "/<layoutList>/ a \    <layout>" ./evdev.xml > ./tmp
    mv ./tmp ./evdev.xml

    sudo cp ./evdev.xml /usr/share/X11/xkb/rules/evdev.xml
    rm ./evdev.xml
else
    echo The /usr/share/X11/xkb/rules/evdev.xml file already contains layout data
fi





