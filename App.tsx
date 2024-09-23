import React from 'react';
import {View, Button, SafeAreaView} from 'react-native';
import {NativeModules} from 'react-native';

const {customNotification} = NativeModules;

const callFromNative = () => {
  console.log('Native calling');
  customNotification.MyNotification('CallKit Notification from React Native');
};

export default function App() {
  return (
    <SafeAreaView>
      <Button title="Click" onPress={() => callFromNative()} />
    </SafeAreaView>
  );
}
