package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzod {
    private final Map zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzod(Map map) {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        hashMap.putAll(map);
    }

    private final Bundle zzf() {
        int zzg;
        String str;
        String str2;
        Map map = this.zza;
        if ("1".equals(map.get("GoogleConsent")) && (zzg = zzg()) >= 0) {
            String str3 = (String) map.get("PurposeConsents");
            if (!TextUtils.isEmpty(str3)) {
                Bundle bundle = new Bundle();
                String str4 = "denied";
                if (str3.length() > 0) {
                    String str5 = zzjk.AD_STORAGE.zze;
                    if (str3.charAt(0) != '1') {
                        str2 = "denied";
                    } else {
                        str2 = "granted";
                    }
                    bundle.putString(str5, str2);
                }
                if (str3.length() > 3) {
                    String str6 = zzjk.AD_PERSONALIZATION.zze;
                    if (str3.charAt(2) != '1' || str3.charAt(3) != '1') {
                        str = "denied";
                    } else {
                        str = "granted";
                    }
                    bundle.putString(str6, str);
                }
                if (str3.length() > 6 && zzg >= 4) {
                    String str7 = zzjk.AD_USER_DATA.zze;
                    if (str3.charAt(0) == '1' && str3.charAt(6) == '1') {
                        str4 = "granted";
                    }
                    bundle.putString(str7, str4);
                }
                return bundle;
            }
        }
        return Bundle.EMPTY;
    }

    private final int zzg() {
        try {
            String str = (String) this.zza.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzod)) {
            return false;
        }
        return zza().equalsIgnoreCase(((zzod) obj).zza());
    }

    public final int hashCode() {
        return zza().hashCode();
    }

    public final String toString() {
        return zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zza() {
        StringBuilder sb2 = new StringBuilder();
        ImmutableList immutableList = zzof.zza;
        int size = immutableList.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = (String) immutableList.get(i10);
            Map map = this.zza;
            if (map.containsKey(str)) {
                if (sb2.length() > 0) {
                    sb2.append(";");
                }
                sb2.append(str);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append((String) map.get(str));
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        if (((java.lang.Boolean) r0.zzb(null)).booleanValue() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
        r0 = r9.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
        if (r0.get("Version") != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
        return zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (zzg() >= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
        r1 = new android.os.Bundle();
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_STORAGE.zze;
        r6 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
        if (true == java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1")) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008b, code lost:
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
        r4 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008e, code lost:
        r1.putString(r2, r4);
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_PERSONALIZATION.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009f, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose3"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ab, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose4"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ad, code lost:
        r4 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b0, code lost:
        r1.putString(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b8, code lost:
        if (zzg() < 4) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ba, code lost:
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose7"), "1") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d5, code lost:
        r6 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d6, code lost:
        r1.putString(r2, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d9, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
        return zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzb() {
        /*
            r9 = this;
            com.google.android.gms.measurement.internal.zzfx r0 = com.google.android.gms.measurement.internal.zzfy.zzaZ
            r1 = 0
            java.lang.Object r2 = r0.zzb(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            java.lang.String r3 = "EnableAdvertiserConsentMode"
            java.lang.String r4 = "gdprApplies"
            java.lang.String r5 = "1"
            if (r2 == 0) goto L2c
            java.util.Map r2 = r9.zza
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Ldf
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Ldf
            goto L4e
        L2c:
            java.util.Map r2 = r9.zza
            java.lang.String r6 = "GoogleConsent"
            java.lang.Object r6 = r2.get(r6)
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto Ldf
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Ldf
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Ldf
        L4e:
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lda
            java.util.Map r0 = r9.zza
            java.lang.String r1 = "Version"
            java.lang.Object r1 = r0.get(r1)
            if (r1 != 0) goto L69
            android.os.Bundle r0 = r9.zzf()
            return r0
        L69:
            int r1 = r9.zzg()
            if (r1 >= 0) goto L71
            goto Ldf
        L71:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_STORAGE
            java.lang.String r2 = r2.zze
            java.lang.String r3 = "AuthorizePurpose1"
            java.lang.Object r4 = r0.get(r3)
            boolean r4 = java.util.Objects.equals(r4, r5)
            java.lang.String r6 = "granted"
            java.lang.String r7 = "denied"
            r8 = 1
            if (r8 == r4) goto L8d
            r4 = r7
            goto L8e
        L8d:
            r4 = r6
        L8e:
            r1.putString(r2, r4)
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_PERSONALIZATION
            java.lang.String r2 = r2.zze
            java.lang.String r4 = "AuthorizePurpose3"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            java.lang.String r4 = "AuthorizePurpose4"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            r4 = r6
            goto Lb0
        Laf:
            r4 = r7
        Lb0:
            r1.putString(r2, r4)
            int r2 = r9.zzg()
            r4 = 4
            if (r2 < r4) goto Ld9
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            java.lang.String r2 = r2.zze
            java.lang.Object r3 = r0.get(r3)
            boolean r3 = java.util.Objects.equals(r3, r5)
            if (r3 == 0) goto Ld5
            java.lang.String r3 = "AuthorizePurpose7"
            java.lang.Object r0 = r0.get(r3)
            boolean r0 = java.util.Objects.equals(r0, r5)
            if (r0 == 0) goto Ld5
            goto Ld6
        Ld5:
            r6 = r7
        Ld6:
            r1.putString(r2, r6)
        Ld9:
            return r1
        Lda:
            android.os.Bundle r0 = r9.zzf()
            return r0
        Ldf:
            android.os.Bundle r0 = android.os.Bundle.EMPTY
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzod.zzb():android.os.Bundle");
    }

    public final String zzc() {
        String str = (String) this.zza.get("PurposeDiagnostics");
        if (TextUtils.isEmpty(str)) {
            return "200000";
        }
        return str;
    }

    public final String zzd(zzod zzodVar) {
        String str;
        Map map = zzodVar.zza;
        boolean isEmpty = map.isEmpty();
        String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (!isEmpty && ((String) map.get("Version")) == null) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        Bundle zzb = zzb();
        Bundle zzb2 = zzodVar.zzb();
        return str.concat((zzb.size() == zzb2.size() && Objects.equals(zzb.getString("ad_storage"), zzb2.getString("ad_storage")) && Objects.equals(zzb.getString("ad_personalization"), zzb2.getString("ad_personalization")) && Objects.equals(zzb.getString("ad_user_data"), zzb2.getString("ad_user_data"))) ? "1" : "1");
    }

    public final String zze() {
        int i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("1");
        int i11 = -1;
        try {
            String str = (String) this.zza.get("CmpSdkID");
            if (!TextUtils.isEmpty(str)) {
                i11 = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
        }
        if (i11 >= 0 && i11 <= 4095) {
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i11 >> 6));
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i11 & 63));
        } else {
            sb2.append("00");
        }
        int zzg = zzg();
        if (zzg >= 0 && zzg <= 63) {
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(zzg));
        } else {
            sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        Preconditions.checkArgument(true);
        Map map = this.zza;
        if (true != "1".equals(map.get("gdprApplies"))) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        boolean equals = "1".equals(map.get("EnableAdvertiserConsentMode"));
        int i12 = i10 | 4;
        if (equals) {
            i12 = i10 | 12;
        }
        sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i12));
        return sb2.toString();
    }
}
