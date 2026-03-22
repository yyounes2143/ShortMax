package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgju extends zzgfz {
    private final zzgka zza;
    private final zzgxf zzb;
    private final zzgxe zzc;
    private final Integer zzd;

    private zzgju(zzgka zzgkaVar, zzgxf zzgxfVar, zzgxe zzgxeVar, Integer num) {
        this.zza = zzgkaVar;
        this.zzb = zzgxfVar;
        this.zzc = zzgxeVar;
        this.zzd = num;
    }

    public static zzgju zzc(zzgjz zzgjzVar, zzgxf zzgxfVar, Integer num) throws GeneralSecurityException {
        zzgxe zzb;
        zzgjz zzgjzVar2 = zzgjz.zzc;
        if (zzgjzVar != zzgjzVar2 && num == null) {
            String obj = zzgjzVar.toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzgjzVar == zzgjzVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgxfVar.zza() == 32) {
                zzgka zzc = zzgka.zzc(zzgjzVar);
                if (zzc.zzb() == zzgjzVar2) {
                    zzb = zzgnz.zza;
                } else if (zzc.zzb() == zzgjz.zzb) {
                    zzb = zzgnz.zza(num.intValue());
                } else if (zzc.zzb() == zzgjz.zza) {
                    zzb = zzgnz.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
                }
                return new zzgju(zzc, zzgxfVar, zzb, num);
            }
            int zza = zzgxfVar.zza();
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfz, com.google.android.gms.internal.ads.zzgez
    public final /* synthetic */ zzgfm zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final zzgxe zzb() {
        return this.zzc;
    }

    public final zzgka zzd() {
        return this.zza;
    }

    public final zzgxf zze() {
        return this.zzb;
    }

    public final Integer zzf() {
        return this.zzd;
    }
}
