package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgiy extends zzgga {
    private final zzgiw zza;
    private final String zzb;
    private final zzgiv zzc;
    private final zzgga zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgiy(zzgiw zzgiwVar, String str, zzgiv zzgivVar, zzgga zzggaVar, zzgix zzgixVar) {
        this.zza = zzgiwVar;
        this.zzb = str;
        this.zzc = zzgivVar;
        this.zzd = zzggaVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgiy)) {
            return false;
        }
        zzgiy zzgiyVar = (zzgiy) obj;
        if (!zzgiyVar.zzc.equals(this.zzc) || !zzgiyVar.zzd.equals(this.zzd) || !zzgiyVar.zzb.equals(this.zzb) || !zzgiyVar.zza.equals(this.zza)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgiy.class, this.zzb, this.zzc, this.zzd, this.zza);
    }

    public final String toString() {
        zzgiw zzgiwVar = this.zza;
        zzgga zzggaVar = this.zzd;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(zzggaVar);
        String valueOf3 = String.valueOf(zzgiwVar);
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + this.zzb + ", dekParsingStrategy: " + valueOf + ", dekParametersForNewKeys: " + valueOf2 + ", variant: " + valueOf3 + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zza != zzgiw.zzb) {
            return true;
        }
        return false;
    }

    public final zzgga zzb() {
        return this.zzd;
    }

    public final zzgiw zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzb;
    }
}
