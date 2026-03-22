package com.amazonaws.auth;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public abstract class AbstractAWSSigner implements Signer {
    private static final int BUFFER_SIZE_MULTIPLIER = 5;
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int TIME_MILLISEC = 1000;
    private static final ThreadLocal<MessageDigest> SHA256_MESSAGE_DIGEST = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.auth.AbstractAWSSigner.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e10) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e10.getMessage(), e10);
            }
        }
    };
    public static final String EMPTY_STRING_SHA256_HEX = BinaryUtils.a(doHash(""));

    private static byte[] doHash(String str) {
        try {
            MessageDigest messageDigestInstance = getMessageDigestInstance();
            messageDigestInstance.update(str.getBytes(StringUtils.f6417a));
            return messageDigestInstance.digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    private static MessageDigest getMessageDigestInstance() {
        MessageDigest messageDigest = SHA256_MESSAGE_DIGEST.get();
        messageDigest.reset();
        return messageDigest;
    }

    protected abstract void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials);

    protected byte[] getBinaryRequestPayload(Request<?> request) {
        if (HttpUtils.g(request)) {
            String d10 = HttpUtils.d(request);
            if (d10 == null) {
                return new byte[0];
            }
            return d10.getBytes(StringUtils.f6417a);
        }
        return getBinaryRequestPayloadWithoutQueryParams(request);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InputStream getBinaryRequestPayloadStream(Request<?> request) {
        if (HttpUtils.g(request)) {
            String d10 = HttpUtils.d(request);
            if (d10 == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            return new ByteArrayInputStream(d10.getBytes(StringUtils.f6417a));
        }
        return getBinaryRequestPayloadStreamWithoutQueryParams(request);
    }

    protected InputStream getBinaryRequestPayloadStreamWithoutQueryParams(Request<?> request) {
        try {
            InputStream content = request.getContent();
            if (content == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (content instanceof StringInputStream) {
                return content;
            }
            if (content.markSupported()) {
                return request.getContent();
            }
            throw new AmazonClientException("Unable to read request payload to sign request.");
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e10.getMessage(), e10);
        }
    }

    protected byte[] getBinaryRequestPayloadWithoutQueryParams(Request<?> request) {
        InputStream binaryRequestPayloadStreamWithoutQueryParams = getBinaryRequestPayloadStreamWithoutQueryParams(request);
        try {
            binaryRequestPayloadStreamWithoutQueryParams.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[5120];
            while (true) {
                int read = binaryRequestPayloadStreamWithoutQueryParams.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.close();
                    binaryRequestPayloadStreamWithoutQueryParams.reset();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getCanonicalizedEndpoint(URI uri) {
        String b10 = StringUtils.b(uri.getHost());
        if (HttpUtils.e(uri)) {
            return b10 + ":" + uri.getPort();
        }
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getCanonicalizedQueryString(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(HttpUtils.f(entry.getKey(), false), HttpUtils.f(entry.getValue(), false));
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb2.append((String) entry2.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append((String) entry2.getValue());
            if (it.hasNext()) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
        return sb2.toString();
    }

    protected String getCanonicalizedResourcePath(String str) {
        return getCanonicalizedResourcePath(str, true);
    }

    protected String getRequestPayload(Request<?> request) {
        return newString(getBinaryRequestPayload(request));
    }

    protected String getRequestPayloadWithoutQueryParams(Request<?> request) {
        return newString(getBinaryRequestPayloadWithoutQueryParams(request));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Date getSignatureDate(long j10) {
        Date date = new Date();
        if (j10 != 0) {
            return new Date(date.getTime() - (j10 * 1000));
        }
        return date;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getTimeOffset(Request<?> request) {
        long e10 = request.e();
        if (SDKGlobalConfiguration.a() != 0) {
            return SDKGlobalConfiguration.a();
        }
        return e10;
    }

    public byte[] hash(String str) {
        return doHash(str);
    }

    protected String newString(byte[] bArr) {
        return new String(bArr, StringUtils.f6417a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AWSCredentials sanitizeCredentials(AWSCredentials aWSCredentials) {
        String a10;
        String b10;
        String str;
        synchronized (aWSCredentials) {
            try {
                a10 = aWSCredentials.a();
                b10 = aWSCredentials.b();
                if (aWSCredentials instanceof AWSSessionCredentials) {
                    str = ((AWSSessionCredentials) aWSCredentials).getSessionToken();
                } else {
                    str = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (b10 != null) {
            b10 = b10.trim();
        }
        if (a10 != null) {
            a10 = a10.trim();
        }
        if (str != null) {
            str = str.trim();
        }
        if (aWSCredentials instanceof AWSSessionCredentials) {
            return new BasicSessionCredentials(a10, b10, str);
        }
        return new BasicAWSCredentials(a10, b10);
    }

    public byte[] sign(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) {
        try {
            return sign(str.getBytes(StringUtils.f6417a), bArr, signingAlgorithm);
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String signAndBase64Encode(String str, String str2, SigningAlgorithm signingAlgorithm) {
        return signAndBase64Encode(str.getBytes(StringUtils.f6417a), str2, signingAlgorithm);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getCanonicalizedResourcePath(String str, boolean z10) {
        if (str == null || str.length() == 0) {
            return DomExceptionUtils.SEPARATOR;
        }
        if (z10) {
            str = HttpUtils.f(str, true);
        }
        return str.startsWith(DomExceptionUtils.SEPARATOR) ? str : DomExceptionUtils.SEPARATOR.concat(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] hash(InputStream inputStream) {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, getMessageDigestInstance());
            while (sdkDigestInputStream.read(new byte[1024]) > -1) {
            }
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    protected String signAndBase64Encode(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) {
        try {
            return Base64.encodeAsString(sign(bArr, str.getBytes(StringUtils.f6417a), signingAlgorithm));
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] sign(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) {
        try {
            Mac mac = Mac.getInstance(signingAlgorithm.toString());
            mac.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return mac.doFinal(bArr);
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }

    public byte[] hash(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getCanonicalizedQueryString(Request<?> request) {
        if (HttpUtils.g(request)) {
            return "";
        }
        return getCanonicalizedQueryString(request.getParameters());
    }
}
