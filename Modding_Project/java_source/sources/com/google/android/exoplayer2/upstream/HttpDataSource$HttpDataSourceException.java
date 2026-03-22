package com.google.android.exoplayer2.upstream;

import a7.k;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes4.dex */
public class HttpDataSource$HttpDataSourceException extends DataSourceException {

    /* renamed from: b  reason: collision with root package name */
    public final k f19072b;

    /* renamed from: c  reason: collision with root package name */
    public final int f19073c;

    public HttpDataSource$HttpDataSourceException(k kVar, int i10, int i11) {
        super(d(i10, i11));
        this.f19072b = kVar;
        this.f19073c = i11;
    }

    private static int d(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public static HttpDataSource$HttpDataSourceException e(final IOException iOException, final k kVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else if (message != null && h7.a.e(message).matches("cleartext.*not permitted.*")) {
            i11 = 2007;
        } else {
            i11 = 2001;
        }
        if (i11 == 2007) {
            return new HttpDataSource$HttpDataSourceException(iOException, kVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$CleartextNotPermittedException
            };
        }
        return new HttpDataSource$HttpDataSourceException(iOException, kVar, i11, i10);
    }

    public HttpDataSource$HttpDataSourceException(String str, k kVar, int i10, int i11) {
        super(str, d(i10, i11));
        this.f19072b = kVar;
        this.f19073c = i11;
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, k kVar, int i10, int i11) {
        super(iOException, d(i10, i11));
        this.f19072b = kVar;
        this.f19073c = i11;
    }

    public HttpDataSource$HttpDataSourceException(String str, @Nullable IOException iOException, k kVar, int i10, int i11) {
        super(str, iOException, d(i10, i11));
        this.f19072b = kVar;
        this.f19073c = i11;
    }
}
