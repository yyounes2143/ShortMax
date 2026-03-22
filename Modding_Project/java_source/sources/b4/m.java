package b4;

import android.util.Log;
import java.io.Closeable;
import java.nio.ByteBuffer;
/* compiled from: BufferMemoryChunk.java */
/* loaded from: classes3.dex */
public class m implements v, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f2239a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2240b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2241c = System.identityHashCode(this);

    public m(int i10) {
        this.f2239a = ByteBuffer.allocateDirect(i10);
        this.f2240b = i10;
    }

    private void a(int i10, v vVar, int i11, int i12) {
        if (vVar instanceof m) {
            k2.h.i(!isClosed());
            k2.h.i(!vVar.isClosed());
            k2.h.g(this.f2239a);
            w.b(i10, vVar.getSize(), i11, i12, this.f2240b);
            this.f2239a.position(i10);
            ByteBuffer byteBuffer = (ByteBuffer) k2.h.g(vVar.C());
            byteBuffer.position(i11);
            byte[] bArr = new byte[i12];
            this.f2239a.get(bArr, 0, i12);
            byteBuffer.put(bArr, 0, i12);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @Override // b4.v
    public long A() {
        throw new UnsupportedOperationException("Cannot get the pointer of a BufferMemoryChunk");
    }

    @Override // b4.v
    public synchronized int B(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        k2.h.g(bArr);
        k2.h.i(!isClosed());
        k2.h.g(this.f2239a);
        a10 = w.a(i10, i12, this.f2240b);
        w.b(i10, bArr.length, i11, a10, this.f2240b);
        this.f2239a.position(i10);
        this.f2239a.get(bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public synchronized ByteBuffer C() {
        return this.f2239a;
    }

    @Override // b4.v
    public synchronized byte D(int i10) {
        boolean z10;
        boolean z11 = false;
        k2.h.i(!isClosed());
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        if (i10 < this.f2240b) {
            z11 = true;
        }
        k2.h.b(Boolean.valueOf(z11));
        k2.h.g(this.f2239a);
        return this.f2239a.get(i10);
    }

    @Override // b4.v
    public synchronized int F(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        k2.h.g(bArr);
        k2.h.i(!isClosed());
        k2.h.g(this.f2239a);
        a10 = w.a(i10, i12, this.f2240b);
        w.b(i10, bArr.length, i11, a10, this.f2240b);
        this.f2239a.position(i10);
        this.f2239a.put(bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public void P(int i10, v vVar, int i11, int i12) {
        k2.h.g(vVar);
        if (vVar.getUniqueId() == getUniqueId()) {
            Log.w("BufferMemoryChunk", "Copying from BufferMemoryChunk " + Long.toHexString(getUniqueId()) + " to BufferMemoryChunk " + Long.toHexString(vVar.getUniqueId()) + " which are the same ");
            k2.h.b(Boolean.FALSE);
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
        this.f2239a = null;
    }

    @Override // b4.v
    public int getSize() {
        return this.f2240b;
    }

    @Override // b4.v
    public long getUniqueId() {
        return this.f2241c;
    }

    @Override // b4.v
    public synchronized boolean isClosed() {
        boolean z10;
        if (this.f2239a == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }
}
