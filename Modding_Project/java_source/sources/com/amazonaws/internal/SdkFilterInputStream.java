package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class SdkFilterInputStream extends FilterInputStream implements MetricAware {
    /* JADX INFO: Access modifiers changed from: protected */
    public SdkFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        l();
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        l();
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public boolean d() {
        if (((FilterInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((FilterInputStream) this).in).d();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l() {
        if (!Thread.interrupted()) {
            return;
        }
        k();
        throw new AbortedException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        l();
        ((FilterInputStream) this).in.mark(i10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        l();
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        l();
        return ((FilterInputStream) this).in.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        l();
        ((FilterInputStream) this).in.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        l();
        return ((FilterInputStream) this).in.skip(j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        l();
        return ((FilterInputStream) this).in.read(bArr, i10, i11);
    }

    protected void k() {
    }
}
