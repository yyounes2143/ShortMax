package com.google.android.recaptcha.internal;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public class zzkg extends zzkh {
    final zzkd zza;
    final Character zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkg(zzkd zzkdVar, Character ch2) {
        this.zza = zzkdVar;
        if (ch2 != null && zzkdVar.zzd('=')) {
            throw new IllegalArgumentException(zzji.zza("Padding character %s was already in alphabet", ch2));
        }
        this.zzb = ch2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzkg) {
            zzkg zzkgVar = (zzkg) obj;
            if (this.zza.equals(zzkgVar.zza) && Objects.equals(this.zzb, zzkgVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch2 = this.zzb;
        return Objects.hashCode(ch2) ^ this.zza.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append(this.zza);
        if (8 % this.zza.zzb != 0) {
            if (this.zzb == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(this.zzb);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    @Override // com.google.android.recaptcha.internal.zzkh
    int zza(byte[] bArr, CharSequence charSequence) throws zzkf {
        zzkd zzkdVar;
        CharSequence zze = zze(charSequence);
        if (this.zza.zzc(zze.length())) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < zze.length()) {
                long j10 = 0;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    zzkdVar = this.zza;
                    if (i12 >= zzkdVar.zzc) {
                        break;
                    }
                    j10 <<= zzkdVar.zzb;
                    if (i10 + i12 < zze.length()) {
                        j10 |= this.zza.zzb(zze.charAt(i13 + i10));
                        i13++;
                    }
                    i12++;
                }
                int i14 = zzkdVar.zzd;
                int i15 = i13 * zzkdVar.zzb;
                int i16 = (i14 - 1) * 8;
                while (i16 >= (i14 * 8) - i15) {
                    bArr[i11] = (byte) ((j10 >>> i16) & 255);
                    i16 -= 8;
                    i11++;
                }
                i10 += this.zza.zzc;
            }
            return i11;
        }
        throw new zzkf("Invalid input length " + zze.length());
    }

    @Override // com.google.android.recaptcha.internal.zzkh
    void zzb(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzjf.zzd(0, i11, bArr.length);
        while (i12 < i11) {
            zzf(appendable, bArr, i12, Math.min(this.zza.zzd, i11 - i12));
            i12 += this.zza.zzd;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkh
    final int zzc(int i10) {
        return (int) (((this.zza.zzb * i10) + 7) / 8);
    }

    @Override // com.google.android.recaptcha.internal.zzkh
    final int zzd(int i10) {
        zzkd zzkdVar = this.zza;
        return zzkdVar.zzc * zzkj.zza(i10, zzkdVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.android.recaptcha.internal.zzkh
    final CharSequence zze(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzb == null) {
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
    public final void zzf(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        boolean z10;
        zzjf.zzd(i10, i10 + i11, bArr.length);
        int i12 = 0;
        if (i11 <= this.zza.zzd) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzjf.zza(z10);
        long j10 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            j10 = (j10 | (bArr[i10 + i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) << 8;
        }
        int i14 = (i11 + 1) * 8;
        zzkd zzkdVar = this.zza;
        while (i12 < i11 * 8) {
            long j11 = j10 >>> ((i14 - zzkdVar.zzb) - i12);
            zzkd zzkdVar2 = this.zza;
            appendable.append(zzkdVar2.zza(((int) j11) & zzkdVar2.zza));
            i12 += this.zza.zzb;
        }
        if (this.zzb != null) {
            while (i12 < this.zza.zzd * 8) {
                this.zzb.charValue();
                appendable.append('=');
                i12 += this.zza.zzb;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkg(String str, String str2, Character ch2) {
        this(new zzkd(str, str2.toCharArray()), ch2);
    }
}
