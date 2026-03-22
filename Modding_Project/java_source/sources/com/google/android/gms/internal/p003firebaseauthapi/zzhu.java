package com.google.android.gms.internal.p003firebaseauthapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhu  reason: invalid package */
/* loaded from: classes4.dex */
abstract class zzhu {
    int[] zza;
    private final int zzb;

    public zzhu(byte[] bArr, int i10) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.zza = zzhp.zza(bArr);
            this.zzb = i10;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    abstract int zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer zza(byte[] bArr, int i10) {
        int[] zza = zza(zzhp.zza(bArr), i10);
        int[] iArr = (int[]) zza.clone();
        zzhp.zza(iArr);
        for (int i11 = 0; i11 < zza.length; i11++) {
            zza[i11] = zza[i11] + iArr[i11];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zza, 0, 16);
        return order;
    }

    abstract int[] zza(int[] iArr, int i10);

    public void zza(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (byteBuffer.remaining() >= bArr2.length) {
            zza(bArr, byteBuffer, ByteBuffer.wrap(bArr2));
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    private final void zza(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
        if (bArr.length == zza()) {
            int remaining = byteBuffer2.remaining();
            int i10 = remaining / 64;
            int i11 = i10 + 1;
            for (int i12 = 0; i12 < i11; i12++) {
                ByteBuffer zza = zza(bArr, this.zzb + i12);
                if (i12 == i10) {
                    zzyz.zza(byteBuffer, byteBuffer2, zza, remaining % 64);
                } else {
                    zzyz.zza(byteBuffer, byteBuffer2, zza, 64);
                }
            }
            return;
        }
        int zza2 = zza();
        throw new GeneralSecurityException("The nonce length (in bytes) must be " + zza2);
    }

    public byte[] zza(byte[] bArr, ByteBuffer byteBuffer) throws GeneralSecurityException {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        zza(bArr, allocate, byteBuffer);
        return allocate.array();
    }
}
