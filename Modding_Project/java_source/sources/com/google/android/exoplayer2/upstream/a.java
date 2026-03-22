package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: DefaultLoadErrorHandlingPolicy.java */
/* loaded from: classes4.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f19115a;

    public a() {
        this(-1);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int b(int i10) {
        int i11 = this.f19115a;
        if (i11 == -1) {
            if (i10 == 7) {
                return 6;
            }
            return 3;
        }
        return i11;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public long c(b.a aVar) {
        IOException iOException = aVar.f19118c;
        if (!(iOException instanceof ParserException) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof HttpDataSource$CleartextNotPermittedException) && !(iOException instanceof Loader.UnexpectedLoaderException) && !DataSourceException.b(iOException)) {
            return Math.min((aVar.f19119d - 1) * 1000, 5000);
        }
        return -9223372036854775807L;
    }

    public a(int i10) {
        this.f19115a = i10;
    }
}
