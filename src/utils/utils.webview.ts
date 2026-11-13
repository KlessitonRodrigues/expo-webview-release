import { DEFAULT_WEBVIEW_URL } from '../constants/constants.app'

type sourceUri = {
  uri: string
}

const getWebViewSource = (url: string = DEFAULT_WEBVIEW_URL): sourceUri => {
  return { uri: url }
}

export { getWebViewSource }
