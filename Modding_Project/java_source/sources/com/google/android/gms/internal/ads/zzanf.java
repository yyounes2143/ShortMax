package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzanf {
    private final zzafb zza;
    private final SparseArray zzb = new SparseArray();
    private final SparseArray zzc = new SparseArray();
    private final byte[] zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private boolean zzl;

    public zzanf(zzafb zzafbVar, boolean z10, boolean z11) {
        this.zza = zzafbVar;
        byte[] bArr = new byte[128];
        this.zzd = bArr;
        new zzfw(bArr, 0, 0);
        this.zzh = false;
    }

    public final void zza(zzft zzftVar) {
        this.zzc.append(zzftVar.zza, zzftVar);
    }

    public final void zzb(zzfu zzfuVar) {
        this.zzb.append(zzfuVar.zzd, zzfuVar);
    }

    public final void zzc() {
        this.zzh = false;
    }

    public final void zzd(long j10, int i10, long j11, boolean z10) {
        this.zze = i10;
        this.zzg = j11;
        this.zzf = j10;
        this.zzl = z10;
    }

    public final boolean zze(long j10, int i10, boolean z10) {
        boolean z11 = false;
        if (this.zze == 9) {
            if (z10 && this.zzh) {
                long j11 = this.zzf;
                int i11 = i10 + ((int) (j10 - j11));
                long j12 = this.zzj;
                if (j12 != -9223372036854775807L) {
                    long j13 = this.zzi;
                    if (j11 != j13) {
                        this.zza.zzt(j12, this.zzk ? 1 : 0, (int) (j11 - j13), i11, null);
                    }
                }
            }
            this.zzi = this.zzf;
            this.zzj = this.zzg;
            this.zzk = false;
            this.zzh = true;
        }
        boolean z12 = this.zzl;
        boolean z13 = this.zzk;
        int i12 = this.zze;
        if (i12 == 5 || (z12 && i12 == 1)) {
            z11 = true;
        }
        boolean z14 = z13 | z11;
        this.zzk = z14;
        this.zze = 24;
        return z14;
    }
}
