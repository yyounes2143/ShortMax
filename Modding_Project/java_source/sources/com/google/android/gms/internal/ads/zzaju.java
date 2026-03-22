package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaju implements zzaeu {
    final /* synthetic */ zzajw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaju(zzajw zzajwVar, zzajv zzajvVar) {
        Objects.requireNonNull(zzajwVar);
        this.zza = zzajwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        zzakh zzakhVar;
        long j10;
        zzajw zzajwVar = this.zza;
        zzakhVar = zzajwVar.zzd;
        j10 = zzajwVar.zzf;
        return zzakhVar.zzf(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        zzakh zzakhVar;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        zzajw zzajwVar = this.zza;
        zzakhVar = zzajwVar.zzd;
        long zzg = zzakhVar.zzg(j10);
        j11 = zzajwVar.zzb;
        BigInteger valueOf = BigInteger.valueOf(zzg);
        j12 = zzajwVar.zzc;
        j13 = zzajwVar.zzb;
        BigInteger multiply = valueOf.multiply(BigInteger.valueOf(j12 - j13));
        j14 = zzajwVar.zzf;
        long longValue = j11 + multiply.divide(BigInteger.valueOf(j14)).longValue();
        j15 = zzajwVar.zzb;
        j16 = zzajwVar.zzc;
        String str = zzex.zza;
        zzaev zzaevVar = new zzaev(j10, Math.max(j15, Math.min(longValue - 30000, j16 - 1)));
        return new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}
