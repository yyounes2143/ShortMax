package com.google.android.recaptcha.internal;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.Serializable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzju extends zzjv implements Serializable {
    final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzju(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.recaptcha.internal.zzjv
    public final int zza() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        if (length >= 4) {
            int i10 = bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i11 = bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i12 = bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            return ((bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | i10 | (i11 << 8) | (i12 << 16);
        }
        throw new IllegalStateException(zzji.zza("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
    }

    @Override // com.google.android.recaptcha.internal.zzjv
    public final int zzb() {
        return this.zza.length * 8;
    }

    @Override // com.google.android.recaptcha.internal.zzjv
    final boolean zzc(zzjv zzjvVar) {
        boolean z10;
        if (this.zza.length != zzjvVar.zze().length) {
            return false;
        }
        boolean z11 = true;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.zza;
            if (i10 < bArr.length) {
                if (bArr[i10] == zzjvVar.zze()[i10]) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 &= z10;
                i10++;
            } else {
                return z11;
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzjv
    public final byte[] zzd() {
        return (byte[]) this.zza.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.recaptcha.internal.zzjv
    public final byte[] zze() {
        return this.zza;
    }
}
