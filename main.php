// This is not a source code but only a simulation, if you want to get real time dtmf digits from your client or anyone then you must buy our bot.


<?php



function generateSIPWithDTMF() {
    // Mock SIP INVITE message
    $sip_invite = <<<SIP
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

SIP;



    // Add DTMF tones to the SIP message
    $sip_message = $sip_invite . "\n";
    foreach ($dtmf_tones as $dtmf) {
        $sip_message .= $dtmf . "\n";
    }


    $full_sip_interaction = $sip_message . "\n" . $sip_response . "\n" . $sip_ack . "\n" . $sip_bye;

    return $full_sip_interaction;
}

echo generateSIPWithDTMF();

?>
