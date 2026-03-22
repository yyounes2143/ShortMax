package com.amazonaws.auth;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class QueryStringSigner extends AbstractAWSSigner implements Signer {
    private Date overriddenDate;

    private String calculateStringToSignV1(Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(map);
        for (Map.Entry entry : treeMap.entrySet()) {
            sb2.append((String) entry.getKey());
            sb2.append((String) entry.getValue());
        }
        return sb2.toString();
    }

    private String calculateStringToSignV2(Request<?> request) {
        URI endpoint = request.getEndpoint();
        Map<String, String> parameters = request.getParameters();
        return ShareTarget.METHOD_POST + "\n" + getCanonicalizedEndpoint(endpoint) + "\n" + getCanonicalizedResourcePath(request) + "\n" + getCanonicalizedQueryString(parameters);
    }

    private String getCanonicalizedResourcePath(Request<?> request) {
        String str = "";
        if (request.getEndpoint().getPath() != null) {
            str = "" + request.getEndpoint().getPath();
        }
        if (request.l() != null) {
            if (str.length() > 0 && !str.endsWith(DomExceptionUtils.SEPARATOR) && !request.l().startsWith(DomExceptionUtils.SEPARATOR)) {
                str = str + DomExceptionUtils.SEPARATOR;
            }
            str = str + request.l();
        } else if (!str.endsWith(DomExceptionUtils.SEPARATOR)) {
            str = str + DomExceptionUtils.SEPARATOR;
        }
        if (!str.startsWith(DomExceptionUtils.SEPARATOR)) {
            str = DomExceptionUtils.SEPARATOR + str;
        }
        if (str.startsWith("//")) {
            return str.substring(1);
        }
        return str;
    }

    private String getFormattedTimestamp(long j10) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = this.overriddenDate;
        if (date != null) {
            return simpleDateFormat.format(date);
        }
        return simpleDateFormat.format(getSignatureDate(j10));
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.p("SecurityToken", aWSSessionCredentials.getSessionToken());
    }

    void overrideDate(Date date) {
        this.overriddenDate = date;
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
        sign(request, SignatureVersion.V2, SigningAlgorithm.HmacSHA256, aWSCredentials);
    }

    public void sign(Request<?> request, SignatureVersion signatureVersion, SigningAlgorithm signingAlgorithm, AWSCredentials aWSCredentials) {
        String calculateStringToSignV2;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
        request.p("AWSAccessKeyId", sanitizeCredentials.a());
        request.p("SignatureVersion", signatureVersion.toString());
        request.p("Timestamp", getFormattedTimestamp(getTimeOffset(request)));
        if (sanitizeCredentials instanceof AWSSessionCredentials) {
            addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
        }
        if (signatureVersion.equals(SignatureVersion.V1)) {
            calculateStringToSignV2 = calculateStringToSignV1(request.getParameters());
        } else if (signatureVersion.equals(SignatureVersion.V2)) {
            request.p("SignatureMethod", signingAlgorithm.toString());
            calculateStringToSignV2 = calculateStringToSignV2(request);
        } else {
            throw new AmazonClientException("Invalid Signature Version specified");
        }
        request.p("Signature", signAndBase64Encode(calculateStringToSignV2, sanitizeCredentials.b(), signingAlgorithm));
    }
}
