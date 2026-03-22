package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdyf implements zzgdj {
    final /* synthetic */ Context zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyf(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        if (((Boolean) zzbew.zzh.zze()).booleanValue() && (th2 instanceof com.google.android.gms.ads.internal.util.zzba)) {
            zzbco.zze(this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdyy zzdyyVar = (zzdyy) obj;
        if (((Boolean) zzbew.zzj.zze()).booleanValue()) {
            zzbco.zze(this.zza);
        }
    }
}
