package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafq {
    private final zzafp zza;
    private final zzafb zzb;
    private final int zzc;
    private final int zzd;
    private final long zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private long zzl;
    private long[] zzm;
    private int[] zzn;

    public zzafq(int i10, zzafp zzafpVar, zzafb zzafbVar) {
        int i11;
        int i12;
        this.zza = zzafpVar;
        int zzb = zzafpVar.zzb();
        boolean z10 = true;
        if (zzb != 1) {
            if (zzb == 2) {
                zzb = 2;
            } else {
                z10 = false;
            }
        }
        zzdd.zzd(z10);
        if (zzb == 2) {
            i11 = 1667497984;
        } else {
            i11 = 1651965952;
        }
        this.zzc = zzh(i10, i11);
        this.zze = zzafpVar.zzc();
        this.zzb = zzafbVar;
        if (zzb == 2) {
            i12 = zzh(i10, 1650720768);
        } else {
            i12 = -1;
        }
        this.zzd = i12;
        this.zzl = -1L;
        this.zzm = new long[512];
        this.zzn = new int[512];
        this.zzf = zzafpVar.zzd;
    }

    private static int zzh(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private final long zzi(int i10) {
        return (this.zze * i10) / this.zzf;
    }

    private final zzaev zzj(int i10) {
        return new zzaev(this.zzn[i10] * zzi(1), this.zzm[i10]);
    }

    public final zzaes zza(long j10) {
        if (this.zzk != 0) {
            int zzi = (int) (j10 / zzi(1));
            int zzc = zzex.zzc(this.zzn, zzi, true, true);
            if (this.zzn[zzc] == zzi) {
                zzaev zzj = zzj(zzc);
                return new zzaes(zzj, zzj);
            }
            zzaev zzj2 = zzj(zzc);
            int i10 = zzc + 1;
            if (i10 < this.zzm.length) {
                return new zzaes(zzj2, zzj(i10));
            }
            return new zzaes(zzj2, zzj2);
        }
        zzaev zzaevVar = new zzaev(0L, this.zzl);
        return new zzaes(zzaevVar, zzaevVar);
    }

    public final void zzb(long j10, boolean z10) {
        if (this.zzl == -1) {
            this.zzl = j10;
        }
        if (z10) {
            if (this.zzk == this.zzn.length) {
                long[] jArr = this.zzm;
                this.zzm = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.zzn;
                this.zzn = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.zzm;
            int i10 = this.zzk;
            jArr2[i10] = j10;
            this.zzn[i10] = this.zzj;
            this.zzk = i10 + 1;
        }
        this.zzj++;
    }

    public final void zzc() {
        int i10;
        this.zzm = Arrays.copyOf(this.zzm, this.zzk);
        this.zzn = Arrays.copyOf(this.zzn, this.zzk);
        if ((this.zzc & 1651965952) == 1651965952 && this.zza.zzf != 0 && (i10 = this.zzk) > 0) {
            this.zzf = i10;
        }
    }

    public final void zzd(int i10) {
        this.zzg = i10;
        this.zzh = i10;
    }

    public final void zze(long j10) {
        if (this.zzk == 0) {
            this.zzi = 0;
            return;
        }
        this.zzi = this.zzn[zzex.zzd(this.zzm, j10, true, true)];
    }

    public final boolean zzf(int i10) {
        if (this.zzc != i10 && this.zzd != i10) {
            return false;
        }
        return true;
    }

    public final boolean zzg(zzadw zzadwVar) throws IOException {
        boolean z10;
        int i10;
        int i11 = this.zzh;
        zzafb zzafbVar = this.zzb;
        int zzf = i11 - zzafbVar.zzf(zzadwVar, i11, false);
        this.zzh = zzf;
        if (zzf == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (this.zzg > 0) {
                long zzi = zzi(this.zzi);
                if (Arrays.binarySearch(this.zzn, this.zzi) >= 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                zzafbVar.zzt(zzi, i10, this.zzg, 0, null);
            }
            this.zzi++;
        }
        return z10;
    }
}
