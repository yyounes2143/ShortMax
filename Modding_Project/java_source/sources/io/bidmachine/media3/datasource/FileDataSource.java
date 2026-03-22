package io.bidmachine.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import cn.m0;
import en.a;
import en.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes8.dex */
public final class FileDataSource extends a {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f55317e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f55318f;

    /* renamed from: g  reason: collision with root package name */
    private long f55319g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55320h;

    /* loaded from: classes8.dex */
    public static class FileDataSourceException extends DataSourceException {
        public FileDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile h(Uri uri) throws FileDataSourceException {
        int i10 = 2006;
        try {
            return new RandomAccessFile((String) cn.a.e(uri.getPath()), "r");
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e10, ((e10.getCause() instanceof ErrnoException) && ((ErrnoException) e10.getCause()).errno == OsConstants.EACCES) ? 2005 : 2005);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new FileDataSourceException(e11, 2006);
        } catch (RuntimeException e12) {
            throw new FileDataSourceException(e12, 2000);
        }
    }

    @Override // en.d
    public long b(g gVar) throws FileDataSourceException {
        Uri uri = gVar.f51378a;
        this.f55318f = uri;
        f(gVar);
        RandomAccessFile h10 = h(uri);
        this.f55317e = h10;
        try {
            h10.seek(gVar.f51384g);
            long j10 = gVar.f51385h;
            if (j10 == -1) {
                j10 = this.f55317e.length() - gVar.f51384g;
            }
            this.f55319g = j10;
            if (j10 >= 0) {
                this.f55320h = true;
                g(gVar);
                return this.f55319g;
            }
            throw new FileDataSourceException(null, null, 2008);
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }

    @Override // en.d
    public void close() throws FileDataSourceException {
        this.f55318f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f55317e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e10) {
                throw new FileDataSourceException(e10, 2000);
            }
        } finally {
            this.f55317e = null;
            if (this.f55320h) {
                this.f55320h = false;
                e();
            }
        }
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f55318f;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws FileDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f55319g == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) m0.i(this.f55317e)).read(bArr, i10, (int) Math.min(this.f55319g, i11));
            if (read > 0) {
                this.f55319g -= read;
                d(read);
            }
            return read;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }
}
