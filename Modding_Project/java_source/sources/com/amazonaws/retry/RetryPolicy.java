package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
/* loaded from: classes2.dex */
public final class RetryPolicy {

    /* renamed from: a  reason: collision with root package name */
    private final RetryCondition f5787a;

    /* renamed from: b  reason: collision with root package name */
    private final BackoffStrategy f5788b;

    /* renamed from: c  reason: collision with root package name */
    private final int f5789c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5790d;

    /* loaded from: classes2.dex */
    public interface BackoffStrategy {

        /* renamed from: a  reason: collision with root package name */
        public static final BackoffStrategy f5791a = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            public long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
                return 0L;
            }
        };

        long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10);
    }

    /* loaded from: classes2.dex */
    public interface RetryCondition {

        /* renamed from: a  reason: collision with root package name */
        public static final RetryCondition f5792a = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
                return false;
            }
        };

        boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i10, boolean z10) {
        retryCondition = retryCondition == null ? PredefinedRetryPolicies.f5782d : retryCondition;
        backoffStrategy = backoffStrategy == null ? PredefinedRetryPolicies.f5783e : backoffStrategy;
        if (i10 >= 0) {
            this.f5787a = retryCondition;
            this.f5788b = backoffStrategy;
            this.f5789c = i10;
            this.f5790d = z10;
            return;
        }
        throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
    }

    public BackoffStrategy a() {
        return this.f5788b;
    }

    public int b() {
        return this.f5789c;
    }

    public RetryCondition c() {
        return this.f5787a;
    }

    public boolean d() {
        return this.f5790d;
    }
}
