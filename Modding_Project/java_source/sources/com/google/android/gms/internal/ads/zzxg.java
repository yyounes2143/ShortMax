package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzxg implements zzwz {
    private final zzwz zza;
    private final long zzb;

    public zzxg(zzwz zzwzVar, long j10) {
        this.zza = zzwzVar;
        this.zzb = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zza(zzkv zzkvVar, zzhs zzhsVar, int i10) {
        int zza = this.zza.zza(zzkvVar, zzhsVar, i10);
        if (zza == -4) {
            zzhsVar.zze += this.zzb;
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zzb(long j10) {
        return this.zza.zzb(j10 - this.zzb);
    }

    public final zzwz zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final boolean zze() {
        return this.zza.zze();
    }
}
