import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View, requireNativeComponent } from 'react-native';
const TryOnViewiOS = requireNativeComponent("BanubaTryOnViewiOS")

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app 2!</Text>
      <TryOnViewiOS style={ styles.wrapper }/>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  wrapper: {
    flex: 1, alignItems: "center", justifyContent: "center", borderColor:'red', borderWidth:2
  },
});
