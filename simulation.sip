; SIP Call Setup Example
; This is a dummy SIP message exchange with DTMF tones included in signaling
; DTMF tones are sent as part of signaling for interaction, not actual audio data.

INVITE sip:2002@127.0.0.1 SIP/2.0
Via: SIP/2.0/UDP 127.0.0.1:5060;branch=z9hG4bK123456
Max-Forwards: 70
From: <sip:1001@127.0.0.1>;tag=client
To: <sip:2002@127.0.0.1>
Call-ID: 1234567890
CSeq: 1 INVITE
Contact: <sip:1001@127.0.0.1>
Content-Type: application/sdp
Content-Length: 0

; Simulate sending DTMF
; DTMF starts here, we will include them as part of the signaling
DTMF: 1
DTMF: 2
DTMF: 3
DTMF: 4
DTMF: 5
DTMF: 6
DTMF: 7
DTMF: 8
DTMF: 9
DTMF: 0
DTMF: #

; Response from Callee
SIP/2.0 180 Ringing
Via: SIP/2.0/UDP 127.0.0.1:5060;branch=z9hG4bK123456
From: <sip:1001@127.0.0.1>;tag=client
To: <sip:2002@127.0.0.1>;tag=callee
Call-ID: 1234567890
CSeq: 2 INVITE
Contact: <sip:2002@127.0.0.1>
Content-Length: 0

; More DTMF in the signaling
DTMF: *
DTMF: #

ACK sip:2002@127.0.0.1 SIP/2.0
Via: SIP/2.0/UDP 127.0.0.1:5060;branch=z9hG4bK123456
From: <sip:1001@127.0.0.1>;tag=client
To: <sip:2002@127.0.0.1>;tag=callee
Call-ID: 1234567890
CSeq: 3 ACK
Content-Length: 0

; End of call interaction with DTMF tones
BYE sip:2002@127.0.0.1 SIP/2.0
Via: SIP/2.0/UDP 127.0.0.1:5060;branch=z9hG4bK123456
From: <sip:1001@127.0.0.1>;tag=client
To: <sip:2002@127.0.0.1>;tag=callee
Call-ID: 1234567890
CSeq: 4 BYE
Content-Length: 0

SIP/2.0 200 OK
Via: SIP/2.0/UDP 127.0.0.1:5060;branch=z9hG4bK123456
From: <sip:1001@127.0.0.1>;tag=client
To: <sip:2002@127.0.0.1>;tag=callee
Call-ID: 1234567890
CSeq: 5 BYE
Content-Length: 0
