package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzem;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzej  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzej extends zzcw {
    private final zzem zza;
    private final zzaal zzb;
    private final zzaaj zzc;
    private final Integer zzd;

    private zzej(zzem zzemVar, zzaal zzaalVar, zzaaj zzaajVar, Integer num) {
        this.zza = zzemVar;
        this.zzb = zzaalVar;
        this.zzc = zzaajVar;
        this.zzd = num;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzem) zza();
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

    public static zzej zza(zzem.zza zzaVar, zzaal zzaalVar, Integer num) throws GeneralSecurityException {
        zzaaj zzb;
        zzem.zza zzaVar2 = zzem.zza.zzc;
        if (zzaVar != zzaVar2 && num == null) {
            String valueOf = String.valueOf(zzaVar);
            throw new GeneralSecurityException("For given Variant " + valueOf + " the value of idRequirement must be non-null");
        } else if (zzaVar == zzaVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        } else {
            if (zzaalVar.zza() == 32) {
                zzem zza = zzem.zza(zzaVar);
                if (zza.zzb() == zzaVar2) {
                    zzb = zzpe.zza;
                } else if (zza.zzb() == zzem.zza.zzb) {
                    zzb = zzpe.zza(num.intValue());
                } else if (zza.zzb() == zzem.zza.zza) {
                    zzb = zzpe.zzb(num.intValue());
                } else {
                    String valueOf2 = String.valueOf(zza.zzb());
                    throw new IllegalStateException("Unknown Variant: " + valueOf2);
                }
                return new zzej(zza, zzaalVar, zzb, num);
            }
            int zza2 = zzaalVar.zza();
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zza2);
        }
    }
}
