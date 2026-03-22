package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzglk extends zzglh {
    public zzglk(byte[] bArr, int i10) throws InvalidKeyException {
        super(bArr, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    final int zza() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    final int[] zzb(int[] iArr, int i10) {
        int length = iArr.length;
        if (length == 6) {
            int[] iArr2 = new int[16];
            zzglf.zzb(iArr2, zzglf.zzd(this.zza, iArr));
            iArr2[12] = i10;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }
}
