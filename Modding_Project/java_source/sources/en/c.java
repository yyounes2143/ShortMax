package en;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.datasource.DataSourceException;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* compiled from: DataSchemeDataSource.java */
/* loaded from: classes8.dex */
public final class c extends a {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private g f51368e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private byte[] f51369f;

    /* renamed from: g  reason: collision with root package name */
    private int f51370g;

    /* renamed from: h  reason: collision with root package name */
    private int f51371h;

    public c() {
        super(false);
    }

    @Override // en.d
    public long b(g gVar) throws IOException {
        f(gVar);
        this.f51368e = gVar;
        Uri normalizeScheme = gVar.f51378a.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        boolean equals = "data".equals(scheme);
        cn.a.b(equals, "Unsupported scheme: " + scheme);
        String[] m12 = m0.m1(normalizeScheme.getSchemeSpecificPart(), ",");
        if (m12.length == 2) {
            String str = m12[1];
            if (m12[0].contains(";base64")) {
                try {
                    this.f51369f = Base64.decode(str, 0);
                } catch (IllegalArgumentException e10) {
                    throw ParserException.d("Error while parsing Base64 encoded string: " + str, e10);
                }
            } else {
                this.f51369f = m0.u0(URLDecoder.decode(str, StandardCharsets.US_ASCII.name()));
            }
            long j10 = gVar.f51384g;
            byte[] bArr = this.f51369f;
            if (j10 <= bArr.length) {
                int i10 = (int) j10;
                this.f51370g = i10;
                int length = bArr.length - i10;
                this.f51371h = length;
                long j11 = gVar.f51385h;
                if (j11 != -1) {
                    this.f51371h = (int) Math.min(length, j11);
                }
                g(gVar);
                long j12 = gVar.f51385h;
                if (j12 == -1) {
                    return this.f51371h;
                }
                return j12;
            }
            this.f51369f = null;
            throw new DataSourceException(2008);
        }
        throw ParserException.d("Unexpected URI format: " + normalizeScheme, null);
    }

    @Override // en.d
    public void close() {
        if (this.f51369f != null) {
            this.f51369f = null;
            e();
        }
        this.f51368e = null;
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        g gVar = this.f51368e;
        if (gVar != null) {
            return gVar.f51378a;
        }
        return null;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f51371h;
        if (i12 == 0) {
            return -1;
        }
        int min = Math.min(i11, i12);
        System.arraycopy(m0.i(this.f51369f), this.f51370g, bArr, i10, min);
        this.f51370g += min;
        this.f51371h -= min;
        d(min);
        return min;
    }
}
