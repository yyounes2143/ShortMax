package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgpu extends zzgqo {
    private final int zza;
    private final int zzb;
    private final zzgps zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgpu(int i10, int i11, zzgps zzgpsVar, zzgpt zzgptVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = zzgpsVar;
    }

    public static zzgpr zze() {
        return new zzgpr(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpu)) {
            return false;
        }
        zzgpu zzgpuVar = (zzgpu) obj;
        if (zzgpuVar.zza != this.zza || zzgpuVar.zzd() != zzd() || zzgpuVar.zzc != this.zzc) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgpu.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        return "AES-CMAC Parameters (variant: " + valueOf + ", " + this.zzb + "-byte tags, and " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zzc != zzgps.zzd) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final int zzd() {
        zzgps zzgpsVar = this.zzc;
        if (zzgpsVar == zzgps.zzd) {
            return this.zzb;
        }
        if (zzgpsVar == zzgps.zza || zzgpsVar == zzgps.zzb || zzgpsVar == zzgps.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgps zzf() {
        return this.zzc;
    }
}
