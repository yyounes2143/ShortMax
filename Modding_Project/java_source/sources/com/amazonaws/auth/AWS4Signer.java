package com.amazonaws.auth;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
/* loaded from: classes2.dex */
public class AWS4Signer extends AbstractAWSSigner implements ServiceAwareSigner, RegionAwareSigner {
    protected static final String ALGORITHM = "AWS4-HMAC-SHA256";
    private static final String DATE_PATTERN = "yyyyMMdd";
    private static final long MAX_EXPIRATION_TIME_IN_SECONDS = 604800;
    private static final long MILLISEC = 1000;
    protected static final String TERMINATOR = "aws4_request";
    private static final String TIME_PATTERN = "yyyyMMdd'T'HHmmss'Z'";
    protected static final Log log = LogFactory.b(AWS4Signer.class);
    protected boolean doubleUrlEncode;
    protected Date overriddenDate;
    protected String regionName;
    protected String serviceName;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class HeaderSigningResult {

        /* renamed from: a  reason: collision with root package name */
        private final String f4887a;

        /* renamed from: b  reason: collision with root package name */
        private final String f4888b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f4889c;

        /* renamed from: d  reason: collision with root package name */
        private final byte[] f4890d;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.f4887a = str;
            this.f4888b = str2;
            this.f4889c = bArr;
            this.f4890d = bArr2;
        }

        public String a() {
            return this.f4887a;
        }

        public byte[] b() {
            byte[] bArr = this.f4889c;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        public String c() {
            return this.f4888b;
        }

        public byte[] d() {
            byte[] bArr = this.f4890d;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    public AWS4Signer() {
        this(true);
    }

    protected void addHostHeader(Request<?> request) {
        String host = request.getEndpoint().getHost();
        if (HttpUtils.e(request.getEndpoint())) {
            host = host + ":" + request.getEndpoint().getPort();
        }
        request.q("Host", host);
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.q("x-amz-security-token", aWSSessionCredentials.getSessionToken());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String calculateContentHash(Request<?> request) {
        InputStream binaryRequestPayloadStream = getBinaryRequestPayloadStream(request);
        binaryRequestPayloadStream.mark(-1);
        String a10 = BinaryUtils.a(hash(binaryRequestPayloadStream));
        try {
            binaryRequestPayloadStream.reset();
            return a10;
        } catch (IOException e10) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e10);
        }
    }

    protected String calculateContentHashPresign(Request<?> request) {
        return calculateContentHash(request);
    }

    protected final HeaderSigningResult computeSignature(Request<?> request, String str, String str2, String str3, String str4, AWSCredentials aWSCredentials) {
        String extractRegionName = extractRegionName(request.getEndpoint());
        String extractServiceName = extractServiceName(request.getEndpoint());
        String str5 = str + DomExceptionUtils.SEPARATOR + extractRegionName + DomExceptionUtils.SEPARATOR + extractServiceName + DomExceptionUtils.SEPARATOR + TERMINATOR;
        String stringToSign = getStringToSign(str3, str2, str5, getCanonicalRequest(request, str4));
        Charset charset = StringUtils.f6417a;
        byte[] bytes = ("AWS4" + aWSCredentials.b()).getBytes(charset);
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        byte[] sign = sign(TERMINATOR, sign(extractServiceName, sign(extractRegionName, sign(str, bytes, signingAlgorithm), signingAlgorithm), signingAlgorithm), signingAlgorithm);
        return new HeaderSigningResult(str2, str5, sign, sign(stringToSign.getBytes(charset), sign, signingAlgorithm));
    }

    protected String extractRegionName(URI uri) {
        String str = this.regionName;
        if (str != null) {
            return str;
        }
        return AwsHostNameUtils.a(uri.getHost(), this.serviceName);
    }

    protected String extractServiceName(URI uri) {
        String str = this.serviceName;
        if (str != null) {
            return str;
        }
        return AwsHostNameUtils.c(uri);
    }

    protected String getCanonicalRequest(Request<?> request, String str) {
        String a10;
        if (request.m() != null) {
            a10 = HttpUtils.c(request.getEndpoint().getPath(), request.m());
        } else {
            a10 = HttpUtils.a(request.getEndpoint().getPath(), request.l());
        }
        String str2 = request.j().toString() + "\n" + getCanonicalizedResourcePath(a10, this.doubleUrlEncode) + "\n" + getCanonicalizedQueryString(request) + "\n" + getCanonicalizedHeaderString(request) + "\n" + getSignedHeadersString(request) + "\n" + str;
        log.h("AWS4 Canonical Request: '\"" + str2 + "\"");
        return str2;
    }

    protected String getCanonicalizedHeaderString(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.a().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb2 = new StringBuilder();
        for (String str : arrayList) {
            if (needsSign(str)) {
                String replaceAll = StringUtils.b(str).replaceAll("\\s+", " ");
                String str2 = request.a().get(str);
                sb2.append(replaceAll);
                sb2.append(":");
                if (str2 != null) {
                    sb2.append(str2.replaceAll("\\s+", " "));
                }
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    protected final long getDateFromRequest(Request<?> request) {
        Date signatureDate = getSignatureDate(getTimeOffset(request));
        Date date = this.overriddenDate;
        if (date != null) {
            signatureDate = date;
        }
        return signatureDate.getTime();
    }

    protected final String getDateStamp(long j10) {
        return DateUtils.c(DATE_PATTERN, new Date(j10));
    }

    protected String getScope(Request<?> request, String str) {
        String extractRegionName = extractRegionName(request.getEndpoint());
        String extractServiceName = extractServiceName(request.getEndpoint());
        return str + DomExceptionUtils.SEPARATOR + extractRegionName + DomExceptionUtils.SEPARATOR + extractServiceName + DomExceptionUtils.SEPARATOR + TERMINATOR;
    }

    protected String getSignedHeadersString(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.a().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb2 = new StringBuilder();
        for (String str : arrayList) {
            if (needsSign(str)) {
                if (sb2.length() > 0) {
                    sb2.append(";");
                }
                sb2.append(StringUtils.b(str));
            }
        }
        return sb2.toString();
    }

    protected String getStringToSign(String str, String str2, String str3, String str4) {
        String str5 = str + "\n" + str2 + "\n" + str3 + "\n" + BinaryUtils.a(hash(str4));
        log.h("AWS4 String to Sign: '\"" + str5 + "\"");
        return str5;
    }

    protected final String getTimeStamp(long j10) {
        return DateUtils.c(TIME_PATTERN, new Date(j10));
    }

    boolean needsSign(String str) {
        if (!"date".equalsIgnoreCase(str) && !"Content-MD5".equalsIgnoreCase(str) && !TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST.equalsIgnoreCase(str) && !str.startsWith("x-amz") && !str.startsWith("X-Amz")) {
            return false;
        }
        return true;
    }

    void overrideDate(Date date) {
        this.overriddenDate = date;
    }

    public void presignRequest(Request<?> request, AWSCredentials aWSCredentials, Date date) {
        long j10;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        if (date != null) {
            j10 = (date.getTime() - System.currentTimeMillis()) / 1000;
        } else {
            j10 = 604800;
        }
        if (j10 <= 604800) {
            addHostHeader(request);
            AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
            if (sanitizeCredentials instanceof AWSSessionCredentials) {
                request.p("X-Amz-Security-Token", ((AWSSessionCredentials) sanitizeCredentials).getSessionToken());
            }
            long dateFromRequest = getDateFromRequest(request);
            String dateStamp = getDateStamp(dateFromRequest);
            String timeStamp = getTimeStamp(dateFromRequest);
            request.p("X-Amz-Algorithm", ALGORITHM);
            request.p("X-Amz-Date", timeStamp);
            request.p("X-Amz-SignedHeaders", getSignedHeadersString(request));
            request.p("X-Amz-Expires", Long.toString(j10));
            request.p("X-Amz-Credential", sanitizeCredentials.a() + DomExceptionUtils.SEPARATOR + getScope(request, dateStamp));
            request.p("X-Amz-Signature", BinaryUtils.a(computeSignature(request, dateStamp, timeStamp, ALGORITHM, calculateContentHashPresign(request), sanitizeCredentials).d()));
            return;
        }
        throw new AmazonClientException("Requests that are pre-signed by SigV4 algorithm are valid for at most 7 days. The expiration date set on the current request [" + getTimeStamp(date.getTime()) + "] has exceeded this limit.");
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    public void setRegionName(String str) {
        this.regionName = str;
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    public void setServiceName(String str) {
        this.serviceName = str;
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
        if (sanitizeCredentials instanceof AWSSessionCredentials) {
            addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
        }
        addHostHeader(request);
        long dateFromRequest = getDateFromRequest(request);
        String dateStamp = getDateStamp(dateFromRequest);
        String scope = getScope(request, dateStamp);
        String calculateContentHash = calculateContentHash(request);
        String timeStamp = getTimeStamp(dateFromRequest);
        request.q("X-Amz-Date", timeStamp);
        if (request.a().get("x-amz-content-sha256") != null && "required".equals(request.a().get("x-amz-content-sha256"))) {
            request.q("x-amz-content-sha256", calculateContentHash);
        }
        HeaderSigningResult computeSignature = computeSignature(request, dateStamp, timeStamp, ALGORITHM, calculateContentHash, sanitizeCredentials);
        request.q("Authorization", "AWS4-HMAC-SHA256 " + ("Credential=" + (sanitizeCredentials.a() + DomExceptionUtils.SEPARATOR + scope)) + ", " + ("SignedHeaders=" + getSignedHeadersString(request)) + ", " + ("Signature=" + BinaryUtils.a(computeSignature.d())));
        processRequestPayload(request, computeSignature);
    }

    public AWS4Signer(boolean z10) {
        this.doubleUrlEncode = z10;
    }

    protected void processRequestPayload(Request<?> request, HeaderSigningResult headerSigningResult) {
    }
}
