#compdef ripformance

function _ripformance_completion() {
  _arguments "--bail:bails at the first failure" "--errors:only logs errors" "--xapiVersion=[the xapi version]:The targeted xAPI version.:(1.0.3 2.0.0)" "--endpoint=[the LRS endpoint to target]"
}

_ripformance_completion "$@"
