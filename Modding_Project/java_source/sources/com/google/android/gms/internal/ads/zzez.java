package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzez {
    public final String zza;

    private zzez(int i10, int i11, String str) {
        this.zza = str;
    }

    @Nullable
    public static zzez zza(zzen zzenVar) {
        String str;
        String str2;
        zzenVar.zzM(2);
        int zzm = zzenVar.zzm();
        int i10 = zzm >> 1;
        int i11 = zzm & 1;
        int zzm2 = zzenVar.zzm() >> 3;
        if (i10 != 4 && i10 != 5 && i10 != 7 && i10 != 8) {
            if (i10 == 9) {
                str = "dvav";
            } else if (i10 == 10) {
                str = "dav1";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        int i12 = zzm2 | (i11 << 5);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str3 = ".";
        if (i10 >= 10) {
            str2 = ".";
        } else {
            str2 = ".0";
        }
        sb2.append(str2);
        sb2.append(i10);
        if (i12 < 10) {
            str3 = ".0";
        }
        sb2.append(str3);
        sb2.append(i12);
        return new zzez(i10, i12, sb2.toString());
    }
}
