package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzevi implements zzeuc {
    private final Executor zza;
    private final String zzb;

    public zzevi(zzbzj zzbzjVar, Executor executor, String str, @Nullable PackageInfo packageInfo, int i10) {
        this.zza = executor;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        com.google.common.util.concurrent.e zzh = zzgdn.zzh(this.zzb);
        zzfve zzfveVar = new zzfve() { // from class: com.google.android.gms.internal.ads.zzevg
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                return new zzevj((String) obj);
            }
        };
        Executor executor = this.zza;
        return zzgdn.zzf(zzgdn.zzm(zzh, zzfveVar, executor), Throwable.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzevh
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                com.google.common.util.concurrent.e zzh2;
                Throwable th2 = (Throwable) obj;
                zzh2 = zzgdn.zzh(new zzevj(zzevi.this.zzb));
                return zzh2;
            }
        }, executor);
    }
}
