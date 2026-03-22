package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzuk implements zzwz {
    public final zzwz zza;
    final /* synthetic */ zzul zzb;
    private boolean zzc;

    public zzuk(zzul zzulVar, zzwz zzwzVar) {
        Objects.requireNonNull(zzulVar);
        this.zzb = zzulVar;
        this.zza = zzwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zza(zzkv zzkvVar, zzhs zzhsVar, int i10) {
        zzul zzulVar = this.zzb;
        if (zzulVar.zzq()) {
            return -3;
        }
        if (this.zzc) {
            zzhsVar.zzc(4);
            return -4;
        }
        long zzb = zzulVar.zzb();
        int zza = this.zza.zza(zzkvVar, zzhsVar, i10);
        if (zza == -5) {
            zzz zzzVar = zzkvVar.zza;
            zzzVar.getClass();
            int i11 = zzzVar.zzJ;
            int i12 = 0;
            if (i11 == 0) {
                if (zzzVar.zzK != 0) {
                    i11 = 0;
                }
                return -5;
            }
            if (zzulVar.zzb == Long.MIN_VALUE) {
                i12 = zzzVar.zzK;
            }
            zzx zzb2 = zzzVar.zzb();
            zzb2.zzM(i11);
            zzb2.zzN(i12);
            zzkvVar.zza = zzb2.zzan();
            return -5;
        }
        long j10 = zzulVar.zzb;
        if (j10 != Long.MIN_VALUE && ((zza == -4 && zzhsVar.zze >= j10) || (zza == -3 && zzb == Long.MIN_VALUE && !zzhsVar.zzd))) {
            zzhsVar.zzb();
            zzhsVar.zzc(4);
            this.zzc = true;
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zzb(long j10) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j10);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final boolean zze() {
        if (!this.zzb.zzq() && this.zza.zze()) {
            return true;
        }
        return false;
    }
}
