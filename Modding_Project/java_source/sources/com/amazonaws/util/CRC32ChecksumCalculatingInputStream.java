package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
/* loaded from: classes2.dex */
public class CRC32ChecksumCalculatingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private CRC32 f6402a;

    public CRC32ChecksumCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
        this.f6402a = new CRC32();
    }

    public long m() {
        return this.f6402a.getValue();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        l();
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f6402a.update(read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        l();
        this.f6402a.reset();
        ((FilterInputStream) this).in.reset();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        l();
        int read = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (read != -1) {
            this.f6402a.update(bArr, i10, read);
        }
        return read;
    }
}
