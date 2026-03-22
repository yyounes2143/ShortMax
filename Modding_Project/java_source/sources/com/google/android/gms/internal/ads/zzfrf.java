package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfrf implements Closeable {
    public static zzfrr zza() {
        return new zzfrr();
    }

    public static zzfrr zzb(final int i10, zzfrq zzfrqVar) {
        return new zzfrr(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrd
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i10);
                return valueOf;
            }
        }, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfre
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                return zzfrf.zze();
            }
        }, zzfrqVar);
    }

    public static zzfrr zzc(zzfwh<Integer> zzfwhVar, zzfwh<Integer> zzfwhVar2, zzfrq zzfrqVar) {
        return new zzfrr(zzfwhVar, zzfwhVar2, zzfrqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zze() {
        return -1;
    }
}
