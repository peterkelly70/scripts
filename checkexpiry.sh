
#!/bin/bash
export SITE_URL="literacyhub.edu.au"
export SITE_SSL_PORT="443"
#openssl s_client -connect ${SITE_URL}:${SITE_SSL_PORT} -servername ${SITE_URL} 2> /dev/null |  openssl x509 -noout  -dates
openssl s_client -connect ${SITE_URL}:${SITE_SSL_PORT} -servername ${SITE_URL} 2> /dev/null |  openssl x509 -noout -enddate

