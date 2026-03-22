package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class ByteThroughputHelper extends ByteThroughputProvider {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    public void d(int i10, long j10) {
        super.d(i10, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (a() > 0) {
            AwsSdkMetrics.getServiceMetricCollector().a(this);
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long g() {
        if (TimeUnit.NANOSECONDS.toSeconds(b()) > 10) {
            f();
        }
        return System.nanoTime();
    }
}
