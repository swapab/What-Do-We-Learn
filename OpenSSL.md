```
openssl s_client -connect www.example.com:443 < /dev/null 2>/dev/null | openssl x509 -text -in /dev/stdin | grep "Signature Algorithm"
