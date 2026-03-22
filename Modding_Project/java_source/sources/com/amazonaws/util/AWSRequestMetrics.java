package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
@Deprecated
/* loaded from: classes2.dex */
public class AWSRequestMetrics {

    /* renamed from: a  reason: collision with root package name */
    protected final TimingInfo f6393a;

    /* loaded from: classes2.dex */
    public enum Field implements MetricType {
        AWSErrorCode,
        AWSRequestID,
        BytesProcessed,
        ClientExecuteTime,
        CredentialsRequestTime,
        Exception,
        HttpRequestTime,
        RedirectLocation,
        RequestMarshallTime,
        RequestSigningTime,
        ResponseProcessingTime,
        RequestCount,
        RetryCount,
        HttpClientRetryCount,
        HttpClientSendRequestTime,
        HttpClientReceiveResponseTime,
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        this.f6393a = TimingInfo.m();
    }

    public final TimingInfo c() {
        return this.f6393a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AWSRequestMetrics(TimingInfo timingInfo) {
        this.f6393a = timingInfo;
    }

    public void e() {
    }

    public void b(MetricType metricType) {
    }

    public void d(MetricType metricType) {
    }

    public void g(MetricType metricType) {
    }

    public void a(MetricType metricType, Object obj) {
    }

    public void f(MetricType metricType, long j10) {
    }
}
