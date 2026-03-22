package com.google.android.exoplayer2.upstream;

import a7.e;
import a7.k;
import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes4.dex */
public final class FileDataSource extends e {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f19068e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f19069f;

    /* renamed from: g  reason: collision with root package name */
    private long f19070g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19071h;

    /* loaded from: classes4.dex */
    public static class FileDataSourceException extends DataSourceException {
        public FileDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes4.dex */
    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        public static boolean b(@Nullable Throwable th2) {
            if ((th2 instanceof ErrnoException) && ((ErrnoException) th2).errno == OsConstants.EACCES) {
                return true;
            }
            return false;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile h(Uri uri) throws FileDataSourceException {
        int i10 = 2006;
        try {
            return new RandomAccessFile((String) b7.a.e(uri.getPath()), "r");
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e10, (s0.f2506a < 21 || !a.b(e10.getCause())) ? 2005 : 2005);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new FileDataSourceException(e11, 2006);
        } catch (RuntimeException e12) {
            throw new FileDataSourceException(e12, 2000);
        }
    }

    @Override // a7.h
    public long b(k kVar) throws FileDataSourceException {
        Uri uri = kVar.f198a;
        this.f19069f = uri;
        f(kVar);
        RandomAccessFile h10 = h(uri);
        this.f19068e = h10;
        try {
            h10.seek(kVar.f204g);
            long j10 = kVar.f205h;
            if (j10 == -1) {
                j10 = this.f19068e.length() - kVar.f204g;
            }
            this.f19070g = j10;
            if (j10 >= 0) {
                this.f19071h = true;
                g(kVar);
                return this.f19070g;
            }
            throw new FileDataSourceException(null, null, 2008);
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }

    @Override // a7.h
    public void close() throws FileDataSourceException {
        this.f19069f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f19068e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e10) {
                throw new FileDataSourceException(e10, 2000);
            }
        } finally {
            this.f19068e = null;
            if (this.f19071h) {
                this.f19071h = false;
                e();
            }
        }
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f19069f;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws FileDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f19070g == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) s0.j(this.f19068e)).read(bArr, i10, (int) Math.min(this.f19070g, i11));
            if (read > 0) {
                this.f19070g -= read;
                d(read);
            }
            return read;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }
}
