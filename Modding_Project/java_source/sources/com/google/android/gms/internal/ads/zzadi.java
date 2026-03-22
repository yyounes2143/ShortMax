package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadi implements zzaeu {
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;
    private final long zzf;

    public zzadi(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length > 0) {
            int i10 = length - 1;
            this.zzf = jArr2[i10] + jArr3[i10];
            return;
        }
        this.zzf = 0L;
    }

    public final String toString() {
        long[] jArr = this.zzd;
        long[] jArr2 = this.zze;
        long[] jArr3 = this.zzc;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(jArr3);
        String arrays3 = Arrays.toString(jArr2);
        String arrays4 = Arrays.toString(jArr);
        return "ChunkIndex(length=" + this.zza + ", sizes=" + arrays + ", offsets=" + arrays2 + ", timeUs=" + arrays3 + ", durationsUs=" + arrays4 + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        long[] jArr = this.zze;
        int zzd = zzex.zzd(jArr, j10, true, true);
        long j11 = jArr[zzd];
        long[] jArr2 = this.zzc;
        zzaev zzaevVar = new zzaev(j11, jArr2[zzd]);
        if (zzaevVar.zzb < j10 && zzd != this.zza - 1) {
            int i10 = zzd + 1;
            return new zzaes(zzaevVar, new zzaev(jArr[i10], jArr2[i10]));
        }
        return new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}
