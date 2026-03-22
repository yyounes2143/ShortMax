package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgr implements zzgi {
    @Nullable
    private zzhj zzb;
    @Nullable
    private String zzc;
    private boolean zzf;
    private final zzhd zza = new zzhd();
    private int zzd = 8000;
    private int zze = 8000;

    public final zzgr zzb(boolean z10) {
        this.zzf = true;
        return this;
    }

    public final zzgr zzc(int i10) {
        this.zzd = i10;
        return this;
    }

    public final zzgr zzd(int i10) {
        this.zze = i10;
        return this;
    }

    public final zzgr zze(@Nullable zzhj zzhjVar) {
        this.zzb = zzhjVar;
        return this;
    }

    public final zzgr zzf(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    /* renamed from: zzg */
    public final zzgw zza() {
        zzgw zzgwVar = new zzgw(this.zzc, this.zzd, this.zze, this.zzf, false, this.zza, null, false, null);
        zzhj zzhjVar = this.zzb;
        if (zzhjVar != null) {
            zzgwVar.zzf(zzhjVar);
        }
        return zzgwVar;
    }
}
