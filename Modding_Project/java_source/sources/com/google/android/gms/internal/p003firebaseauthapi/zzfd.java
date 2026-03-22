package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzfc;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfd  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzfd extends zzcw {
    private final zzfc zza;
    private final zzaaj zzb;
    private final Integer zzc;

    private zzfd(zzfc zzfcVar, zzaaj zzaajVar, Integer num) {
        this.zza = zzfcVar;
        this.zzb = zzaajVar;
        this.zzc = num;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzfc) zza();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final Integer zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final /* synthetic */ zzcy zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final zzaaj zzd() {
        return this.zzb;
    }

    public static zzfd zza(zzfc zzfcVar, Integer num) throws GeneralSecurityException {
        zzaaj zzb;
        if (zzfcVar.zzc() == zzfc.zzc.zzb) {
            if (num == null) {
                zzb = zzpe.zza;
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else if (zzfcVar.zzc() != zzfc.zzc.zza) {
            String valueOf = String.valueOf(zzfcVar.zzc());
            throw new GeneralSecurityException("Unknown Variant: " + valueOf);
        } else if (num != null) {
            zzb = zzpe.zzb(num.intValue());
        } else {
            throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
        }
        return new zzfd(zzfcVar, zzb, num);
    }
}
