package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzuz implements zzvf, zzve {
    public final zzvh zza;
    private final long zzb;
    private zzvj zzc;
    private zzvf zzd;
    @Nullable
    private zzve zze;
    private long zzf = -9223372036854775807L;
    private final zzzm zzg;

    public zzuz(zzvh zzvhVar, zzzm zzzmVar, long j10) {
        this.zza = zzvhVar;
        this.zzg = zzzmVar;
        this.zzb = j10;
    }

    private final long zzv(long j10) {
        long j11 = this.zzf;
        if (j11 != -9223372036854775807L) {
            return j11;
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zza(long j10, zzmi zzmiVar) {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zza(j10, zzmiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzd() {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zze(long j10) {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zze(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzf(zzyw[] zzywVarArr, boolean[] zArr, zzwz[] zzwzVarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.zzf;
        if (j12 != -9223372036854775807L && j10 == this.zzb) {
            j11 = j12;
        } else {
            j11 = j10;
        }
        this.zzf = -9223372036854775807L;
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zzf(zzywVarArr, zArr, zzwzVarArr, zArr2, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final zzxk zzg() {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        return zzvfVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzh(long j10, boolean z10) {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        zzvfVar.zzh(j10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzi() throws IOException {
        zzvf zzvfVar = this.zzd;
        if (zzvfVar != null) {
            zzvfVar.zzi();
            return;
        }
        zzvj zzvjVar = this.zzc;
        if (zzvjVar != null) {
            zzvjVar.zzz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final /* bridge */ /* synthetic */ void zzj(zzxb zzxbVar) {
        zzvf zzvfVar = (zzvf) zzxbVar;
        zzve zzveVar = this.zze;
        String str = zzex.zza;
        zzveVar.zzj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzk(zzve zzveVar, long j10) {
        this.zze = zzveVar;
        zzvf zzvfVar = this.zzd;
        if (zzvfVar != null) {
            zzvfVar.zzk(this, zzv(this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzl(zzvf zzvfVar) {
        zzve zzveVar = this.zze;
        String str = zzex.zza;
        zzveVar.zzl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
        zzvf zzvfVar = this.zzd;
        String str = zzex.zza;
        zzvfVar.zzm(j10);
    }

    public final long zzn() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        zzvf zzvfVar = this.zzd;
        if (zzvfVar != null && zzvfVar.zzo(zzlaVar)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        zzvf zzvfVar = this.zzd;
        if (zzvfVar != null && zzvfVar.zzp()) {
            return true;
        }
        return false;
    }

    public final long zzq() {
        return this.zzb;
    }

    public final void zzr(zzvh zzvhVar) {
        long zzv = zzv(this.zzb);
        zzvj zzvjVar = this.zzc;
        zzvjVar.getClass();
        zzvf zzI = zzvjVar.zzI(zzvhVar, this.zzg, zzv);
        this.zzd = zzI;
        if (this.zze != null) {
            zzI.zzk(this, zzv);
        }
    }

    public final void zzs(long j10) {
        this.zzf = j10;
    }

    public final void zzt() {
        zzvf zzvfVar = this.zzd;
        if (zzvfVar != null) {
            zzvj zzvjVar = this.zzc;
            zzvjVar.getClass();
            zzvjVar.zzG(zzvfVar);
        }
    }

    public final void zzu(zzvj zzvjVar) {
        boolean z10;
        if (this.zzc == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        this.zzc = zzvjVar;
    }
}
