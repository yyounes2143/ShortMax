package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzafo implements zzafj {
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzafo(int i10, int i11, int i12, int i13) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
    }

    public static zzafo zzb(zzen zzenVar) {
        int zzi = zzenVar.zzi();
        zzenVar.zzM(8);
        int zzi2 = zzenVar.zzi();
        int zzi3 = zzenVar.zzi();
        zzenVar.zzM(4);
        int zzi4 = zzenVar.zzi();
        zzenVar.zzM(12);
        return new zzafo(zzi, zzi2, zzi3, zzi4);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final int zza() {
        return 1751742049;
    }
}
