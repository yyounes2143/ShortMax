package io.bidmachine.media3.datasource;

import androidx.annotation.Nullable;
import en.g;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {

    /* renamed from: d  reason: collision with root package name */
    public final int f55324d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f55325e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, List<String>> f55326f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f55327g;

    public HttpDataSource$InvalidResponseCodeException(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, g gVar, byte[] bArr) {
        super("Response code: " + i10, iOException, gVar, 2004, 1);
        this.f55324d = i10;
        this.f55325e = str;
        this.f55326f = map;
        this.f55327g = bArr;
    }
}
