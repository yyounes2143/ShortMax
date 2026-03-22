package com.amazonaws.services.s3.model;

import com.amazonaws.internal.MetricAware;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.MetricFilterInputStream;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class S3ObjectInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6172a;

    public S3ObjectInputStream(InputStream inputStream) {
        super(o(inputStream) ? new MetricFilterInputStream(S3ServiceMetric.f5952b, inputStream) : inputStream);
    }

    private void m() {
        try {
            close();
        } catch (IOException e10) {
            LogFactory.b(getClass()).d("FYI", e10);
        }
    }

    private static boolean o(InputStream inputStream) {
        if (!AwsSdkMetrics.isMetricsEnabled()) {
            return false;
        }
        if (!(inputStream instanceof MetricAware)) {
            return true;
        }
        return !((MetricAware) inputStream).d();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int available = super.available();
        if (available == 0) {
            return 1;
        }
        return available;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream
    public void k() {
        m();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            this.f6172a = true;
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f6172a = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = super.read(bArr, i10, i11);
        if (read == -1) {
            this.f6172a = true;
        }
        return read;
    }
}
