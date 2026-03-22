package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class ProgressReportingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f4975a;

    /* renamed from: b  reason: collision with root package name */
    private final ProgressListenerCallbackExecutor f4976b;

    /* renamed from: c  reason: collision with root package name */
    private int f4977c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4978d;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.f4975a = 8192;
        this.f4976b = progressListenerCallbackExecutor;
    }

    private void m(int i10) {
        int i11 = this.f4977c + i10;
        this.f4977c = i11;
        if (i11 >= this.f4975a) {
            this.f4976b.c(new ProgressEvent(i11));
            this.f4977c = 0;
        }
    }

    private void o() {
        if (!this.f4978d) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(this.f4977c);
        progressEvent.c(4);
        this.f4977c = 0;
        this.f4976b.c(progressEvent);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i10 = this.f4977c;
        if (i10 > 0) {
            this.f4976b.c(new ProgressEvent(i10));
            this.f4977c = 0;
        }
        super.close();
    }

    public void p(boolean z10) {
        this.f4978d = z10;
    }

    public void q(int i10) {
        this.f4975a = i10 * 1024;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            o();
        } else {
            m(1);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.f4977c);
        progressEvent.c(32);
        this.f4976b.c(progressEvent);
        this.f4977c = 0;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = super.read(bArr, i10, i11);
        if (read == -1) {
            o();
        }
        if (read != -1) {
            m(read);
        }
        return read;
    }
}
