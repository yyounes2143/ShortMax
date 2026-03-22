package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzxh implements zzvf, zzve {
    private final zzvf zza;
    private final long zzb;
    private zzve zzc;

    public zzxh(zzvf zzvfVar, long j10) {
        this.zza = zzvfVar;
        this.zzb = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zza(long j10, zzmi zzmiVar) {
        long j11 = this.zzb;
        return this.zza.zza(j10 - j11, zzmiVar) + j11;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzb + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzc + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzd() {
        long zzd = this.zza.zzd();
        if (zzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzd + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zze(long j10) {
        long j11 = this.zzb;
        return this.zza.zze(j10 - j11) + j11;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzf(zzyw[] zzywVarArr, boolean[] zArr, zzwz[] zzwzVarArr, boolean[] zArr2, long j10) {
        zzwz[] zzwzVarArr2 = new zzwz[zzwzVarArr.length];
        int i10 = 0;
        while (true) {
            zzwz zzwzVar = null;
            if (i10 >= zzwzVarArr.length) {
                break;
            }
            zzxg zzxgVar = (zzxg) zzwzVarArr[i10];
            if (zzxgVar != null) {
                zzwzVar = zzxgVar.zzc();
            }
            zzwzVarArr2[i10] = zzwzVar;
            i10++;
        }
        zzvf zzvfVar = this.zza;
        long j11 = this.zzb;
        long zzf = zzvfVar.zzf(zzywVarArr, zArr, zzwzVarArr2, zArr2, j10 - j11);
        for (int i11 = 0; i11 < zzwzVarArr.length; i11++) {
            zzwz zzwzVar2 = zzwzVarArr2[i11];
            if (zzwzVar2 == null) {
                zzwzVarArr[i11] = null;
            } else {
                zzwz zzwzVar3 = zzwzVarArr[i11];
                if (zzwzVar3 == null || ((zzxg) zzwzVar3).zzc() != zzwzVar2) {
                    zzwzVarArr[i11] = new zzxg(zzwzVar2, j11);
                }
            }
        }
        return zzf + j11;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final zzxk zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzh(long j10, boolean z10) {
        this.zza.zzh(j10 - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzi() throws IOException {
        this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final /* bridge */ /* synthetic */ void zzj(zzxb zzxbVar) {
        zzvf zzvfVar = (zzvf) zzxbVar;
        zzve zzveVar = this.zzc;
        zzveVar.getClass();
        zzveVar.zzj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzk(zzve zzveVar, long j10) {
        this.zzc = zzveVar;
        this.zza.zzk(this, j10 - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzl(zzvf zzvfVar) {
        zzve zzveVar = this.zzc;
        zzveVar.getClass();
        zzveVar.zzl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
        this.zza.zzm(j10 - this.zzb);
    }

    public final zzvf zzn() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        long j10 = zzlaVar.zza;
        long j11 = this.zzb;
        zzky zza = zzlaVar.zza();
        zza.zze(j10 - j11);
        return this.zza.zzo(zza.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        return this.zza.zzp();
    }
}
