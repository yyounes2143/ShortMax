package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class InputSubstream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f5917a;

    /* renamed from: b  reason: collision with root package name */
    private final long f5918b;

    /* renamed from: c  reason: collision with root package name */
    private final long f5919c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5920d;

    /* renamed from: e  reason: collision with root package name */
    private long f5921e;

    public InputSubstream(InputStream inputStream, long j10, long j11, boolean z10) {
        super(inputStream);
        this.f5921e = 0L;
        this.f5917a = 0L;
        this.f5919c = j11;
        this.f5918b = j10;
        this.f5920d = z10;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        long j10;
        long j11 = this.f5917a;
        long j12 = this.f5918b;
        if (j11 < j12) {
            j10 = this.f5919c;
        } else {
            j10 = (this.f5919c + j12) - j11;
        }
        return (int) Math.min(j10, super.available());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f5920d) {
            super.close();
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        this.f5921e = this.f5917a;
        super.mark(i10);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        return read == -1 ? read : bArr[0];
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f5917a = this.f5921e;
        super.reset();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10;
        long j11;
        while (true) {
            j10 = this.f5917a;
            j11 = this.f5918b;
            if (j10 >= j11) {
                break;
            }
            this.f5917a += super.skip(j11 - j10);
        }
        long j12 = (this.f5919c + j11) - j10;
        if (j12 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i10, (int) Math.min(i11, j12));
        this.f5917a += read;
        return read;
    }
}
