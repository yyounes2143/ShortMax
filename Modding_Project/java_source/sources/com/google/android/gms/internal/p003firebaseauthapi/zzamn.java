package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzamn  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzamn {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzamm zzammVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zza(zzammVar, sb2, 0);
        return sb2.toString();
    }

    private static void zza(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            char[] cArr = zza;
            int length = i10 > cArr.length ? cArr.length : i10;
            sb2.append(cArr, 0, length);
            i10 -= length;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zza(sb2, i10, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zza(sb2, i10, str, entry);
            }
        } else {
            sb2.append('\n');
            zza(i10, sb2);
            if (!str.isEmpty()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Character.toLowerCase(str.charAt(0)));
                for (int i11 = 1; i11 < str.length(); i11++) {
                    char charAt = str.charAt(i11);
                    if (Character.isUpperCase(charAt)) {
                        sb3.append("_");
                    }
                    sb3.append(Character.toLowerCase(charAt));
                }
                str = sb3.toString();
            }
            sb2.append(str);
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(zzann.zza(zzajv.zza((String) obj)));
                sb2.append('\"');
            } else if (obj instanceof zzajv) {
                sb2.append(": \"");
                sb2.append(zzann.zza((zzajv) obj));
                sb2.append('\"');
            } else if (obj instanceof zzalf) {
                sb2.append(" {");
                zza((zzalf) obj, sb2, i10 + 2);
                sb2.append("\n");
                zza(i10, sb2);
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i12 = i10 + 2;
                zza(sb2, i12, "key", entry2.getKey());
                zza(sb2, i12, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb2.append("\n");
                zza(i10, sb2);
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0164, code lost:
        if (r5.containsKey("get" + r9.substring(0, r9.length() - 5)) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0194, code lost:
        if (((java.lang.Boolean) r7).booleanValue() == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0196, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a7, code lost:
        if (((java.lang.Integer) r7).intValue() == 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b9, code lost:
        if (java.lang.Float.floatToRawIntBits(((java.lang.Float) r7).floatValue()) == 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
        if (java.lang.Double.doubleToRawLongBits(((java.lang.Double) r7).doubleValue()) == 0) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.p003firebaseauthapi.zzamm r20, java.lang.StringBuilder r21, int r22) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamn.zza(com.google.android.gms.internal.firebase-auth-api.zzamm, java.lang.StringBuilder, int):void");
    }
}
