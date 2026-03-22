package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.HttpUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class S3Signer extends AbstractAWSSigner {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f5938d = LogFactory.b(S3Signer.class);

    /* renamed from: a  reason: collision with root package name */
    private final String f5939a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5940b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f5941c;

    public S3Signer() {
        this.f5939a = null;
        this.f5940b = null;
        this.f5941c = null;
    }

    void a(Request<?> request, AWSCredentials aWSCredentials, Date date) {
        if (this.f5940b != null) {
            if (aWSCredentials != null && aWSCredentials.b() != null) {
                AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
                if (sanitizeCredentials instanceof AWSSessionCredentials) {
                    addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
                }
                String b10 = HttpUtils.b(request.getEndpoint().getPath(), this.f5940b, true);
                Date signatureDate = getSignatureDate(getTimeOffset(request));
                if (date == null) {
                    date = signatureDate;
                }
                request.q("Date", ServiceUtils.a(date));
                String a10 = RestUtils.a(this.f5939a, b10, request, null, this.f5941c);
                Log log = f5938d;
                log.h("Calculated string to sign:\n\"" + a10 + "\"");
                String signAndBase64Encode = super.signAndBase64Encode(a10, sanitizeCredentials.b(), SigningAlgorithm.HmacSHA1);
                request.q("Authorization", "AWS " + sanitizeCredentials.a() + ":" + signAndBase64Encode);
                return;
            }
            f5938d.h("Canonical string will not be signed, as no AWS Secret Key was provided");
            return;
        }
        throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.q("x-amz-security-token", aWSSessionCredentials.getSessionToken());
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
        a(request, aWSCredentials, null);
    }

    public S3Signer(String str, String str2) {
        this(str, str2, null);
    }

    public S3Signer(String str, String str2, Collection<String> collection) {
        if (str2 != null) {
            this.f5939a = str;
            this.f5940b = str2;
            this.f5941c = collection == null ? null : Collections.unmodifiableSet(new HashSet(collection));
            return;
        }
        throw new IllegalArgumentException("Parameter resourcePath is empty");
    }
}
