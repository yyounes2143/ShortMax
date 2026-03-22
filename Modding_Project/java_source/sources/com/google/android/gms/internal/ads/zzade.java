package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzade {
    public static final zzade zza = new zzade(-3, -9223372036854775807L, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzade(int i10, long j10, long j11) {
        this.zzb = i10;
        this.zzc = j10;
        this.zzd = j11;
    }

    public static zzade zzd(long j10, long j11) {
        return new zzade(-1, j10, j11);
    }

    public static zzade zze(long j10) {
        return new zzade(0, -9223372036854775807L, j10);
    }

    public static zzade zzf(long j10, long j11) {
        return new zzade(-2, j10, j11);
    }
}
