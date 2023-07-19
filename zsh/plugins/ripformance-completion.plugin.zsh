#compdef ripformance

function _ripformance_completion() {
  _arguments "--bail[bails at the first failure]" "--errors:[only logs errors]" "--xapiVersion=[the targeted xapi version]" "--endpoint=[the LRS endpoint to target]"
}

_ripformance_completion "$@"
