package com.facebook.soloader;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: ElfZipFileChannel.java */
/* loaded from: classes2.dex */
public class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f16849a;

    /* renamed from: b  reason: collision with root package name */
    private final ZipEntry f16850b;

    /* renamed from: c  reason: collision with root package name */
    private final ZipFile f16851c;

    /* renamed from: d  reason: collision with root package name */
    private final long f16852d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16853e = true;

    /* renamed from: f  reason: collision with root package name */
    private long f16854f = 0;

    public j(ZipFile zipFile, ZipEntry zipEntry) throws IOException {
        this.f16851c = zipFile;
        this.f16850b = zipEntry;
        this.f16852d = zipEntry.getSize();
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        this.f16849a = inputStream;
        if (inputStream != null) {
            return;
        }
        throw new IOException(zipEntry.getName() + "'s InputStream is null");
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f16849a;
        if (inputStream != null) {
            inputStream.close();
            this.f16853e = false;
        }
    }

    public h g(long j10) throws IOException {
        InputStream inputStream = this.f16849a;
        if (inputStream != null) {
            long j11 = this.f16854f;
            if (j10 == j11) {
                return this;
            }
            long j12 = this.f16852d;
            if (j10 > j12) {
                j10 = j12;
            }
            if (j10 >= j11) {
                inputStream.skip(j10 - j11);
            } else {
                inputStream.close();
                InputStream inputStream2 = this.f16851c.getInputStream(this.f16850b);
                this.f16849a = inputStream2;
                if (inputStream2 != null) {
                    inputStream2.skip(j10);
                } else {
                    throw new IOException(this.f16850b.getName() + "'s InputStream is null");
                }
            }
            this.f16854f = j10;
            return this;
        }
        throw new IOException(this.f16850b.getName() + "'s InputStream is null");
    }

    @Override // com.facebook.soloader.h
    public int h(ByteBuffer byteBuffer, long j10) throws IOException {
        if (this.f16849a != null) {
            int remaining = byteBuffer.remaining();
            long j11 = this.f16852d - j10;
            if (j11 <= 0) {
                return -1;
            }
            int i10 = (int) j11;
            if (remaining > i10) {
                remaining = i10;
            }
            g(j10);
            if (byteBuffer.hasArray()) {
                this.f16849a.read(byteBuffer.array(), 0, remaining);
                byteBuffer.position(byteBuffer.position() + remaining);
            } else {
                byte[] bArr = new byte[remaining];
                this.f16849a.read(bArr, 0, remaining);
                byteBuffer.put(bArr, 0, remaining);
            }
            this.f16854f += remaining;
            return remaining;
        }
        throw new IOException("InputStream is null");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f16853e;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        return h(byteBuffer, this.f16854f);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        throw new UnsupportedOperationException("ElfZipFileChannel doesn't support write");
    }
}
