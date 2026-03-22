package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzlc {
    public final zzvf zza;
    public final Object zzb;
    public final zzwz[] zzc;
    public boolean zzd;
    public boolean zze;
    public boolean zzf;
    public zzld zzg;
    public boolean zzh;
    private final boolean[] zzi;
    private final zzmd[] zzj;
    private final zzzd zzk;
    private final zzlr zzl;
    @Nullable
    private zzlc zzm;
    private zzxk zzn;
    private zzze zzo;
    private long zzp;

    public zzlc(zzmd[] zzmdVarArr, long j10, zzzd zzzdVar, zzzm zzzmVar, zzlr zzlrVar, zzld zzldVar, zzze zzzeVar, long j11) {
        this.zzj = zzmdVarArr;
        this.zzp = j10;
        this.zzk = zzzdVar;
        this.zzl = zzlrVar;
        zzvh zzvhVar = zzldVar.zza;
        this.zzb = zzvhVar.zza;
        this.zzg = zzldVar;
        this.zzn = zzxk.zza;
        this.zzo = zzzeVar;
        this.zzc = new zzwz[2];
        this.zzi = new boolean[2];
        long j12 = zzldVar.zzb;
        long j13 = zzldVar.zzd;
        zzvf zzp = zzlrVar.zzp(zzvhVar, zzzmVar, j12);
        this.zza = j13 != -9223372036854775807L ? new zzul(zzp, true, 0L, j13) : zzp;
    }

    private final void zzu() {
        if (zzw()) {
            int i10 = 0;
            while (true) {
                zzze zzzeVar = this.zzo;
                if (i10 < zzzeVar.zza) {
                    zzzeVar.zzb(i10);
                    zzyw zzywVar = this.zzo.zzc[i10];
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private final void zzv() {
        if (zzw()) {
            int i10 = 0;
            while (true) {
                zzze zzzeVar = this.zzo;
                if (i10 < zzzeVar.zza) {
                    zzzeVar.zzb(i10);
                    zzyw zzywVar = this.zzo.zzc[i10];
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private final boolean zzw() {
        if (this.zzm == null) {
            return true;
        }
        return false;
    }

    public final long zza(zzze zzzeVar, long j10, boolean z10) {
        return zzb(zzzeVar, j10, false, new boolean[2]);
    }

    public final long zzb(zzze zzzeVar, long j10, boolean z10, boolean[] zArr) {
        zzmd[] zzmdVarArr;
        boolean z11;
        int i10 = 0;
        while (true) {
            boolean z12 = true;
            if (i10 >= zzzeVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzi;
            if (z10 || !zzzeVar.zza(this.zzo, i10)) {
                z12 = false;
            }
            zArr2[i10] = z12;
            i10++;
        }
        int i11 = 0;
        while (true) {
            zzmdVarArr = this.zzj;
            if (i11 >= 2) {
                break;
            }
            zzmdVarArr[i11].zzb();
            i11++;
        }
        zzu();
        this.zzo = zzzeVar;
        zzv();
        zzvf zzvfVar = this.zza;
        zzyw[] zzywVarArr = zzzeVar.zzc;
        boolean[] zArr3 = this.zzi;
        zzwz[] zzwzVarArr = this.zzc;
        long zzf = zzvfVar.zzf(zzywVarArr, zArr3, zzwzVarArr, zArr, j10);
        for (int i12 = 0; i12 < 2; i12++) {
            zzmdVarArr[i12].zzb();
        }
        this.zzf = false;
        for (int i13 = 0; i13 < 2; i13++) {
            if (zzwzVarArr[i13] != null) {
                zzdd.zzf(zzzeVar.zzb(i13));
                zzmdVarArr[i13].zzb();
                this.zzf = true;
            } else {
                if (zzywVarArr[i13] == null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                zzdd.zzf(z11);
            }
        }
        return zzf;
    }

    public final long zzc() {
        long j10;
        if (!this.zze) {
            return this.zzg.zzb;
        }
        if (this.zzf) {
            j10 = this.zza.zzb();
        } else {
            j10 = Long.MIN_VALUE;
        }
        if (j10 == Long.MIN_VALUE) {
            return this.zzg.zze;
        }
        return j10;
    }

    public final long zzd() {
        if (!this.zze) {
            return 0L;
        }
        return this.zza.zzc();
    }

    public final long zze() {
        return this.zzp;
    }

    public final long zzf() {
        return this.zzg.zzb + this.zzp;
    }

    @Nullable
    public final zzlc zzg() {
        return this.zzm;
    }

    public final zzxk zzh() {
        return this.zzn;
    }

    public final zzze zzi() {
        return this.zzo;
    }

    public final zzze zzj(float f10, zzbl zzblVar, boolean z10) throws zzin {
        zzyw[] zzywVarArr;
        zzxk zzxkVar = this.zzn;
        zzvh zzvhVar = this.zzg.zza;
        zzzd zzzdVar = this.zzk;
        zzmd[] zzmdVarArr = this.zzj;
        zzze zzo = zzzdVar.zzo(zzmdVarArr, zzxkVar, zzvhVar, zzblVar);
        for (int i10 = 0; i10 < zzo.zza; i10++) {
            boolean z11 = true;
            if (zzo.zzb(i10)) {
                if (zzo.zzc[i10] == null) {
                    zzmdVarArr[i10].zzb();
                    z11 = false;
                }
                zzdd.zzf(z11);
            } else {
                if (zzo.zzc[i10] != null) {
                    z11 = false;
                }
                zzdd.zzf(z11);
            }
        }
        for (zzyw zzywVar : zzo.zzc) {
        }
        return zzo;
    }

    public final void zzk(zzla zzlaVar) {
        zzdd.zzf(zzw());
        this.zza.zzo(zzlaVar);
    }

    public final void zzl(float f10, zzbl zzblVar, boolean z10) throws zzin {
        this.zze = true;
        this.zzn = this.zza.zzg();
        zzze zzj = zzj(f10, zzblVar, z10);
        zzld zzldVar = this.zzg;
        long j10 = zzldVar.zzb;
        long j11 = zzldVar.zze;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        long zza = zza(zzj, j10, false);
        long j12 = this.zzp;
        zzld zzldVar2 = this.zzg;
        this.zzp = j12 + (zzldVar2.zzb - zza);
        this.zzg = zzldVar2.zzb(zza);
    }

    public final void zzm(zzve zzveVar, long j10) {
        this.zzd = true;
        this.zza.zzk(zzveVar, j10);
    }

    public final void zzn(long j10) {
        zzdd.zzf(zzw());
        if (this.zze) {
            this.zza.zzm(j10 - this.zzp);
        }
    }

    public final void zzo() {
        zzu();
        zzvf zzvfVar = this.zza;
        try {
            boolean z10 = zzvfVar instanceof zzul;
            zzlr zzlrVar = this.zzl;
            if (z10) {
                zzlrVar.zzi(((zzul) zzvfVar).zza);
            } else {
                zzlrVar.zzi(zzvfVar);
            }
        } catch (RuntimeException e10) {
            zzea.zzd("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public final void zzp(@Nullable zzlc zzlcVar) {
        if (zzlcVar == this.zzm) {
            return;
        }
        zzu();
        this.zzm = zzlcVar;
        zzv();
    }

    public final void zzq(long j10) {
        this.zzp = j10;
    }

    public final void zzr() {
        zzvf zzvfVar = this.zza;
        if (zzvfVar instanceof zzul) {
            long j10 = this.zzg.zzd;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((zzul) zzvfVar).zzn(0L, j10);
        }
    }

    public final boolean zzs() {
        if (!this.zze) {
            return false;
        }
        if (this.zzf && this.zza.zzb() != Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    public final boolean zzt() {
        if (!this.zze) {
            return false;
        }
        if (!zzs() && zzc() - this.zzg.zzb < -9223372036854775807L) {
            return false;
        }
        return true;
    }
}
