package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzfz;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzfw extends zzcw {
    private final zzfz zza;
    private final zzaal zzb;
    private final zzaaj zzc;
    private final Integer zzd;

    private zzfw(zzfz zzfzVar, zzaal zzaalVar, zzaaj zzaajVar, Integer num) {
        this.zza = zzfzVar;
        this.zzb = zzaalVar;
        this.zzc = zzaajVar;
        this.zzd = num;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzfz) zza();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final Integer zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final /* synthetic */ zzcy zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final zzaaj zzd() {
        return this.zzc;
    }

    public final zzaal zze() {
        return this.zzb;
    }

    public static zzfw zza(zzfz zzfzVar, zzaal zzaalVar, Integer num) throws GeneralSecurityException {
        zzaaj zzb;
        zzfz.zza zzc = zzfzVar.zzc();
        zzfz.zza zzaVar = zzfz.zza.zzb;
        if (zzc != zzaVar && num == null) {
            String valueOf = String.valueOf(zzfzVar.zzc());
            throw new GeneralSecurityException("For given Variant " + valueOf + " the value of idRequirement must be non-null");
        } else if (zzfzVar.zzc() == zzaVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzaalVar.zza() == 32) {
                if (zzfzVar.zzc() == zzaVar) {
                    zzb = zzpe.zza;
                } else if (zzfzVar.zzc() == zzfz.zza.zza) {
                    zzb = zzpe.zzb(num.intValue());
                } else {
                    String valueOf2 = String.valueOf(zzfzVar.zzc());
                    throw new IllegalStateException("Unknown Variant: " + valueOf2);
                }
                return new zzfw(zzfzVar, zzaalVar, zzb, num);
            }
            int zza = zzaalVar.zza();
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + zza);
        }
    }
}
