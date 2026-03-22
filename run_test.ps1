$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$activateScript = Join-Path $scriptDir ".venv\Scripts\Activate.ps1"
$pythonScript = Join-Path $scriptDir "test.py"

if (-not (Test-Path $activateScript)) {
    throw "Virtual environment activation script was not found: $activateScript"
}

if (-not (Test-Path $pythonScript)) {
    throw "Python script was not found: $pythonScript"
}

. $activateScript
python $pythonScript
