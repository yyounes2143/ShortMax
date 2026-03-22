package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import b7.g0;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: IcyDataSource.java */
/* loaded from: classes4.dex */
final class k implements a7.h {

    /* renamed from: a  reason: collision with root package name */
    private final a7.h f18339a;

    /* renamed from: b  reason: collision with root package name */
    private final int f18340b;

    /* renamed from: c  reason: collision with root package name */
    private final a f18341c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f18342d;

    /* renamed from: e  reason: collision with root package name */
    private int f18343e;

    /* compiled from: IcyDataSource.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(g0 g0Var);
    }

    public k(a7.h hVar, int i10, a aVar) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.f18339a = hVar;
        this.f18340b = i10;
        this.f18341c = aVar;
        this.f18342d = new byte[1];
        this.f18343e = i10;
    }

    private boolean d() throws IOException {
        if (this.f18339a.read(this.f18342d, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.f18342d[0] & 255) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int read = this.f18339a.read(bArr, i12, i11);
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
            this.f18341c.a(new g0(bArr, i10));
        }
        return true;
    }

    @Override // a7.h
    public long b(a7.k kVar) {
        throw new UnsupportedOperationException();
    }

    @Override // a7.h
    public void c(a7.y yVar) {
        b7.a.e(yVar);
        this.f18339a.c(yVar);
    }

    @Override // a7.h
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // a7.h
    public Map<String, List<String>> getResponseHeaders() {
        return this.f18339a.getResponseHeaders();
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f18339a.getUri();
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f18343e == 0) {
            if (!d()) {
                return -1;
            }
            this.f18343e = this.f18340b;
        }
        int read = this.f18339a.read(bArr, i10, Math.min(this.f18343e, i11));
        if (read != -1) {
            this.f18343e -= read;
        }
        return read;
    }
}
