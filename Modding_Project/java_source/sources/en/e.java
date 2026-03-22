package en;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DataSourceInputStream.java */
/* loaded from: classes8.dex */
public final class e extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final d f51372a;

    /* renamed from: b  reason: collision with root package name */
    private final g f51373b;

    /* renamed from: f  reason: collision with root package name */
    private long f51377f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f51375d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51376e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f51374c = new byte[1];

    public e(d dVar, g gVar) {
        this.f51372a = dVar;
        this.f51373b = gVar;
    }

    private void d() throws IOException {
        if (!this.f51375d) {
            this.f51372a.b(this.f51373b);
            this.f51375d = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f51376e) {
            this.f51372a.close();
            this.f51376e = true;
        }
    }

    public void k() throws IOException {
        d();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f51374c) == -1) {
            return -1;
        }
        return this.f51374c[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        cn.a.g(!this.f51376e);
        d();
        int read = this.f51372a.read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f51377f += read;
        return read;
    }
}
