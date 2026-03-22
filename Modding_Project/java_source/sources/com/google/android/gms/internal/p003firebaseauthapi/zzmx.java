package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzmx  reason: invalid package */
/* loaded from: classes4.dex */
final class zzmx implements zzmt {
    private zzmx() {
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmt
    public final zzms zza() throws GeneralSecurityException {
        byte[] zza = zzaah.zza();
        return new zzms(zza, zzaah.zza(zza));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmt
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzaah.zza(bArr, bArr2);
    }
}
