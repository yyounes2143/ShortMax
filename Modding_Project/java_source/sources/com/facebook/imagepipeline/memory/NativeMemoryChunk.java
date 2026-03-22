package com.facebook.imagepipeline.memory;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import b4.v;
import b4.w;
import java.io.Closeable;
import java.nio.ByteBuffer;
import k2.h;
@k2.d
/* loaded from: classes3.dex */
public class NativeMemoryChunk implements v, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final long f15673a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15674b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15675c;

    static {
        w4.a.d("imagepipeline");
    }

    public NativeMemoryChunk(int i10) {
        h.b(Boolean.valueOf(i10 > 0));
        this.f15674b = i10;
        this.f15673a = nativeAllocate(i10);
        this.f15675c = false;
    }

    private void a(int i10, v vVar, int i11, int i12) {
        if (vVar instanceof NativeMemoryChunk) {
            h.i(!isClosed());
            h.i(!vVar.isClosed());
            w.b(i10, vVar.getSize(), i11, i12, this.f15674b);
            nativeMemcpy(vVar.A() + i11, this.f15673a + i10, i12);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @k2.d
    private static native long nativeAllocate(int i10);

    @k2.d
    private static native void nativeCopyFromByteArray(long j10, byte[] bArr, int i10, int i11);

    @k2.d
    private static native void nativeCopyToByteArray(long j10, byte[] bArr, int i10, int i11);

    @k2.d
    private static native void nativeFree(long j10);

    @k2.d
    private static native void nativeMemcpy(long j10, long j11, int i10);

    @k2.d
    private static native byte nativeReadByte(long j10);

    @Override // b4.v
    public long A() {
        return this.f15673a;
    }

    @Override // b4.v
    public synchronized int B(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        h.g(bArr);
        h.i(!isClosed());
        a10 = w.a(i10, i12, this.f15674b);
        w.b(i10, bArr.length, i11, a10, this.f15674b);
        nativeCopyToByteArray(this.f15673a + i10, bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public ByteBuffer C() {
        return null;
    }

    @Override // b4.v
    public synchronized byte D(int i10) {
        boolean z10;
        boolean z11 = false;
        h.i(!isClosed());
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        if (i10 < this.f15674b) {
            z11 = true;
        }
        h.b(Boolean.valueOf(z11));
        return nativeReadByte(this.f15673a + i10);
    }

    @Override // b4.v
    public synchronized int F(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        h.g(bArr);
        h.i(!isClosed());
        a10 = w.a(i10, i12, this.f15674b);
        w.b(i10, bArr.length, i11, a10, this.f15674b);
        nativeCopyFromByteArray(this.f15673a + i10, bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public void P(int i10, v vVar, int i11, int i12) {
        h.g(vVar);
        if (vVar.getUniqueId() == getUniqueId()) {
            Log.w("NativeMemoryChunk", "Copying from NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(this)) + " to NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(vVar)) + " which share the same address " + Long.toHexString(this.f15673a));
            h.b(Boolean.FALSE);
        }
        if (vVar.getUniqueId() < getUniqueId()) {
            synchronized (vVar) {
                synchronized (this) {
                    a(i10, vVar, i11, i12);
                }
            }
            return;
        }
        synchronized (this) {
            synchronized (vVar) {
                a(i10, vVar, i11, i12);
            }
        }
    }

    @Override // b4.v, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.f15675c) {
            this.f15675c = true;
            nativeFree(this.f15673a);
        }
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        Log.w("NativeMemoryChunk", "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. ");
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // b4.v
    public int getSize() {
        return this.f15674b;
    }

    @Override // b4.v
    public long getUniqueId() {
        return this.f15673a;
    }

    @Override // b4.v
    public synchronized boolean isClosed() {
        return this.f15675c;
    }

    @VisibleForTesting
    public NativeMemoryChunk() {
        this.f15674b = 0;
        this.f15673a = 0L;
        this.f15675c = true;
    }
}
