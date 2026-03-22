package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzghx extends zzgga {
    private final int zza;
    private final zzghv zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghx(int i10, zzghv zzghvVar, zzghw zzghwVar) {
        this.zza = i10;
        this.zzb = zzghvVar;
    }

    public static zzghu zzc() {
        return new zzghu(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghx)) {
            return false;
        }
        zzghx zzghxVar = (zzghx) obj;
        if (zzghxVar.zza != this.zza || zzghxVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzghx.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        return "AesGcmSiv Parameters (variant: " + valueOf + ", " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zzb != zzghv.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzghv zzd() {
        return this.zzb;
    }
}
