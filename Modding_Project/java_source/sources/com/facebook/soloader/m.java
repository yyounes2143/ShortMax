package com.facebook.soloader;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
/* compiled from: FileLocker.java */
/* loaded from: classes2.dex */
public final class m implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f16866a;

    /* renamed from: b  reason: collision with root package name */
    private final FileLock f16867b;

    private m(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        this.f16866a = fileOutputStream;
        try {
            FileLock lock = fileOutputStream.getChannel().lock();
            if (lock == null) {
                fileOutputStream.close();
            }
            this.f16867b = lock;
        } catch (Throwable th2) {
            this.f16866a.close();
            throw th2;
        }
    }

    public static m a(File file) throws IOException {
        return new m(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            FileLock fileLock = this.f16867b;
            if (fileLock != null) {
                fileLock.release();
            }
        } finally {
            this.f16866a.close();
        }
    }
}
