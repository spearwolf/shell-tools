param (
    [Parameter(Mandatory=$true)]
    [string]$IN,
    [Parameter(Mandatory=$true)]
    [string]$OUT
)

Write-Host "file-in: $IN"
Write-Host "file-out: $OUT"

# OpenSSL muss auf dem System installiert sein, um diesen Befehl auszuführen
& openssl enc -aes-256-cbc -d -salt -pbkdf2 -in $IN -out $OUT
