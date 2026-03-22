package b4;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import java.nio.ByteBuffer;
/* compiled from: MemoryPooledByteBuffer.java */
/* loaded from: classes3.dex */
public class x implements PooledByteBuffer {

    /* renamed from: a  reason: collision with root package name */
    private final int f2257a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    o2.a<v> f2258b;

    public x(o2.a<v> aVar, int i10) {
        boolean z10;
        k2.h.g(aVar);
        if (i10 >= 0 && i10 <= aVar.s().getSize()) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        this.f2258b = aVar.clone();
        this.f2257a = i10;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized long A() throws UnsupportedOperationException {
        d();
        k2.h.g(this.f2258b);
        return this.f2258b.s().A();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int B(int i10, byte[] bArr, int i11, int i12) {
        boolean z10;
        d();
        if (i10 + i12 <= this.f2257a) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        k2.h.g(this.f2258b);
        return this.f2258b.s().B(i10, bArr, i11, i12);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized ByteBuffer C() {
        k2.h.g(this.f2258b);
        return this.f2258b.s().C();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized byte D(int i10) {
        boolean z10;
        d();
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        if (i10 < this.f2257a) {
            z11 = true;
        }
        k2.h.b(Boolean.valueOf(z11));
        k2.h.g(this.f2258b);
        return this.f2258b.s().D(i10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        o2.a.r(this.f2258b);
        this.f2258b = null;
    }

    synchronized void d() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized boolean isClosed() {
        return !o2.a.v(this.f2258b);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int size() {
        d();
        return this.f2257a;
    }
}
