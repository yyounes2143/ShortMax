package com.google.android.gms.internal.p003firebaseauthapi;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhy  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzhy extends zzhu {
    public zzhy(byte[] bArr, int i10) throws InvalidKeyException {
        super(bArr, i10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzhu
    final int zza() {
        return 24;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzhu
    public final /* bridge */ /* synthetic */ void zza(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        super.zza(byteBuffer, bArr, bArr2);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzhu
    public final /* bridge */ /* synthetic */ byte[] zza(byte[] bArr, ByteBuffer byteBuffer) throws GeneralSecurityException {
        return super.zza(bArr, byteBuffer);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzhu
    final int[] zza(int[] iArr, int i10) {
        if (iArr.length == 6) {
            int[] iArr2 = new int[16];
            zzhp.zza(iArr2, zzhp.zzb(this.zza, iArr));
            iArr2[12] = i10;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
