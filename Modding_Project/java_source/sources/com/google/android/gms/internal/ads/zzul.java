package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzul implements zzvf, zzve {
    public final zzvf zza;
    long zzb;
    @Nullable
    private zzve zzc;
    private zzuk[] zzd = new zzuk[0];
    private long zze = 0;

    public zzul(zzvf zzvfVar, boolean z10, long j10, long j11) {
        this.zza = zzvfVar;
        this.zzb = j11;
    }

    private static long zzr(long j10, long j11, long j12) {
        int i10 = (j12 > Long.MIN_VALUE ? 1 : (j12 == Long.MIN_VALUE ? 0 : -1));
        long max = Math.max(j10, j11);
        if (i10 != 0) {
            return Math.min(max, j12);
        }
        return max;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zza(long j10, zzmi zzmiVar) {
        long j11;
        if (j10 == 0) {
            return 0L;
        }
        long j12 = zzmiVar.zzc;
        String str = zzex.zza;
        long max = Math.max(0L, Math.min(j12, j10));
        long j13 = zzmiVar.zzd;
        long j14 = this.zzb;
        if (j14 == Long.MIN_VALUE) {
            j11 = Long.MAX_VALUE;
        } else {
            j11 = j14 - j10;
        }
        long max2 = Math.max(0L, Math.min(j13, j11));
        if (max != j12 || max2 != j13) {
            zzmiVar = new zzmi(max, max2);
        }
        return this.zza.zza(j10, zzmiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb != Long.MIN_VALUE) {
            long j10 = this.zzb;
            if (j10 == Long.MIN_VALUE || zzb < j10) {
                return zzb;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc != Long.MIN_VALUE) {
            long j10 = this.zzb;
            if (j10 == Long.MIN_VALUE || zzc < j10) {
                return zzc;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzd() {
        if (zzq()) {
            long j10 = this.zze;
            this.zze = -9223372036854775807L;
            long zzd = zzd();
            if (zzd != -9223372036854775807L) {
                return zzd;
            }
            return j10;
        }
        long zzd2 = this.zza.zzd();
        if (zzd2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzr(zzd2, 0L, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zze(long j10) {
        zzuk[] zzukVarArr;
        this.zze = -9223372036854775807L;
        for (zzuk zzukVar : this.zzd) {
            if (zzukVar != null) {
                zzukVar.zzc();
            }
        }
        return zzr(this.zza.zze(j10), 0L, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzf(zzyw[] zzywVarArr, boolean[] zArr, zzwz[] zzwzVarArr, boolean[] zArr2, long j10) {
        int length = zzwzVarArr.length;
        this.zzd = new zzuk[length];
        zzwz[] zzwzVarArr2 = new zzwz[length];
        int i10 = 0;
        while (true) {
            zzwz zzwzVar = null;
            if (i10 >= zzwzVarArr.length) {
                break;
            }
            zzuk[] zzukVarArr = this.zzd;
            zzuk zzukVar = (zzuk) zzwzVarArr[i10];
            zzukVarArr[i10] = zzukVar;
            if (zzukVar != null) {
                zzwzVar = zzukVar.zza;
            }
            zzwzVarArr2[i10] = zzwzVar;
            i10++;
        }
        long zzf = this.zza.zzf(zzywVarArr, zArr, zzwzVarArr2, zArr2, j10);
        long zzr = zzr(zzf, j10, this.zzb);
        long j11 = -9223372036854775807L;
        if (zzq()) {
            if (zzf >= j10) {
                if (zzf != 0) {
                    for (zzyw zzywVar : zzywVarArr) {
                        if (zzywVar != null) {
                            zzz zzb = zzywVar.zzb();
                            if (!zzay.zzf(zzb.zzo, zzb.zzk)) {
                            }
                        }
                    }
                }
            }
            j11 = zzr;
            break;
        }
        this.zze = j11;
        for (int i11 = 0; i11 < zzwzVarArr.length; i11++) {
            zzwz zzwzVar2 = zzwzVarArr2[i11];
            if (zzwzVar2 == null) {
                this.zzd[i11] = null;
            } else {
                zzuk[] zzukVarArr2 = this.zzd;
                zzuk zzukVar2 = zzukVarArr2[i11];
                if (zzukVar2 == null || zzukVar2.zza != zzwzVar2) {
                    zzukVarArr2[i11] = new zzuk(this, zzwzVar2);
                }
            }
            zzwzVarArr[i11] = this.zzd[i11];
        }
        return zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final zzxk zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzh(long j10, boolean z10) {
        this.zza.zzh(j10, false);
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
        this.zza.zzk(this, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzl(zzvf zzvfVar) {
        zzve zzveVar = this.zzc;
        zzveVar.getClass();
        zzveVar.zzl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
        this.zza.zzm(j10);
    }

    public final void zzn(long j10, long j11) {
        this.zzb = j11;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        return this.zza.zzo(zzlaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        return this.zza.zzp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzq() {
        if (this.zze != -9223372036854775807L) {
            return true;
        }
        return false;
    }
}
