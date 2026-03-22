package com.google.android.recaptcha.internal;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public abstract class zzjv {
    private static final char[] zza = "0123456789abcdef".toCharArray();
    public static final /* synthetic */ int zzb = 0;

    public final boolean equals(Object obj) {
        if (obj instanceof zzjv) {
            zzjv zzjvVar = (zzjv) obj;
            if (zzb() == zzjvVar.zzb() && zzc(zzjvVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (zzb() >= 32) {
            return zza();
        }
        byte[] zze = zze();
        int i10 = zze[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        for (int i11 = 1; i11 < zze.length; i11++) {
            i10 |= (zze[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << (i11 * 8);
        }
        return i10;
    }

    public final String toString() {
        byte[] zze = zze();
        int length = zze.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (byte b10 : zze) {
            char[] cArr = zza;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }

    public abstract int zza();

    public abstract int zzb();

    abstract boolean zzc(zzjv zzjvVar);

    public abstract byte[] zzd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zze() {
        throw null;
    }
}
