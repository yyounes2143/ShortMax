package b4;

import android.annotation.TargetApi;
import android.os.SharedMemory;
import android.system.ErrnoException;
import android.util.Log;
import java.io.Closeable;
import java.nio.ByteBuffer;
/* compiled from: AshmemMemoryChunk.java */
@TargetApi(27)
/* loaded from: classes3.dex */
public class f implements v, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private SharedMemory f2218a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f2219b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2220c;

    public f(int i10) {
        boolean z10;
        SharedMemory create;
        ByteBuffer mapReadWrite;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        try {
            create = SharedMemory.create("AshmemMemoryChunk", i10);
            this.f2218a = create;
            mapReadWrite = create.mapReadWrite();
            this.f2219b = mapReadWrite;
            this.f2220c = System.identityHashCode(this);
        } catch (ErrnoException e10) {
            throw new RuntimeException("Fail to create AshmemMemory", e10);
        }
    }

    private void a(int i10, v vVar, int i11, int i12) {
        if (vVar instanceof f) {
            k2.h.i(!isClosed());
            k2.h.i(!vVar.isClosed());
            k2.h.g(this.f2219b);
            k2.h.g(vVar.C());
            w.b(i10, vVar.getSize(), i11, i12, getSize());
            this.f2219b.position(i10);
            vVar.C().position(i11);
            byte[] bArr = new byte[i12];
            this.f2219b.get(bArr, 0, i12);
            vVar.C().put(bArr, 0, i12);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @Override // b4.v
    public long A() {
        throw new UnsupportedOperationException("Cannot get the pointer of an  AshmemMemoryChunk");
    }

    @Override // b4.v
    public synchronized int B(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        k2.h.g(bArr);
        k2.h.g(this.f2219b);
        a10 = w.a(i10, i12, getSize());
        w.b(i10, bArr.length, i11, a10, getSize());
        this.f2219b.position(i10);
        this.f2219b.get(bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public ByteBuffer C() {
        return this.f2219b;
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
        if (i10 < getSize()) {
            z11 = true;
        }
        k2.h.b(Boolean.valueOf(z11));
        k2.h.g(this.f2219b);
        return this.f2219b.get(i10);
    }

    @Override // b4.v
    public synchronized int F(int i10, byte[] bArr, int i11, int i12) {
        int a10;
        k2.h.g(bArr);
        k2.h.g(this.f2219b);
        a10 = w.a(i10, i12, getSize());
        w.b(i10, bArr.length, i11, a10, getSize());
        this.f2219b.position(i10);
        this.f2219b.put(bArr, i11, a10);
        return a10;
    }

    @Override // b4.v
    public void P(int i10, v vVar, int i11, int i12) {
        k2.h.g(vVar);
        if (vVar.getUniqueId() == getUniqueId()) {
            Log.w("AshmemMemoryChunk", "Copying from AshmemMemoryChunk " + Long.toHexString(getUniqueId()) + " to AshmemMemoryChunk " + Long.toHexString(vVar.getUniqueId()) + " which are the same ");
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
        try {
            if (!isClosed()) {
                SharedMemory sharedMemory = this.f2218a;
                if (sharedMemory != null) {
                    sharedMemory.close();
                }
                ByteBuffer byteBuffer = this.f2219b;
                if (byteBuffer != null) {
                    SharedMemory.unmap(byteBuffer);
                }
                this.f2219b = null;
                this.f2218a = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // b4.v
    public int getSize() {
        int size;
        k2.h.g(this.f2218a);
        size = this.f2218a.getSize();
        return size;
    }

    @Override // b4.v
    public long getUniqueId() {
        return this.f2220c;
    }

    @Override // b4.v
    public synchronized boolean isClosed() {
        boolean z10;
        if (this.f2219b != null) {
            if (this.f2218a != null) {
                z10 = false;
            }
        }
        z10 = true;
        return z10;
    }
}
