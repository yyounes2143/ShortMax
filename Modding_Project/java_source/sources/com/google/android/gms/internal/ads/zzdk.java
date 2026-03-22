package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import androidx.exifinterface.media.ExifInterface;
import java.util.Locale;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SuppressLint({"InlinedApi"})
/* loaded from: classes4.dex */
public final class zzdk {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 1};
    private static final String[] zzc = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};
    private static final Pattern zzd = Pattern.compile("^\\D?(\\d+)$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010c  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair zza(com.google.android.gms.internal.ads.zzz r19) {
        /*
            Method dump skipped, instructions count: 1928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdk.zza(com.google.android.gms.internal.ads.zzz):android.util.Pair");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00be, code lost:
        if (r11.equals("L123") != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0260  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair zzb(java.lang.String r10, java.lang.String[] r11, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzk r12) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdk.zzb(java.lang.String, java.lang.String[], com.google.android.gms.internal.ads.zzk):android.util.Pair");
    }

    public static String zzc(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static String zzd(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        char c10;
        int i14;
        String str = zzc[i10];
        Integer valueOf = Integer.valueOf(i11);
        Integer valueOf2 = Integer.valueOf(i12);
        if (true != z10) {
            c10 = 'L';
        } else {
            c10 = 'H';
        }
        Object[] objArr = {str, valueOf, valueOf2, Character.valueOf(c10), Integer.valueOf(i13)};
        String str2 = zzex.zza;
        StringBuilder sb2 = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int i15 = 6;
        while (true) {
            if (i15 <= 0) {
                break;
            }
            int i16 = i15 - 1;
            if (iArr[i16] != 0) {
                break;
            }
            i15 = i16;
        }
        for (i14 = 0; i14 < i15; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static byte[] zze(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11 + 4];
        System.arraycopy(zzb, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i10, bArr2, 4, i11);
        return bArr2;
    }
}
