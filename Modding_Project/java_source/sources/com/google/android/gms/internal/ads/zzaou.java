package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaou implements zzaot {
    private final zzady zza;
    private final zzafb zzb;
    private final zzaow zzc;
    private final zzz zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzaou(zzady zzadyVar, zzafb zzafbVar, zzaow zzaowVar, String str, int i10) throws zzaz {
        this.zza = zzadyVar;
        this.zzb = zzafbVar;
        this.zzc = zzaowVar;
        int i11 = zzaowVar.zzb * zzaowVar.zze;
        int i12 = zzaowVar.zzd;
        int i13 = i11 / 8;
        if (i12 == i13) {
            int i14 = zzaowVar.zzc * i13;
            int i15 = i14 * 8;
            int max = Math.max(i13, i14 / 10);
            this.zze = max;
            zzx zzxVar = new zzx();
            zzxVar.zzG("audio/wav");
            zzxVar.zzah(str);
            zzxVar.zzC(i15);
            zzxVar.zzac(i15);
            zzxVar.zzX(max);
            zzxVar.zzD(zzaowVar.zzb);
            zzxVar.zzai(zzaowVar.zzc);
            zzxVar.zzab(i10);
            this.zzd = zzxVar.zzan();
            return;
        }
        throw zzaz.zza("Expected block size: " + i13 + "; got: " + i12, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zza(int i10, long j10) {
        zzaoz zzaozVar = new zzaoz(this.zzc, 1, i10, j10);
        this.zza.zzP(zzaozVar);
        zzafb zzafbVar = this.zzb;
        zzafbVar.zzm(this.zzd);
        zzafbVar.zzl(zzaozVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzb(long j10) {
        this.zzf = j10;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final boolean zzc(zzadw zzadwVar, long j10) throws IOException {
        int i10;
        int i11;
        int i12;
        long j11 = j10;
        while (true) {
            i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
            if (i10 <= 0 || (i11 = this.zzg) >= (i12 = this.zze)) {
                break;
            }
            int zzf = this.zzb.zzf(zzadwVar, (int) Math.min(i12 - i11, j11), true);
            if (zzf == -1) {
                j11 = 0;
            } else {
                this.zzg += zzf;
                j11 -= zzf;
            }
        }
        zzaow zzaowVar = this.zzc;
        int i13 = this.zzg;
        int i14 = zzaowVar.zzd;
        int i15 = i13 / i14;
        if (i15 > 0) {
            int i16 = i15 * i14;
            int i17 = this.zzg - i16;
            this.zzb.zzt(this.zzf + zzex.zzu(this.zzh, 1000000L, zzaowVar.zzc, RoundingMode.DOWN), 1, i16, i17, null);
            this.zzh += i15;
            this.zzg = i17;
        }
        if (i10 <= 0) {
            return true;
        }
        return false;
    }
}
