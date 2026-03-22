package com.facebook.soloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* compiled from: ElfFileChannel.java */
/* loaded from: classes2.dex */
public class i implements h {

    /* renamed from: a  reason: collision with root package name */
    private File f16846a;

    /* renamed from: b  reason: collision with root package name */
    private FileInputStream f16847b;

    /* renamed from: c  reason: collision with root package name */
    private FileChannel f16848c;

    public i(File file) throws IOException {
        this.f16846a = file;
        d();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16847b.close();
    }

    public void d() throws IOException {
        FileInputStream fileInputStream = new FileInputStream(this.f16846a);
        this.f16847b = fileInputStream;
        this.f16848c = fileInputStream.getChannel();
    }

    @Override // com.facebook.soloader.h
    public int h(ByteBuffer byteBuffer, long j10) throws IOException {
        return this.f16848c.read(byteBuffer, j10);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f16848c.isOpen();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.f16848c.read(byteBuffer);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.f16848c.write(byteBuffer);
    }
}
