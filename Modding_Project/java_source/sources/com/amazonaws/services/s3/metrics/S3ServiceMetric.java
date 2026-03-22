package com.amazonaws.services.s3.metrics;

import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;
/* loaded from: classes2.dex */
public class S3ServiceMetric extends SimpleMetricType implements MetricType {

    /* renamed from: b  reason: collision with root package name */
    public static final S3ThroughputMetric f5952b;

    /* renamed from: c  reason: collision with root package name */
    public static final S3ServiceMetric f5953c;

    /* renamed from: d  reason: collision with root package name */
    public static final S3ThroughputMetric f5954d;

    /* renamed from: e  reason: collision with root package name */
    public static final S3ServiceMetric f5955e;

    /* renamed from: f  reason: collision with root package name */
    private static final S3ServiceMetric[] f5956f;

    /* renamed from: a  reason: collision with root package name */
    private final String f5957a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        private S3ThroughputMetric(String str) {
            super(str);
        }
    }

    static {
        S3ThroughputMetric s3ThroughputMetric = new S3ThroughputMetric(a("DownloadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.1
        };
        f5952b = s3ThroughputMetric;
        S3ServiceMetric s3ServiceMetric = new S3ServiceMetric(a("DownloadByteCount"));
        f5953c = s3ServiceMetric;
        S3ThroughputMetric s3ThroughputMetric2 = new S3ThroughputMetric(a("UploadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.2
        };
        f5954d = s3ThroughputMetric2;
        S3ServiceMetric s3ServiceMetric2 = new S3ServiceMetric(a("UploadByteCount"));
        f5955e = s3ServiceMetric2;
        f5956f = new S3ServiceMetric[]{s3ThroughputMetric, s3ServiceMetric, s3ThroughputMetric2, s3ServiceMetric2};
    }

    private static final String a(String str) {
        return "S3" + str;
    }

    public static S3ServiceMetric[] b() {
        return (S3ServiceMetric[]) f5956f.clone();
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.f5957a;
    }

    private S3ServiceMetric(String str) {
        this.f5957a = str;
    }
}
