package com.amazonaws.metrics;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class MetricFilterInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final ByteThroughputHelper f5067a;

    public MetricFilterInputStream(ThroughputMetricType throughputMetricType, InputStream inputStream) {
        super(inputStream);
        this.f5067a = new ByteThroughputHelper(throughputMetricType);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5067a.f();
        ((FilterInputStream) this).in.close();
        l();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, com.amazonaws.internal.MetricAware
    public final boolean d() {
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        l();
        long g10 = this.f5067a.g();
        int read = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (read > 0) {
            this.f5067a.d(read, g10);
        }
        return read;
    }
}
