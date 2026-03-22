package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzof {
    static final ImmutableList zza = ImmutableList.G("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");
    public static final /* synthetic */ int zzb = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0200  */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final boolean zzc(com.google.android.gms.internal.measurement.zzkp r21, com.google.common.collect.ImmutableMap r22, com.google.common.collect.ImmutableMap r23, com.google.common.collect.ImmutableSet r24, char[] r25, int r26, int r27, int r28, int r29, int r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, boolean r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzof.zzc(com.google.android.gms.internal.measurement.zzkp, com.google.common.collect.ImmutableMap, com.google.common.collect.ImmutableMap, com.google.common.collect.ImmutableSet, char[], int, int, int, int, int, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, boolean):boolean");
    }

    public static final Map zzd(ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        int zza2;
        int zza3;
        int zza4;
        int zza5;
        if (!z12) {
            return ImmutableMap.q();
        }
        com.google.android.gms.internal.measurement.zzkp zzkpVar = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar);
        com.google.android.gms.internal.measurement.zzkp zzkpVar2 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar2 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar2);
        com.google.android.gms.internal.measurement.zzkp zzkpVar3 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        com.google.android.gms.internal.measurement.zzkq zzkqVar3 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar3);
        com.google.android.gms.internal.measurement.zzkp zzkpVar4 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar4 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar4);
        ImmutableMap.a f10 = ImmutableMap.b().f("Version", "2");
        String str4 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        ImmutableMap.a f11 = f10.f("VendorConsent", true != z10 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1").f("VendorLegitimateInterest", true != z11 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1").f("gdprApplies", i12 != 1 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1").f("EnableAdvertiserConsentMode", i11 != 1 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1").f("PolicyVersion", String.valueOf(i13)).f("CmpSdkID", String.valueOf(i10)).f("PurposeOneTreatment", i14 != 1 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1").f("PublisherCC", str);
        if (zzkqVar != null) {
            zza2 = zzkqVar.zza();
        } else {
            zza2 = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        ImmutableMap.a f12 = f11.f("PublisherRestrictions1", String.valueOf(zza2));
        if (zzkqVar2 != null) {
            zza3 = zzkqVar2.zza();
        } else {
            zza3 = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        ImmutableMap.a f13 = f12.f("PublisherRestrictions3", String.valueOf(zza3));
        if (zzkqVar3 != null) {
            zza4 = zzkqVar3.zza();
        } else {
            zza4 = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        ImmutableMap.a f14 = f13.f("PublisherRestrictions4", String.valueOf(zza4));
        if (zzkqVar4 != null) {
            zza5 = zzkqVar4.zza();
        } else {
            zza5 = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        ImmutableMap.a i15 = f14.f("PublisherRestrictions7", String.valueOf(zza5)).i(ImmutableMap.r("Purpose1", zzf(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose3", zzf(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose4", zzf(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose7", zzf(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true)));
        String str5 = true != zzc(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1";
        String str6 = true != zzc(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1";
        String str7 = true != zzc(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1";
        if (true == zzc(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true)) {
            str4 = "1";
        }
        return i15.i(ImmutableMap.s("AuthorizePurpose1", str5, "AuthorizePurpose3", str6, "AuthorizePurpose4", str7, "AuthorizePurpose7", str4, "PurposeDiagnostics", new String(cArr))).c();
    }

    private static final int zze(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE) {
            return 4;
        }
        return -1;
    }

    private static final String zzf(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        String str4;
        boolean isEmpty = TextUtils.isEmpty(str2);
        String str5 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (!isEmpty && str2.length() >= zzkpVar.zza()) {
            str4 = String.valueOf(str2.charAt(zzkpVar.zza() - 1));
        } else {
            str4 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        if (!TextUtils.isEmpty(str3) && str3.length() >= zzkpVar.zza()) {
            str5 = String.valueOf(str3.charAt(zzkpVar.zza() - 1));
        }
        return String.valueOf(str4).concat(String.valueOf(str5));
    }

    private static final boolean zzg(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int zze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true);
        boolean z13 = false;
        if (!z10) {
            c10 = '4';
        } else if (str2.length() < zzkpVar.zza()) {
            c10 = '0';
        } else {
            char charAt = str2.charAt(zzkpVar.zza() - 1);
            char c11 = '1';
            if (charAt == '1') {
                z13 = true;
            }
            if (zze > 0 && cArr[zze] != '2') {
                if (charAt != '1') {
                    c11 = '6';
                }
                cArr[zze] = c11;
            }
            return z13;
        }
        if (zze > 0 && cArr[zze] != '2') {
            cArr[zze] = c10;
        }
        return false;
    }

    private static final boolean zzh(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int zze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true);
        boolean z13 = false;
        if (!z11) {
            c10 = '5';
        } else if (str3.length() < zzkpVar.zza()) {
            c10 = '0';
        } else {
            char charAt = str3.charAt(zzkpVar.zza() - 1);
            char c11 = '1';
            if (charAt == '1') {
                z13 = true;
            }
            if (zze > 0 && cArr[zze] != '2') {
                if (charAt != '1') {
                    c11 = '7';
                }
                cArr[zze] = c11;
            }
            return z13;
        }
        if (zze > 0 && cArr[zze] != '2') {
            cArr[zze] = c10;
        }
        return false;
    }

    private static final com.google.android.gms.internal.measurement.zzkq zzi(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        return (com.google.android.gms.internal.measurement.zzkq) immutableMap2.getOrDefault(zzkpVar, com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED);
    }
}
