package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgxe {
    private final byte[] zza;

    private zzgxe(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i11);
    }

    public static zzgxe zzb(byte[] bArr) {
        if (bArr != null) {
            return zzc(bArr, 0, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public static zzgxe zzc(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            int length = bArr.length;
            if (i11 > length) {
                i11 = length;
            }
            return new zzgxe(bArr, 0, i11);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgxe)) {
            return false;
        }
        return Arrays.equals(((zzgxe) obj).zza, this.zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (byte b10 : bArr) {
            sb2.append("0123456789abcdef".charAt((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 4));
            sb2.append("0123456789abcdef".charAt(b10 & 15));
        }
        return "Bytes(" + sb2.toString() + ")";
    }

    public final int zza() {
        return this.zza.length;
    }

    public final byte[] zzd() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
