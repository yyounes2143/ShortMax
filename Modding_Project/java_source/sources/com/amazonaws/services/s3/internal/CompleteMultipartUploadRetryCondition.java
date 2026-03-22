package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.model.AmazonS3Exception;
/* loaded from: classes2.dex */
public class CompleteMultipartUploadRetryCondition implements RetryPolicy.RetryCondition {

    /* renamed from: b  reason: collision with root package name */
    private final int f5913b;

    public CompleteMultipartUploadRetryCondition() {
        this(3);
    }

    @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
    public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
        if (!(amazonClientException instanceof AmazonS3Exception) || !b((AmazonS3Exception) amazonClientException) || i10 >= this.f5913b) {
            return false;
        }
        return true;
    }

    boolean b(AmazonS3Exception amazonS3Exception) {
        if (amazonS3Exception == null || amazonS3Exception.b() == null || amazonS3Exception.d() == null || !amazonS3Exception.b().contains("InternalError") || !amazonS3Exception.d().contains("Please try again.")) {
            return false;
        }
        return true;
    }

    CompleteMultipartUploadRetryCondition(int i10) {
        this.f5913b = i10;
    }
}
