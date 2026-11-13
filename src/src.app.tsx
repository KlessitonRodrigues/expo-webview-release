import { StatusBar } from 'expo-status-bar'
import { View } from 'react-native'
import { WebView } from 'react-native-webview'
import {
  DEFAULT_WEBVIEW_URL,
  STATUS_BAR_STYLE,
  WEBVIEW_STYLE,
} from './constants/constants.app'
import { getWebViewSource } from './utils/utils.webview'

export default function App() {
  return (
    <View style={STATUS_BAR_STYLE}>
      <StatusBar style="dark" />
      <WebView style={WEBVIEW_STYLE} source={getWebViewSource(DEFAULT_WEBVIEW_URL)} />
    </View>
  )
}
