package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes4.dex */
public class DataSourceException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final int f19067a;

    public DataSourceException(int i10) {
        this.f19067a = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(java.io.IOException r2) {
        /*
        L0:
            if (r2 == 0) goto L16
            boolean r0 = r2 instanceof com.google.android.exoplayer2.upstream.DataSourceException
            if (r0 == 0) goto L11
            r0 = r2
            com.google.android.exoplayer2.upstream.DataSourceException r0 = (com.google.android.exoplayer2.upstream.DataSourceException) r0
            int r0 = r0.f19067a
            r1 = 2008(0x7d8, float:2.814E-42)
            if (r0 != r1) goto L11
            r2 = 1
            return r2
        L11:
            java.lang.Throwable r2 = r2.getCause()
            goto L0
        L16:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DataSourceException.b(java.io.IOException):boolean");
    }

    public DataSourceException(@Nullable Throwable th2, int i10) {
        super(th2);
        this.f19067a = i10;
    }

    public DataSourceException(@Nullable String str, int i10) {
        super(str);
        this.f19067a = i10;
    }

    public DataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
        super(str, th2);
        this.f19067a = i10;
    }
}
