package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgit extends zzgfz {
    private final zzgiy zza;
    private final zzgxe zzb;
    private final Integer zzc;

    private zzgit(zzgiy zzgiyVar, zzgxe zzgxeVar, Integer num) {
        this.zza = zzgiyVar;
        this.zzb = zzgxeVar;
        this.zzc = num;
    }

    public static zzgit zzc(zzgiy zzgiyVar, Integer num) throws GeneralSecurityException {
        zzgxe zzb;
        if (zzgiyVar.zzc() == zzgiw.zzb) {
            if (num == null) {
                zzb = zzgnz.zza;
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else if (zzgiyVar.zzc() == zzgiw.zza) {
            if (num != null) {
                zzb = zzgnz.zzb(num.intValue());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else {
            throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(zzgiyVar.zzc())));
        }
        return new zzgit(zzgiyVar, zzb, num);
    }

    @Override // com.google.android.gms.internal.ads.zzgfz, com.google.android.gms.internal.ads.zzgez
    public final /* synthetic */ zzgfm zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final zzgxe zzb() {
        return this.zzb;
    }

    public final zzgiy zzd() {
        return this.zza;
    }

    public final Integer zze() {
        return this.zzc;
    }
}
