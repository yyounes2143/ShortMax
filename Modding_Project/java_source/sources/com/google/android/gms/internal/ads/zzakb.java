package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzakb {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzen zzg = new zzen(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzadw zzadwVar, boolean z10) throws IOException {
        zza();
        zzen zzenVar = this.zzg;
        zzenVar.zzI(27);
        if (zzadz.zzd(zzadwVar, zzenVar.zzN(), 0, 27, z10) && zzenVar.zzu() == 1332176723) {
            if (zzenVar.zzm() != 0) {
                if (z10) {
                    return false;
                }
                throw zzaz.zzc("unsupported bit stream revision");
            }
            this.zza = zzenVar.zzm();
            this.zzb = zzenVar.zzr();
            zzenVar.zzs();
            zzenVar.zzs();
            zzenVar.zzs();
            int zzm = zzenVar.zzm();
            this.zzc = zzm;
            this.zzd = zzm + 27;
            zzenVar.zzI(zzm);
            if (zzadz.zzd(zzadwVar, zzenVar.zzN(), 0, this.zzc, z10)) {
                for (int i10 = 0; i10 < this.zzc; i10++) {
                    int[] iArr = this.zzf;
                    int zzm2 = zzenVar.zzm();
                    iArr[i10] = zzm2;
                    this.zze += zzm2;
                }
                return true;
            }
        }
        return false;
    }

    public final boolean zzc(zzadw zzadwVar, long j10) throws IOException {
        boolean z10;
        int i10;
        if (zzadwVar.zzf() == zzadwVar.zze()) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        zzen zzenVar = this.zzg;
        zzenVar.zzI(4);
        while (true) {
            i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if ((i10 == 0 || zzadwVar.zzf() + 4 < j10) && zzadz.zzd(zzadwVar, zzenVar.zzN(), 0, 4, true)) {
                zzenVar.zzL(0);
                if (zzenVar.zzu() == 1332176723) {
                    zzadwVar.zzj();
                    return true;
                }
                zzadwVar.zzk(1);
            }
        }
        do {
            if (i10 != 0 && zzadwVar.zzf() >= j10) {
                break;
            }
        } while (zzadwVar.zzc(1) != -1);
        return false;
    }
}
