package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzadg {
    protected final zzada zza;
    protected final zzadf zzb;
    @Nullable
    protected zzadc zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzadg(zzadd zzaddVar, zzadf zzadfVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.zzb = zzadfVar;
        this.zzd = i10;
        this.zza = new zzada(zzaddVar, j10, 0L, j12, j13, j14, j15);
    }

    protected static final int zzf(zzadw zzadwVar, long j10, zzaer zzaerVar) {
        if (j10 == zzadwVar.zzf()) {
            return 0;
        }
        zzaerVar.zza = j10;
        return 1;
    }

    protected static final boolean zzg(zzadw zzadwVar, long j10) throws IOException {
        long zzf = j10 - zzadwVar.zzf();
        if (zzf >= 0 && zzf <= 262144) {
            zzadwVar.zzk((int) zzf);
            return true;
        }
        return false;
    }

    public final int zza(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int i10;
        long j14;
        long j15;
        long j16;
        long j17;
        long j18;
        long j19;
        long j20;
        while (true) {
            zzadc zzadcVar = this.zzc;
            zzdd.zzb(zzadcVar);
            j10 = zzadcVar.zzf;
            j11 = zzadcVar.zzg;
            j12 = zzadcVar.zzh;
            if (j11 - j10 <= this.zzd) {
                zzc(false, j10);
                return zzf(zzadwVar, j10, zzaerVar);
            } else if (!zzg(zzadwVar, j12)) {
                return zzf(zzadwVar, j12, zzaerVar);
            } else {
                zzadwVar.zzj();
                zzadf zzadfVar = this.zzb;
                j13 = zzadcVar.zzb;
                zzade zza = zzadfVar.zza(zzadwVar, j13);
                i10 = zza.zzb;
                if (i10 != -3) {
                    if (i10 == -2) {
                        j19 = zza.zzc;
                        j20 = zza.zzd;
                        zzadc.zzh(zzadcVar, j19, j20);
                    } else if (i10 != -1) {
                        j14 = zza.zzd;
                        zzg(zzadwVar, j14);
                        j15 = zza.zzd;
                        zzc(true, j15);
                        j16 = zza.zzd;
                        return zzf(zzadwVar, j16, zzaerVar);
                    } else {
                        j17 = zza.zzc;
                        j18 = zza.zzd;
                        zzadc.zzg(zzadcVar, j17, j18);
                    }
                } else {
                    zzc(false, j12);
                    return zzf(zzadwVar, j12, zzaerVar);
                }
            }
        }
    }

    public final zzaeu zzb() {
        return this.zza;
    }

    protected final void zzc(boolean z10, long j10) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j10) {
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        zzadc zzadcVar = this.zzc;
        if (zzadcVar != null) {
            j15 = zzadcVar.zza;
            if (j15 == j10) {
                return;
            }
        }
        zzada zzadaVar = this.zza;
        long zzf = zzadaVar.zzf(j10);
        j11 = zzadaVar.zzc;
        j12 = zzadaVar.zzd;
        j13 = zzadaVar.zze;
        j14 = zzadaVar.zzf;
        this.zzc = new zzadc(j10, zzf, 0L, j11, j12, j13, j14);
    }

    public final boolean zze() {
        if (this.zzc != null) {
            return true;
        }
        return false;
    }
}
