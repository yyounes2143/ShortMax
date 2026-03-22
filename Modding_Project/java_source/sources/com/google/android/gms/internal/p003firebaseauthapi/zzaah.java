package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.InvalidKeyException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaah  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaah {
    public static byte[] zza(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        if (bArr.length == 32) {
            long[] jArr = new long[11];
            byte[] copyOf = Arrays.copyOf(bArr, 32);
            copyOf[0] = (byte) (copyOf[0] & 248);
            byte b10 = (byte) (copyOf[31] & ByteCompanionObject.MAX_VALUE);
            copyOf[31] = b10;
            copyOf[31] = (byte) (b10 | 64);
            zzng.zza(jArr, copyOf, bArr2);
            return zznm.zzc(jArr);
        }
        throw new InvalidKeyException("Private key must have 32 bytes.");
    }

    public static byte[] zza() {
        byte[] zza = zzqd.zza(32);
        zza[0] = (byte) (zza[0] | 7);
        byte b10 = (byte) (zza[31] & 63);
        zza[31] = b10;
        zza[31] = (byte) (b10 | ByteCompanionObject.MIN_VALUE);
        return zza;
    }

    public static byte[] zza(byte[] bArr) throws InvalidKeyException {
        if (bArr.length == 32) {
            byte[] bArr2 = new byte[32];
            bArr2[0] = 9;
            return zza(bArr, bArr2);
        }
        throw new InvalidKeyException("Private key must have 32 bytes.");
    }
}
