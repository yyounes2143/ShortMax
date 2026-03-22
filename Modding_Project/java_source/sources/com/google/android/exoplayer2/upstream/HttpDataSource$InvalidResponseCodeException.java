package com.google.android.exoplayer2.upstream;

import a7.k;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {

    /* renamed from: d  reason: collision with root package name */
    public final int f19075d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f19076e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, List<String>> f19077f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f19078g;

    public HttpDataSource$InvalidResponseCodeException(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, k kVar, byte[] bArr) {
        super("Response code: " + i10, iOException, kVar, 2004, 1);
        this.f19075d = i10;
        this.f19076e = str;
        this.f19077f = map;
        this.f19078g = bArr;
    }
}
