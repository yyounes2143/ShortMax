package n2;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.InputStream;
/* compiled from: PooledByteBufferInputStream.java */
/* loaded from: classes3.dex */
public class h extends InputStream {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final PooledByteBuffer f62733a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    int f62734b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    int f62735c;

    public h(PooledByteBuffer pooledByteBuffer) {
        k2.h.b(Boolean.valueOf(!pooledByteBuffer.isClosed()));
        this.f62733a = (PooledByteBuffer) k2.h.g(pooledByteBuffer);
        this.f62734b = 0;
        this.f62735c = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f62733a.size() - this.f62734b;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f62735c = this.f62734b;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        PooledByteBuffer pooledByteBuffer = this.f62733a;
        int i10 = this.f62734b;
        this.f62734b = i10 + 1;
        return pooledByteBuffer.D(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f62734b = this.f62735c;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        int min = Math.min((int) j10, available());
        this.f62734b += min;
        return min;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0 && i10 + i11 <= bArr.length) {
            int available = available();
            if (available <= 0) {
                return -1;
            }
            if (i11 <= 0) {
                return 0;
            }
            int min = Math.min(available, i11);
            this.f62733a.B(this.f62734b, bArr, i10, min);
            this.f62734b += min;
            return min;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i10 + "; regionLength=" + i11);
    }
}
