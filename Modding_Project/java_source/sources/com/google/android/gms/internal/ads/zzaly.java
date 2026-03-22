package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaly implements zzakt {
    private final zzen zza = new zzen();
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final float zzf;
    private final int zzg;

    public zzaly(List list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.zzc = bArr[24];
            this.zzd = ((bArr[26] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[27] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[28] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[29] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.zze = true == "Serif".equals(zzex.zzC(bArr, 43, bArr.length + (-43))) ? C.SERIF_NAME : str;
            int i10 = bArr[25] * 20;
            this.zzg = i10;
            boolean z10 = (bArr[0] & 32) != 0;
            this.zzb = z10;
            if (z10) {
                this.zzf = Math.max(0.0f, Math.min(((bArr[11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8)) / i10, 0.95f));
                return;
            } else {
                this.zzf = 0.85f;
                return;
            }
        }
        this.zzc = 0;
        this.zzd = -1;
        this.zze = C.SANS_SERIF_NAME;
        this.zzb = false;
        this.zzf = 0.85f;
        this.zzg = -1;
    }

    private static void zzb(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    private static void zzc(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            int i15 = i14 | 33;
            int i16 = i10 & 1;
            int i17 = i10 & 2;
            boolean z10 = true;
            if (i16 != 0) {
                if (i17 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                    z10 = false;
                }
            } else {
                if (i17 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
                }
                z10 = false;
            }
            if ((i10 & 4) == 0) {
                if (i16 == 0 && !z10) {
                    spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
                    return;
                }
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        boolean z10;
        String zzB;
        int i12;
        int i13;
        boolean z11;
        boolean z12;
        boolean z13;
        int i14;
        int i15;
        zzen zzenVar = this.zza;
        zzenVar.zzJ(bArr, i10 + i11);
        zzenVar.zzL(i10);
        int i16 = 1;
        int i17 = 0;
        int i18 = 2;
        if (zzenVar.zza() >= 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        int zzq = zzenVar.zzq();
        if (zzq == 0) {
            zzB = "";
        } else {
            int zzc = zzenVar.zzc();
            Charset zzC = zzenVar.zzC();
            int zzc2 = zzenVar.zzc() - zzc;
            if (zzC == null) {
                zzC = StandardCharsets.UTF_8;
            }
            zzB = zzenVar.zzB(zzq - zzc2, zzC);
        }
        if (zzB.isEmpty()) {
            zzdnVar.zza(new zzakl(zzfyq.zzn(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(zzB);
        int i19 = this.zzc;
        zzc(spannableStringBuilder, i19, 0, 0, spannableStringBuilder.length(), 16711680);
        int i20 = this.zzd;
        zzb(spannableStringBuilder, i20, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.zze;
        int length = spannableStringBuilder.length();
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f10 = this.zzf;
        while (zzenVar.zza() >= 8) {
            int zzc3 = zzenVar.zzc();
            int zzg = zzenVar.zzg();
            int zzg2 = zzenVar.zzg();
            if (zzg2 == 1937013100) {
                if (zzenVar.zza() >= i18) {
                    z12 = i16;
                } else {
                    z12 = i17;
                }
                zzdd.zzd(z12);
                int zzq2 = zzenVar.zzq();
                int i21 = i17;
                while (i21 < zzq2) {
                    if (zzenVar.zza() >= 12) {
                        z13 = i16;
                    } else {
                        z13 = i17;
                    }
                    zzdd.zzd(z13);
                    int zzq3 = zzenVar.zzq();
                    int zzq4 = zzenVar.zzq();
                    zzenVar.zzM(i18);
                    int zzm = zzenVar.zzm();
                    zzenVar.zzM(i16);
                    int zzg3 = zzenVar.zzg();
                    if (zzq4 > spannableStringBuilder.length()) {
                        i14 = zzq2;
                        zzea.zzf("Tx3gParser", "Truncating styl end (" + zzq4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                        i15 = spannableStringBuilder.length();
                    } else {
                        i14 = zzq2;
                        i15 = zzq4;
                    }
                    if (zzq3 >= i15) {
                        zzea.zzf("Tx3gParser", "Ignoring styl with start (" + zzq3 + ") >= end (" + i15 + ").");
                    } else {
                        int i22 = i15;
                        zzc(spannableStringBuilder, zzm, i19, zzq3, i22, 0);
                        zzb(spannableStringBuilder, zzg3, i20, zzq3, i22, 0);
                    }
                    i21++;
                    zzq2 = i14;
                    i16 = 1;
                    i17 = 0;
                    i18 = 2;
                }
                i12 = i16;
                i13 = i18;
            } else {
                i12 = i16;
                if (zzg2 == 1952608120 && this.zzb) {
                    i13 = 2;
                    if (zzenVar.zza() >= 2) {
                        z11 = i12;
                    } else {
                        z11 = 0;
                    }
                    zzdd.zzd(z11);
                    int i23 = this.zzg;
                    String str2 = zzex.zza;
                    f10 = Math.max(0.0f, Math.min(zzenVar.zzq() / i23, 0.95f));
                } else {
                    i13 = 2;
                }
            }
            zzenVar.zzL(zzc3 + zzg);
            i16 = i12;
            i18 = i13;
            i17 = 0;
        }
        zzcs zzcsVar = new zzcs();
        zzcsVar.zzl(spannableStringBuilder);
        zzcsVar.zze(f10, 0);
        zzcsVar.zzf(0);
        zzdnVar.zza(new zzakl(zzfyq.zzo(zzcsVar.zzq()), -9223372036854775807L, -9223372036854775807L));
    }
}
