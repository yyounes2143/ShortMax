package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzyg implements Comparable {
    private final boolean zza;
    private final boolean zzb;

    public zzyg(zzz zzzVar, int i10) {
        this.zza = 1 == (zzzVar.zze & 1);
        this.zzb = zzmb.zza(i10, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzyg zzygVar) {
        return zzfyf.zzj().zzd(this.zzb, zzygVar.zzb).zzd(this.zza, zzygVar.zza).zza();
    }
}
