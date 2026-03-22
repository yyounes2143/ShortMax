package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgjo extends zzgfz {
    private final zzgjt zza;
    private final zzgxf zzb;
    private final zzgxe zzc;
    private final Integer zzd;

    private zzgjo(zzgjt zzgjtVar, zzgxf zzgxfVar, zzgxe zzgxeVar, Integer num) {
        this.zza = zzgjtVar;
        this.zzb = zzgxfVar;
        this.zzc = zzgxeVar;
        this.zzd = num;
    }

    public static zzgjo zzc(zzgjt zzgjtVar, zzgxf zzgxfVar, Integer num) throws GeneralSecurityException {
        zzgxe zzb;
        zzgjs zzc = zzgjtVar.zzc();
        zzgjs zzgjsVar = zzgjs.zzb;
        if (zzc != zzgjsVar && num == null) {
            String obj = zzgjtVar.zzc().toString();
            throw new GeneralSecurityException("For given Variant " + obj + " the value of idRequirement must be non-null");
        } else if (zzgjtVar.zzc() == zzgjsVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzgxfVar.zza() == 32) {
                if (zzgjtVar.zzc() == zzgjsVar) {
                    zzb = zzgnz.zza;
                } else if (zzgjtVar.zzc() == zzgjs.zza) {
                    zzb = zzgnz.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzgjtVar.zzc().toString()));
                }
                return new zzgjo(zzgjtVar, zzgxfVar, zzb, num);
            }
            int zza = zzgxfVar.zza();
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + zza);
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

    public final zzgjt zzd() {
        return this.zza;
    }

    public final zzgxf zze() {
        return this.zzb;
    }

    public final Integer zzf() {
        return this.zzd;
    }
}
