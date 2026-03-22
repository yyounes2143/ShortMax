package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class LengthCheckInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f6408a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6409b;

    /* renamed from: c  reason: collision with root package name */
    private long f6410c;

    /* renamed from: d  reason: collision with root package name */
    private long f6411d;

    public LengthCheckInputStream(InputStream inputStream, long j10, boolean z10) {
        super(inputStream);
        if (j10 >= 0) {
            this.f6408a = j10;
            this.f6409b = z10;
            return;
        }
        throw new IllegalArgumentException();
    }

    private void m(boolean z10) {
        if (z10) {
            if (this.f6410c != this.f6408a) {
                throw new AmazonClientException("Data read (" + this.f6410c + ") has a different length than the expected (" + this.f6408a + ")");
            }
        } else if (this.f6410c <= this.f6408a) {
        } else {
            throw new AmazonClientException("More data read (" + this.f6410c + ") than expected (" + this.f6408a + ")");
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        super.mark(i10);
        this.f6411d = this.f6410c;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read >= 0) {
            this.f6410c++;
        }
        m(read == -1);
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        if (super.markSupported()) {
            this.f6410c = this.f6411d;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long skip = super.skip(j10);
        if (this.f6409b && skip > 0) {
            this.f6410c += skip;
            m(false);
        }
        return skip;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = super.read(bArr, i10, i11);
        this.f6410c += read >= 0 ? read : 0L;
        m(read == -1);
        return read;
    }
}
