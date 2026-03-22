package com.google.android.gms.internal.ads;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzalm {
    public final String zza;
    public final int zzb;
    @Nullable
    @ColorInt
    public final Integer zzc;
    @Nullable
    @ColorInt
    public final Integer zzd;
    public final float zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final int zzj;

    private zzalm(String str, int i10, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.zza = str;
        this.zzb = i10;
        this.zzc = num;
        this.zzd = num2;
        this.zze = f10;
        this.zzf = z10;
        this.zzg = z11;
        this.zzh = z12;
        this.zzi = z13;
        this.zzj = i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x010d, code lost:
        if (r4 != 3) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fb A[Catch: RuntimeException -> 0x0057, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0057, blocks: (B:6:0x003c, B:8:0x004b, B:12:0x005b, B:14:0x005f, B:16:0x006c, B:18:0x0070, B:20:0x007d, B:22:0x0081, B:23:0x0087, B:29:0x00a9, B:31:0x00ad, B:35:0x00bc, B:37:0x00c0, B:41:0x00cf, B:43:0x00d3, B:47:0x00e2, B:49:0x00e6, B:53:0x00f7, B:55:0x00fb, B:56:0x0101, B:63:0x011d, B:61:0x010f, B:27:0x008f), top: B:68:0x003c, inners: #1 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzalm zzb(java.lang.String r19, com.google.android.gms.internal.ads.zzalk r20) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalm.zzb(java.lang.String, com.google.android.gms.internal.ads.zzalk):com.google.android.gms.internal.ads.zzalm");
    }

    @Nullable
    @ColorInt
    public static Integer zzc(String str) {
        long parseLong;
        boolean z10;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= 4294967295L) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzdd.zzd(z10);
            int zzb = zzgbt.zzb(((parseLong >> 24) & 255) ^ 255);
            int zzb2 = zzgbt.zzb((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(zzb, zzgbt.zzb(parseLong & 255), zzgbt.zzb((parseLong >> 8) & 255), zzb2));
        } catch (IllegalArgumentException e10) {
            zzea.zzg("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        zzea.zzf("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
        return -1;
    }

    private static boolean zze(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e10) {
            zzea.zzg("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }
}
