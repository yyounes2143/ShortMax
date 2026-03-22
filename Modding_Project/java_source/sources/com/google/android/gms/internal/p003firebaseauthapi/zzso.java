package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzso  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzso extends zzst {
    private final zzsr zza;
    private final zzaal zzb;

    private zzso(zzsr zzsrVar, zzaal zzaalVar) {
        this.zza = zzsrVar;
        this.zzb = zzaalVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzst, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzsr) zza();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final Integer zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzst
    public final /* synthetic */ zzss zzc() {
        return this.zza;
    }

    public final zzaal zzd() {
        return this.zzb;
    }

    public static zzso zza(zzsr zzsrVar, zzaal zzaalVar) throws GeneralSecurityException {
        if (zzsrVar.zzb() == zzaalVar.zza()) {
            return new zzso(zzsrVar, zzaalVar);
        }
        throw new GeneralSecurityException("Key size mismatch");
    }
}
