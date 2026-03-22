package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzgbc extends zzgbd {
    private volatile zzgbd zza;
    final zzgay zzb;
    final Character zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgbc(zzgay zzgayVar, Character ch2) {
        this.zzb = zzgayVar;
        boolean z10 = true;
        if (ch2 != null && zzgayVar.zze('=')) {
            z10 = false;
        }
        zzfvp.zzi(z10, "Padding character %s was already in alphabet", ch2);
        this.zzc = ch2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgbc) {
            zzgbc zzgbcVar = (zzgbc) obj;
            if (this.zzb.equals(zzgbcVar.zzb) && Objects.equals(this.zzc, zzgbcVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch2 = this.zzc;
        return Objects.hashCode(ch2) ^ this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        zzgay zzgayVar = this.zzb;
        sb2.append(zzgayVar);
        if (8 % zzgayVar.zzb != 0) {
            Character ch2 = this.zzc;
            if (ch2 == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(ch2);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    int zza(byte[] bArr, CharSequence charSequence) throws zzgbb {
        int i10;
        CharSequence zzg = zzg(charSequence);
        int length = zzg.length();
        zzgay zzgayVar = this.zzb;
        if (zzgayVar.zzd(length)) {
            int i11 = 0;
            int i12 = 0;
            while (i11 < zzg.length()) {
                long j10 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    i10 = zzgayVar.zzc;
                    if (i13 >= i10) {
                        break;
                    }
                    j10 <<= zzgayVar.zzb;
                    if (i11 + i13 < zzg.length()) {
                        j10 |= zzgayVar.zzb(zzg.charAt(i14 + i11));
                        i14++;
                    }
                    i13++;
                }
                int i15 = zzgayVar.zzd;
                int i16 = i14 * zzgayVar.zzb;
                int i17 = (i15 - 1) * 8;
                while (i17 >= (i15 * 8) - i16) {
                    bArr[i12] = (byte) ((j10 >>> i17) & 255);
                    i17 -= 8;
                    i12++;
                }
                i11 += i10;
            }
            return i12;
        }
        throw new zzgbb("Invalid input length " + zzg.length());
    }

    zzgbd zzb(zzgay zzgayVar, Character ch2) {
        return new zzgbc(zzgayVar, ch2);
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzfvp.zzk(0, i11, bArr.length);
        while (i12 < i11) {
            int i13 = this.zzb.zzd;
            zzh(appendable, bArr, i12, Math.min(i13, i11 - i12));
            i12 += i13;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    final int zzd(int i10) {
        return (int) (((this.zzb.zzb * i10) + 7) / 8);
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    final int zze(int i10) {
        zzgay zzgayVar = this.zzb;
        return zzgayVar.zzc * zzgbm.zzb(i10, zzgayVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    public final zzgbd zzf() {
        zzgbd zzgbdVar = this.zza;
        if (zzgbdVar == null) {
            zzgay zzgayVar = this.zzb;
            zzgay zzc = zzgayVar.zzc();
            if (zzc == zzgayVar) {
                zzgbdVar = this;
            } else {
                zzgbdVar = zzb(zzc, this.zzc);
            }
            this.zza = zzgbdVar;
        }
        return zzgbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbd
    final CharSequence zzg(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzc == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        boolean z10;
        zzfvp.zzk(i10, i10 + i11, bArr.length);
        zzgay zzgayVar = this.zzb;
        int i12 = zzgayVar.zzd;
        int i13 = 0;
        if (i11 <= i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zze(z10);
        long j10 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            j10 = (j10 | (bArr[i10 + i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) << 8;
        }
        int i15 = (i11 + 1) * 8;
        int i16 = zzgayVar.zzb;
        while (i13 < i11 * 8) {
            appendable.append(zzgayVar.zza(zzgayVar.zza & ((int) (j10 >>> ((i15 - i16) - i13)))));
            i13 += i16;
        }
        if (this.zzc != null) {
            while (i13 < i12 * 8) {
                appendable.append('=');
                i13 += i16;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgbc(String str, String str2, Character ch2) {
        this(new zzgay(str, str2.toCharArray()), ch2);
    }
}
