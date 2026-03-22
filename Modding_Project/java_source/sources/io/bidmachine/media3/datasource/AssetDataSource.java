package io.bidmachine.media3.datasource;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cn.m0;
import en.a;
import en.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes8.dex */
public final class AssetDataSource extends a {

    /* renamed from: e  reason: collision with root package name */
    private final AssetManager f55305e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f55306f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private InputStream f55307g;

    /* renamed from: h  reason: collision with root package name */
    private long f55308h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f55309i;

    /* loaded from: classes8.dex */
    public static final class AssetDataSourceException extends DataSourceException {
        public AssetDataSourceException(@Nullable Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f55305e = context.getAssets();
    }

    @Override // en.d
    public long b(g gVar) throws AssetDataSourceException {
        int i10;
        try {
            Uri uri = gVar.f51378a;
            this.f55306f = uri;
            String str = (String) cn.a.e(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith(DomExceptionUtils.SEPARATOR)) {
                str = str.substring(1);
            }
            f(gVar);
            InputStream open = this.f55305e.open(str, 1);
            this.f55307g = open;
            if (open.skip(gVar.f51384g) >= gVar.f51384g) {
                long j10 = gVar.f51385h;
                if (j10 != -1) {
                    this.f55308h = j10;
                } else {
                    long available = this.f55307g.available();
                    this.f55308h = available;
                    if (available == SieveCacheKt.NodeLinkMask) {
                        this.f55308h = -1L;
                    }
                }
                this.f55309i = true;
                g(gVar);
                return this.f55308h;
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

    @Override // en.d
    public void close() throws AssetDataSourceException {
        this.f55306f = null;
        try {
            try {
                InputStream inputStream = this.f55307g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        } finally {
            this.f55307g = null;
            if (this.f55309i) {
                this.f55309i = false;
                e();
            }
        }
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f55306f;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws AssetDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f55308h;
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
        int read = ((InputStream) m0.i(this.f55307g)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f55308h;
        if (j11 != -1) {
            this.f55308h = j11 - read;
        }
        d(read);
        return read;
    }
}
