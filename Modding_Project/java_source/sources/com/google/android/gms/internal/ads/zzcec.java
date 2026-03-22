package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcec implements zzgj {
    private final zzgj zza;
    private final long zzb;
    private final zzgj zzc;
    private long zzd;
    private Uri zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcec(zzgj zzgjVar, int i10, zzgj zzgjVar2) {
        this.zza = zzgjVar;
        this.zzb = i10;
        this.zzc = zzgjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        long j10 = this.zzd;
        long j11 = this.zzb;
        if (j10 < j11) {
            int zza = this.zza.zza(bArr, i10, (int) Math.min(i11, j11 - j10));
            long j12 = this.zzd + zza;
            this.zzd = j12;
            i12 = zza;
            j10 = j12;
        } else {
            i12 = 0;
        }
        if (j10 >= j11) {
            int zza2 = this.zzc.zza(bArr, i10 + i12, i11 - i12);
            int i13 = i12 + zza2;
            this.zzd += zza2;
            return i13;
        }
        return i12;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws IOException {
        long j10;
        zzgo zzgoVar2;
        long j11;
        long j12;
        Uri uri = zzgoVar.zza;
        this.zze = uri;
        long j13 = zzgoVar.zze;
        long j14 = this.zzb;
        zzgo zzgoVar3 = null;
        if (j13 >= j14) {
            zzgoVar2 = null;
        } else {
            long j15 = zzgoVar.zzf;
            long j16 = j14 - j13;
            if (j15 != -1) {
                j10 = Math.min(j15, j16);
            } else {
                j10 = j16;
            }
            zzgoVar2 = new zzgo(uri, j13, j10, null);
        }
        long j17 = zzgoVar.zzf;
        int i10 = (j17 > (-1L) ? 1 : (j17 == (-1L) ? 0 : -1));
        if (i10 == 0 || j13 + j17 > j14) {
            long max = Math.max(j14, j13);
            if (i10 != 0) {
                j11 = Math.min(j17, (j13 + j17) - j14);
            } else {
                j11 = -1;
            }
            zzgoVar3 = new zzgo(uri, max, j11, null);
        }
        long j18 = 0;
        if (zzgoVar2 != null) {
            j12 = this.zza.zzb(zzgoVar2);
        } else {
            j12 = 0;
        }
        if (zzgoVar3 != null) {
            j18 = this.zzc.zzb(zzgoVar3);
        }
        this.zzd = j13;
        if (j12 == -1 || j18 == -1) {
            return -1L;
        }
        return j12 + j18;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final Map zze() {
        return zzfyt.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzf(zzhj zzhjVar) {
    }
}
