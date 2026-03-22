package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzll  reason: invalid package */
/* loaded from: classes4.dex */
final class zzll implements zzly {
    private final int zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzll(int i10) throws InvalidAlgorithmParameterException {
        if (i10 != 16 && i10 != 32) {
            throw new InvalidAlgorithmParameterException("Unsupported key length: " + i10);
        }
        this.zza = i10;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzly
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzly
    public final int zzb() {
        return 12;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzly
    public final byte[] zzc() throws GeneralSecurityException {
        int i10 = this.zza;
        if (i10 != 16) {
            if (i10 == 32) {
                return zzmk.zzj;
            }
            throw new GeneralSecurityException("Could not determine HPKE AEAD ID");
        }
        return zzmk.zzi;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzly
    public final byte[] zza(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4) throws GeneralSecurityException {
        if (bArr.length == this.zza) {
            return new zzhs(bArr).zza(bArr2, bArr3, i10, bArr4);
        }
        int length = bArr.length;
        throw new InvalidAlgorithmParameterException("Unexpected key length: " + length);
    }
}
