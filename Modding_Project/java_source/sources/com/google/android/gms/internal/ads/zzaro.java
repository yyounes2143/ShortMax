package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaro extends zzhgc implements Closeable {
    static {
        zzhgj.zzb(zzaro.class);
    }

    public zzaro(zzhgd zzhgdVar, zzarn zzarnVar) throws IOException {
        zze(zzhgdVar, zzhgdVar.zzc(), zzarnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgc
    public final String toString() {
        String obj = this.zzc.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 7);
        sb2.append("model(");
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhgc, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
