package n2;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: PooledByteArrayBufferedInputStream.java */
/* loaded from: classes3.dex */
public class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f62727a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f62728b;

    /* renamed from: c  reason: collision with root package name */
    private final o2.h<byte[]> f62729c;

    /* renamed from: d  reason: collision with root package name */
    private int f62730d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f62731e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f62732f = false;

    public f(InputStream inputStream, byte[] bArr, o2.h<byte[]> hVar) {
        this.f62727a = (InputStream) k2.h.g(inputStream);
        this.f62728b = (byte[]) k2.h.g(bArr);
        this.f62729c = (o2.h) k2.h.g(hVar);
    }

    private boolean d() throws IOException {
        if (this.f62731e < this.f62730d) {
            return true;
        }
        int read = this.f62727a.read(this.f62728b);
        if (read <= 0) {
            return false;
        }
        this.f62730d = read;
        this.f62731e = 0;
        return true;
    }

    private void k() throws IOException {
        if (!this.f62732f) {
            return;
        }
        throw new IOException("stream already closed");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        boolean z10;
        if (this.f62731e <= this.f62730d) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.i(z10);
        k();
        return (this.f62730d - this.f62731e) + this.f62727a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f62732f) {
            this.f62732f = true;
            this.f62729c.release(this.f62728b);
            super.close();
        }
    }

    protected void finalize() throws Throwable {
        if (!this.f62732f) {
            l2.a.i("PooledByteInputStream", "Finalized without closing");
            close();
        }
        super.finalize();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        k2.h.i(this.f62731e <= this.f62730d);
        k();
        if (d()) {
            byte[] bArr = this.f62728b;
            int i10 = this.f62731e;
            this.f62731e = i10 + 1;
            return bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        boolean z10;
        if (this.f62731e <= this.f62730d) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.i(z10);
        k();
        int i10 = this.f62730d;
        int i11 = this.f62731e;
        long j11 = i10 - i11;
        if (j11 >= j10) {
            this.f62731e = (int) (i11 + j10);
            return j10;
        }
        this.f62731e = i10;
        return j11 + this.f62727a.skip(j10 - j11);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        k2.h.i(this.f62731e <= this.f62730d);
        k();
        if (d()) {
            int min = Math.min(this.f62730d - this.f62731e, i11);
            System.arraycopy(this.f62728b, this.f62731e, bArr, i10, min);
            this.f62731e += min;
            return min;
        }
        return -1;
    }
}
