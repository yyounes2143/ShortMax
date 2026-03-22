package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: IcyDataSource.java */
/* loaded from: classes8.dex */
final class n implements en.d {

    /* renamed from: a  reason: collision with root package name */
    private final en.d f56963a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56964b;

    /* renamed from: c  reason: collision with root package name */
    private final a f56965c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f56966d;

    /* renamed from: e  reason: collision with root package name */
    private int f56967e;

    /* compiled from: IcyDataSource.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a(cn.b0 b0Var);
    }

    public n(en.d dVar, int i10, a aVar) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f56963a = dVar;
        this.f56964b = i10;
        this.f56965c = aVar;
        this.f56966d = new byte[1];
        this.f56967e = i10;
    }

    private boolean d() throws IOException {
        if (this.f56963a.read(this.f56966d, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.f56966d[0] & 255) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int read = this.f56963a.read(bArr, i12, i11);
            if (read == -1) {
                return false;
            }
            i12 += read;
            i11 -= read;
        }
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        if (i10 > 0) {
            this.f56965c.a(new cn.b0(bArr, i10));
        }
        return true;
    }

    @Override // en.d
    public long b(en.g gVar) {
        throw new UnsupportedOperationException();
    }

    @Override // en.d
    public void c(en.o oVar) {
        cn.a.e(oVar);
        this.f56963a.c(oVar);
    }

    @Override // en.d
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // en.d
    public Map<String, List<String>> getResponseHeaders() {
        return this.f56963a.getResponseHeaders();
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f56963a.getUri();
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f56967e == 0) {
            if (!d()) {
                return -1;
            }
            this.f56967e = this.f56964b;
        }
        int read = this.f56963a.read(bArr, i10, Math.min(this.f56967e, i11));
        if (read != -1) {
            this.f56967e -= read;
        }
        return read;
    }
}
