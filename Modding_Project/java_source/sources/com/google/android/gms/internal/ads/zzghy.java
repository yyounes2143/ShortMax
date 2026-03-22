package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzghy extends zzgfz {
    private final zzgid zza;
    private final zzgxf zzb;
    private final zzgxe zzc;
    private final Integer zzd;

    private zzghy(zzgid zzgidVar, zzgxf zzgxfVar, zzgxe zzgxeVar, Integer num) {
        this.zza = zzgidVar;
        this.zzb = zzgxfVar;
        this.zzc = zzgxeVar;
        this.zzd = num;
    }

    public static zzghy zzc(zzgic zzgicVar, zzgxf zzgxfVar, Integer num) throws GeneralSecurityException {
        zzgxe zzb;
        zzgic zzgicVar2 = zzgic.zzc;
        if (zzgicVar != zzgicVar2 && num == null) {
            String obj = zzgicVar.toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzgicVar == zzgicVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgxfVar.zza() == 32) {
                zzgid zzc = zzgid.zzc(zzgicVar);
                if (zzc.zzb() == zzgicVar2) {
                    zzb = zzgnz.zza;
                } else if (zzc.zzb() == zzgic.zzb) {
                    zzb = zzgnz.zza(num.intValue());
                } else if (zzc.zzb() == zzgic.zza) {
                    zzb = zzgnz.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
                }
                return new zzghy(zzc, zzgxfVar, zzb, num);
            }
            int zza = zzgxfVar.zza();
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza);
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

    public final zzgid zzd() {
        return this.zza;
    }

    public final zzgxf zze() {
        return this.zzb;
    }

    public final Integer zzf() {
        return this.zzd;
    }
}
