package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzezg implements zzezr {
    @Nullable
    private zzcve zza;

    @Override // com.google.android.gms.internal.ads.zzezr
    @Nullable
    /* renamed from: zza */
    public final synchronized zzcve zzd() {
        return this.zza;
    }

    public final synchronized com.google.common.util.concurrent.e zzb(zzezs zzezsVar, zzezq zzezqVar, @Nullable zzcve zzcveVar) {
        zzcse zzb;
        try {
            if (zzcveVar != null) {
                this.zza = zzcveVar;
            } else {
                this.zza = (zzcve) zzezqVar.zza(zzezsVar.zzb).zzh();
            }
            zzb = this.zza.zzb();
        } catch (Throwable th2) {
            throw th2;
        }
        return zzb.zzh(zzb.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.e zzc(zzezs zzezsVar, zzezq zzezqVar, @Nullable Object obj) {
        return zzb(zzezsVar, zzezqVar, null);
    }
}
