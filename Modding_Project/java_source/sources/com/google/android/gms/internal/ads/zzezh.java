package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzezh implements zzezr {
    private final zzezr zza;
    @Nullable
    private zzcve zzb;

    public zzezh(zzezr zzezrVar) {
        this.zza = zzezrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    @Nullable
    /* renamed from: zza */
    public final synchronized zzcve zzd() {
        return this.zzb;
    }

    public final synchronized com.google.common.util.concurrent.e zzb(zzezs zzezsVar, zzezq zzezqVar, @Nullable zzcve zzcveVar) {
        zzbvq zzbvqVar;
        this.zzb = zzcveVar;
        if (zzcveVar != null && (zzbvqVar = zzezsVar.zza) != null) {
            zzcse zzb = zzcveVar.zzb();
            return zzb.zzh(zzb.zzj(zzgdn.zzh(zzbvqVar)));
        }
        return ((zzezg) this.zza).zzb(zzezsVar, zzezqVar, zzcveVar);
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.e zzc(zzezs zzezsVar, zzezq zzezqVar, @Nullable Object obj) {
        return zzb(zzezsVar, zzezqVar, null);
    }
}
