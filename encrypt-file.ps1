param (
    [Parameter(Mandatory=$true)]
    [string]$IN
)

$OUT = "$IN.enc"

Write-Host "file-in: $IN"
Write-Host "file-out: $OUT"

# OpenSSL muss auf dem System installiert sein, um diesen Befehl auszuführen
& openssl enc -aes-256-cbc -salt -pbkdf2 -in $IN -out $OUT
