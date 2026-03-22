package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzyf extends zzyp implements Comparable {
    private final int zze;
    private final int zzf;

    public zzyf(int i10, zzbm zzbmVar, int i11, zzyi zzyiVar, int i12) {
        super(i10, zzbmVar, i11);
        this.zze = zzmb.zza(i12, zzyiVar.zzR) ? 1 : 0;
        this.zzf = this.zzd.zza();
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzyf zzyfVar) {
        return Integer.compare(this.zzf, zzyfVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* bridge */ /* synthetic */ boolean zzc(zzyp zzypVar) {
        zzyf zzyfVar = (zzyf) zzypVar;
        return false;
    }
}
