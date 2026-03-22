package a7;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DataSourceInputStream.java */
/* loaded from: classes4.dex */
public final class i extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final h f192a;

    /* renamed from: b  reason: collision with root package name */
    private final k f193b;

    /* renamed from: f  reason: collision with root package name */
    private long f197f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f195d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f196e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f194c = new byte[1];

    public i(h hVar, k kVar) {
        this.f192a = hVar;
        this.f193b = kVar;
    }

    private void d() throws IOException {
        if (!this.f195d) {
            this.f192a.b(this.f193b);
            this.f195d = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f196e) {
            this.f192a.close();
            this.f196e = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f194c) == -1) {
            return -1;
        }
        return this.f194c[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        b7.a.g(!this.f196e);
        d();
        int read = this.f192a.read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f197f += read;
        return read;
    }
}
