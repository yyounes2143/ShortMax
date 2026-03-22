package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import androidx.collection.SieveCacheKt;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: BufferInputStream.java */
/* loaded from: classes3.dex */
public final class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.buffer.a f11363a;

    /* renamed from: b  reason: collision with root package name */
    private long f11364b;

    public a(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.f11363a = aVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        long b10 = this.f11363a.b() - this.f11363a.c();
        if (b10 > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        return (int) b10;
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f11364b = i10;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return this.f11363a.b(bArr);
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f11363a.b(this.f11364b);
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        return this.f11363a.a(j10);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f11363a.b(bArr, i10, i11);
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return this.f11363a.d();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
