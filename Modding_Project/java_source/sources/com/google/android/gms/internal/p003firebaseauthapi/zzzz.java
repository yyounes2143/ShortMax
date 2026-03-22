package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzz implements zzsq {
    public static zzsq zza(zzso zzsoVar) throws GeneralSecurityException {
        zzsq zza = zzsv.zza(zzsoVar);
        try {
            return new zzaac(zza, zzsx.zza(zzsoVar));
        } catch (GeneralSecurityException unused) {
            return zza;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzsq
    public final byte[] zza(byte[] bArr, int i10) throws GeneralSecurityException {
        throw new NoSuchMethodError();
    }
}
