
import { NativeModules, NativeEventEmitter } from 'react-native';

const { RNReactNativeGrpc } = NativeModules;
const { RNReactNativeGrpcListener } = new NativeEventEmitter(NativeModules.RNReactNativeGrpc)

export default { RNReactNativeGrpc, RNReactNativeGrpcListener };
