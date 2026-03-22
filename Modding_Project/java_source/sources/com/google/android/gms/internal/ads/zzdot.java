package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdot implements zzhgr {
    private final zzhha zza;
    private final zzhha zzb;
    private final zzhha zzc;

    private zzdot(zzhha zzhhaVar, zzhha zzhhaVar2, zzhha zzhhaVar3) {
        this.zza = zzhhaVar;
        this.zzb = zzhhaVar2;
        this.zzc = zzhhaVar3;
    }

    public static zzdot zza(zzhha zzhhaVar, zzhha zzhhaVar2, zzhha zzhhaVar3) {
        return new zzdot(zzhhaVar, zzhhaVar2, zzhhaVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final /* synthetic */ Object zzb() {
        int i10 = ((zzcvp) this.zzc).zzc().zzo.zza;
        if (i10 != 0) {
            if (i10 - 1 != 0) {
                return ((zzeiu) this.zzb).zzb();
            }
            return ((zzeiu) this.zza).zzb();
        }
        throw null;
    }
}
