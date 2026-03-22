package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgaz extends zzgbc {
    final char[] zza;

    private zzgaz(zzgay zzgayVar) {
        super(zzgayVar, null);
        char[] cArr;
        this.zza = new char[512];
        cArr = zzgayVar.zzf;
        zzfvp.zze(cArr.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            this.zza[i10] = zzgayVar.zza(i10 >>> 4);
            this.zza[i10 | 256] = zzgayVar.zza(i10 & 15);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbc, com.google.android.gms.internal.ads.zzgbd
    final int zza(byte[] bArr, CharSequence charSequence) throws zzgbb {
        if (charSequence.length() % 2 != 1) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < charSequence.length()) {
                zzgay zzgayVar = this.zzb;
                bArr[i11] = (byte) (zzgayVar.zzb(charSequence.charAt(i10 + 1)) | (zzgayVar.zzb(charSequence.charAt(i10)) << 4));
                i10 += 2;
                i11++;
            }
            return i11;
        }
        throw new zzgbb("Invalid input length " + charSequence.length());
    }

    @Override // com.google.android.gms.internal.ads.zzgbc
    final zzgbd zzb(zzgay zzgayVar, Character ch2) {
        return new zzgaz(zzgayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbc, com.google.android.gms.internal.ads.zzgbd
    final void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        zzfvp.zzk(0, i11, bArr.length);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            char[] cArr = this.zza;
            appendable.append(cArr[i13]);
            appendable.append(cArr[i13 | 256]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgaz(String str, String str2) {
        this(new zzgay("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
