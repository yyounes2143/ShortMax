package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;
/* loaded from: classes2.dex */
public class PredefinedRetryPolicies {

    /* renamed from: a  reason: collision with root package name */
    public static final RetryPolicy f5779a = new RetryPolicy(RetryPolicy.RetryCondition.f5792a, RetryPolicy.BackoffStrategy.f5791a, 0, false);

    /* renamed from: d  reason: collision with root package name */
    public static final RetryPolicy.RetryCondition f5782d = new SDKDefaultRetryCondition();

    /* renamed from: e  reason: collision with root package name */
    public static final RetryPolicy.BackoffStrategy f5783e = new SDKDefaultBackoffStrategy(100, 20000);

    /* renamed from: b  reason: collision with root package name */
    public static final RetryPolicy f5780b = a();

    /* renamed from: c  reason: collision with root package name */
    public static final RetryPolicy f5781c = b();

    /* loaded from: classes2.dex */
    private static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        /* renamed from: b  reason: collision with root package name */
        private final Random f5784b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5785c;

        /* renamed from: d  reason: collision with root package name */
        private final int f5786d;

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        public final long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
            if (i10 <= 0) {
                return 0L;
            }
            return this.f5784b.nextInt(Math.min(this.f5786d, (1 << i10) * this.f5785c));
        }

        private SDKDefaultBackoffStrategy(int i10, int i11) {
            this.f5784b = new Random();
            this.f5785c = i10;
            this.f5786d = i11;
        }
    }

    /* loaded from: classes2.dex */
    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (amazonClientException instanceof AmazonServiceException) {
                AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
                int g10 = amazonServiceException.g();
                if (g10 == 500 || g10 == 503 || g10 == 502 || g10 == 504 || RetryUtils.c(amazonServiceException) || RetryUtils.a(amazonServiceException)) {
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    public static RetryPolicy a() {
        return new RetryPolicy(f5782d, f5783e, 3, true);
    }

    public static RetryPolicy b() {
        return new RetryPolicy(f5782d, f5783e, 10, true);
    }
}
