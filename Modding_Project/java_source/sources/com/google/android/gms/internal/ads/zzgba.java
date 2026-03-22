package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgba extends zzgbc {
    private zzgba(zzgay zzgayVar, Character ch2) {
        super(zzgayVar, ch2);
        char[] cArr;
        cArr = zzgayVar.zzf;
        zzfvp.zze(cArr.length == 64);
    }

    @Override // com.google.android.gms.internal.ads.zzgbc, com.google.android.gms.internal.ads.zzgbd
    final int zza(byte[] bArr, CharSequence charSequence) throws zzgbb {
        CharSequence zzg = zzg(charSequence);
        int length = zzg.length();
        zzgay zzgayVar = this.zzb;
        if (zzgayVar.zzd(length)) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < zzg.length()) {
                int i12 = i11 + 1;
                int zzb = (zzgayVar.zzb(zzg.charAt(i10 + 1)) << 12) | (zzgayVar.zzb(zzg.charAt(i10)) << 18);
                bArr[i11] = (byte) (zzb >>> 16);
                int i13 = i10 + 2;
                if (i13 < zzg.length()) {
                    int i14 = i10 + 3;
                    int zzb2 = zzb | (zzgayVar.zzb(zzg.charAt(i13)) << 6);
                    int i15 = i11 + 2;
                    bArr[i12] = (byte) ((zzb2 >>> 8) & 255);
                    if (i14 < zzg.length()) {
                        i10 += 4;
                        i11 += 3;
                        bArr[i15] = (byte) ((zzb2 | zzgayVar.zzb(zzg.charAt(i14))) & 255);
                    } else {
                        i11 = i15;
                        i10 = i14;
                    }
                } else {
                    i10 = i13;
                    i11 = i12;
                }
            }
            return i11;
        }
        throw new zzgbb("Invalid input length " + zzg.length());
    }

    @Override // com.google.android.gms.internal.ads.zzgbc
    final zzgbd zzb(zzgay zzgayVar, Character ch2) {
        return new zzgba(zzgayVar, ch2);
    }

    @Override // com.google.android.gms.internal.ads.zzgbc, com.google.android.gms.internal.ads.zzgbd
    final void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzfvp.zzk(0, i11, bArr.length);
        for (int i13 = i11; i13 >= 3; i13 -= 3) {
            int i14 = bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i15 = bArr[i12 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i16 = bArr[i12 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            zzgay zzgayVar = this.zzb;
            int i17 = (i15 << 8) | (i14 << 16) | i16;
            appendable.append(zzgayVar.zza(i17 >>> 18));
            appendable.append(zzgayVar.zza((i17 >>> 12) & 63));
            appendable.append(zzgayVar.zza((i17 >>> 6) & 63));
            appendable.append(zzgayVar.zza(i17 & 63));
            i12 += 3;
        }
        if (i12 < i11) {
            zzh(appendable, bArr, i12, i11 - i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgba(String str, String str2, Character ch2) {
        this(new zzgay(str, str2.toCharArray()), ch2);
    }
}
