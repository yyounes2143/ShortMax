package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfoo extends zzfok {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final long zzd;
    private final long zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfoo(String str, boolean z10, boolean z11, boolean z12, long j10, boolean z13, long j11, zzfon zzfonVar) {
        this.zza = str;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = j10;
        this.zze = j11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfok) {
            zzfok zzfokVar = (zzfok) obj;
            if (this.zza.equals(zzfokVar.zzd()) && this.zzb == zzfokVar.zzh() && this.zzc == zzfokVar.zzg()) {
                zzfokVar.zzf();
                if (this.zzd == zzfokVar.zzb()) {
                    zzfokVar.zze();
                    if (this.zze == zzfokVar.zza()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = this.zza.hashCode() ^ 1000003;
        int i11 = 1231;
        if (true != this.zzb) {
            i10 = 1237;
        } else {
            i10 = 1231;
        }
        int i12 = ((hashCode * 1000003) ^ i10) * 1000003;
        if (true != this.zzc) {
            i11 = 1237;
        }
        return ((((((((i12 ^ i11) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zzd)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zze);
    }

    public final String toString() {
        return "AdShield2Options{clientVersion=" + this.zza + ", shouldGetAdvertisingId=" + this.zzb + ", isGooglePlayServicesAvailable=" + this.zzc + ", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=" + this.zzd + ", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=" + this.zze + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final long zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final String zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final boolean zzg() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfok
    public final boolean zzh() {
        return this.zzb;
    }
}
