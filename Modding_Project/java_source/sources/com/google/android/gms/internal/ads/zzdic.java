package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdic implements zzhgr {
    private final zzhha zza;

    private zzdic(zzhha zzhhaVar) {
        this.zza = zzhhaVar;
    }

    public static zzdic zzc(zzhha zzhhaVar) {
        return new zzdic(zzhhaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    /* renamed from: zza */
    public final zzdib zzb() {
        return new zzdib(((zzdjm) this.zza).zza());
    }
}
