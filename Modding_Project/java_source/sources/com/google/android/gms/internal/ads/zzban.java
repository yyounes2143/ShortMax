package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzban extends zzbae {
    private MessageDigest zzb;
    private final int zzc;
    private final int zzd;

    public zzban(int i10) {
        int i11 = i10 >> 3;
        this.zzc = (i10 & 7) > 0 ? i11 + 1 : i11;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzbae
    public final byte[] zzb(String str) {
        synchronized (this.zza) {
            try {
                MessageDigest zza = zza();
                this.zzb = zza;
                if (zza == null) {
                    return new byte[0];
                }
                zza.reset();
                this.zzb.update(str.getBytes(Charset.forName("UTF-8")));
                byte[] digest = this.zzb.digest();
                int length = digest.length;
                int i10 = this.zzc;
                if (length > i10) {
                    length = i10;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(digest, 0, bArr, 0, length);
                int i11 = this.zzd & 7;
                if (i11 > 0) {
                    long j10 = 0;
                    for (int i12 = 0; i12 < length; i12++) {
                        if (i12 > 0) {
                            j10 <<= 8;
                        }
                        j10 += bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                    }
                    long j11 = j10 >>> (8 - i11);
                    while (true) {
                        i10--;
                        if (i10 < 0) {
                            break;
                        }
                        bArr[i10] = (byte) (255 & j11);
                        j11 >>>= 8;
                    }
                }
                return bArr;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
