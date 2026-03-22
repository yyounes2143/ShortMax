package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaac  reason: invalid package */
/* loaded from: classes4.dex */
final class zzaac implements zzsq {
    private final zzsq zza;
    private final zzsq zzb;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzsq
    public final byte[] zza(byte[] bArr, int i10) throws GeneralSecurityException {
        if (bArr.length <= 64) {
            return this.zza.zza(bArr, i10);
        }
        return this.zzb.zza(bArr, i10);
    }

    private zzaac(zzsq zzsqVar, zzsq zzsqVar2) {
        this.zza = zzsqVar;
        this.zzb = zzsqVar2;
    }
}
