package a7;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import java.io.IOException;
import java.net.URLDecoder;
/* compiled from: DataSchemeDataSource.java */
/* loaded from: classes4.dex */
public final class g extends e {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private k f188e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private byte[] f189f;

    /* renamed from: g  reason: collision with root package name */
    private int f190g;

    /* renamed from: h  reason: collision with root package name */
    private int f191h;

    public g() {
        super(false);
    }

    @Override // a7.h
    public long b(k kVar) throws IOException {
        f(kVar);
        this.f188e = kVar;
        Uri uri = kVar.f198a;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        b7.a.b(equals, "Unsupported scheme: " + scheme);
        String[] H0 = s0.H0(uri.getSchemeSpecificPart(), ",");
        if (H0.length == 2) {
            String str = H0[1];
            if (H0[0].contains(";base64")) {
                try {
                    this.f189f = Base64.decode(str, 0);
                } catch (IllegalArgumentException e10) {
                    throw ParserException.d("Error while parsing Base64 encoded string: " + str, e10);
                }
            } else {
                this.f189f = s0.h0(URLDecoder.decode(str, h7.c.f52593a.name()));
            }
            long j10 = kVar.f204g;
            byte[] bArr = this.f189f;
            if (j10 <= bArr.length) {
                int i10 = (int) j10;
                this.f190g = i10;
                int length = bArr.length - i10;
                this.f191h = length;
                long j11 = kVar.f205h;
                if (j11 != -1) {
                    this.f191h = (int) Math.min(length, j11);
                }
                g(kVar);
                long j12 = kVar.f205h;
                if (j12 == -1) {
                    return this.f191h;
                }
                return j12;
            }
            this.f189f = null;
            throw new DataSourceException(2008);
        }
        throw ParserException.d("Unexpected URI format: " + uri, null);
    }

    @Override // a7.h
    public void close() {
        if (this.f189f != null) {
            this.f189f = null;
            e();
        }
        this.f188e = null;
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        k kVar = this.f188e;
        if (kVar != null) {
            return kVar.f198a;
        }
        return null;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f191h;
        if (i12 == 0) {
            return -1;
        }
        int min = Math.min(i11, i12);
        System.arraycopy(s0.j(this.f189f), this.f190g, bArr, i10, min);
        this.f190g += min;
        this.f191h -= min;
        d(min);
        return min;
    }
}
