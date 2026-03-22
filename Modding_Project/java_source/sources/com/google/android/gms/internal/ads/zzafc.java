package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafc {
    private final byte[] zza = new byte[10];
    private boolean zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private int zzf;
    private int zzg;

    public final void zza(zzafb zzafbVar, @Nullable zzafa zzafaVar) {
        if (this.zzc > 0) {
            zzafbVar.zzt(this.zzd, this.zze, this.zzf, this.zzg, zzafaVar);
            this.zzc = 0;
        }
    }

    public final void zzb() {
        this.zzb = false;
        this.zzc = 0;
    }

    public final void zzc(zzafb zzafbVar, long j10, int i10, int i11, int i12, @Nullable zzafa zzafaVar) {
        boolean z10;
        if (this.zzg <= i11 + i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzg(z10, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.zzb) {
            int i13 = this.zzc;
            int i14 = i13 + 1;
            this.zzc = i14;
            if (i13 == 0) {
                this.zzd = j10;
                this.zze = i10;
                this.zzf = 0;
            }
            this.zzf += i11;
            this.zzg = i12;
            if (i14 >= 16) {
                zza(zzafbVar, zzafaVar);
            }
        }
    }

    public final void zzd(zzadw zzadwVar) throws IOException {
        if (!this.zzb) {
            byte[] bArr = this.zza;
            zzadwVar.zzh(bArr, 0, 10);
            zzadwVar.zzj();
            int i10 = zzacu.zza;
            if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
                this.zzb = true;
            }
        }
    }
}
