package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzge;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzgb  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzgb extends zzcw {
    private final zzge zza;
    private final zzaal zzb;
    private final zzaaj zzc;
    private final Integer zzd;

    private zzgb(zzge zzgeVar, zzaal zzaalVar, zzaaj zzaajVar, Integer num) {
        this.zza = zzgeVar;
        this.zzb = zzaalVar;
        this.zzc = zzaajVar;
        this.zzd = num;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzge) zza();
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

    public static zzgb zza(zzge.zza zzaVar, zzaal zzaalVar, Integer num) throws GeneralSecurityException {
        zzaaj zzb;
        zzge.zza zzaVar2 = zzge.zza.zzc;
        if (zzaVar != zzaVar2 && num == null) {
            String valueOf = String.valueOf(zzaVar);
            throw new GeneralSecurityException("For given Variant " + valueOf + " the value of idRequirement must be non-null");
        } else if (zzaVar == zzaVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzaalVar.zza() == 32) {
                zzge zza = zzge.zza(zzaVar);
                if (zza.zzb() == zzaVar2) {
                    zzb = zzpe.zza;
                } else if (zza.zzb() == zzge.zza.zzb) {
                    zzb = zzpe.zza(num.intValue());
                } else if (zza.zzb() == zzge.zza.zza) {
                    zzb = zzpe.zzb(num.intValue());
                } else {
                    String valueOf2 = String.valueOf(zza.zzb());
                    throw new IllegalStateException("Unknown Variant: " + valueOf2);
                }
                return new zzgb(zza, zzaalVar, zzb, num);
            }
            int zza2 = zzaalVar.zza();
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza2);
        }
    }
}
