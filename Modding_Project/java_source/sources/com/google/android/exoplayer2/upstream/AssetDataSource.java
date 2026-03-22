package com.google.android.exoplayer2.upstream;

import a7.e;
import a7.k;
import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import b7.s0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public final class AssetDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final AssetManager f19056e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f19057f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private InputStream f19058g;

    /* renamed from: h  reason: collision with root package name */
    private long f19059h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f19060i;

    /* loaded from: classes4.dex */
    public static final class AssetDataSourceException extends DataSourceException {
        public AssetDataSourceException(@Nullable Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f19056e = context.getAssets();
    }

    @Override // a7.h
    public long b(k kVar) throws AssetDataSourceException {
        int i10;
        try {
            Uri uri = kVar.f198a;
            this.f19057f = uri;
            String str = (String) b7.a.e(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith(DomExceptionUtils.SEPARATOR)) {
                str = str.substring(1);
            }
            f(kVar);
            InputStream open = this.f19056e.open(str, 1);
            this.f19058g = open;
            if (open.skip(kVar.f204g) >= kVar.f204g) {
                long j10 = kVar.f205h;
                if (j10 != -1) {
                    this.f19059h = j10;
                } else {
                    long available = this.f19058g.available();
                    this.f19059h = available;
                    if (available == SieveCacheKt.NodeLinkMask) {
                        this.f19059h = -1L;
                    }
                }
                this.f19060i = true;
                g(kVar);
                return this.f19059h;
            }
            throw new AssetDataSourceException(null, 2008);
        } catch (AssetDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            } else {
                i10 = 2000;
            }
            throw new AssetDataSourceException(e11, i10);
        }
    }

    @Override // a7.h
    public void close() throws AssetDataSourceException {
        this.f19057f = null;
        try {
            try {
                InputStream inputStream = this.f19058g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        } finally {
            this.f19058g = null;
            if (this.f19060i) {
                this.f19060i = false;
                e();
            }
        }
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f19057f;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws AssetDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f19059h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        }
        int read = ((InputStream) s0.j(this.f19058g)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f19059h;
        if (j11 != -1) {
            this.f19059h = j11 - read;
        }
        d(read);
        return read;
    }
}
