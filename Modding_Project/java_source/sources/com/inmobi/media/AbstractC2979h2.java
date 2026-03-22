package com.inmobi.media;

import android.content.Context;
import android.location.LocationManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.h2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2979h2 {
    public static HashMap a() {
        String str;
        int i10;
        int i11;
        int i12;
        int i13;
        String sb2;
        HashMap hashMap = new HashMap();
        Context d10 = Uc.d();
        if (d10 == null) {
            return hashMap;
        }
        String b10 = Uc.b();
        LinkedHashMap linkedHashMap = O2.f23923a;
        String str2 = null;
        Config a10 = M2.a("signals", b10, null);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
        int cellOperatorFlag = ((SignalsConfig) a10).getIceConfig().getCellOperatorFlag();
        boolean z10 = (cellOperatorFlag & 2) == 2;
        boolean z11 = (cellOperatorFlag & 1) == 1;
        Object systemService = d10.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        if (z10) {
            str = null;
            i10 = -1;
            i11 = -1;
        } else {
            int[] a11 = a(telephonyManager.getNetworkOperator());
            i11 = a11[0];
            i10 = a11[1];
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (networkCountryIso != null) {
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                str = networkCountryIso.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
        }
        if (z11) {
            i12 = -1;
            i13 = -1;
        } else {
            int[] a12 = a(telephonyManager.getSimOperator());
            i13 = a12[0];
            i12 = a12[1];
        }
        if (i13 == -1 && i12 == -1) {
            sb2 = null;
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(i13);
            sb3.append('_');
            sb3.append(i12);
            sb2 = sb3.toString();
        }
        if (sb2 != null) {
            hashMap.put("s-ho", sb2);
        }
        if (i11 != -1 || i10 != -1) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(i11);
            sb4.append('_');
            sb4.append(i10);
            str2 = sb4.toString();
        }
        if (str2 != null) {
            hashMap.put("s-co", str2);
        }
        if (str != null) {
            hashMap.put("s-iso", str);
        }
        hashMap.put("s-cn", L3.f23796a.a(d10));
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (((com.inmobi.commons.core.configs.SignalsConfig) r1).getIceConfig().isConnectedCellTowerEnabled() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap b() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2979h2.b():java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (((com.inmobi.commons.core.configs.SignalsConfig) r0).getIceConfig().isVisibleCellTowerEnabled() != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap c() {
        /*
            boolean r0 = com.inmobi.media.Uc.q()
            r1 = 1
            if (r0 == 0) goto L9e
            boolean r0 = d()
            if (r0 == 0) goto L9e
            boolean r0 = e()
            if (r0 == 0) goto L9e
            com.inmobi.media.Uc r0 = com.inmobi.media.Uc.f24267a
            java.lang.String r0 = r0.h()
            if (r0 == 0) goto L35
            java.util.LinkedHashMap r2 = com.inmobi.media.O2.f23923a
            java.lang.String r2 = "signals"
            r3 = 0
            com.inmobi.commons.core.configs.Config r0 = com.inmobi.media.M2.a(r2, r0, r3)
            java.lang.String r2 = "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r2)
            com.inmobi.commons.core.configs.SignalsConfig r0 = (com.inmobi.commons.core.configs.SignalsConfig) r0
            com.inmobi.commons.core.configs.SignalsConfig$IceConfig r0 = r0.getIceConfig()
            boolean r0 = r0.isVisibleCellTowerEnabled()
            if (r0 == 0) goto L9e
        L35:
            android.content.Context r0 = com.inmobi.media.Uc.d()
            if (r0 != 0) goto L41
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            goto La3
        L41:
            java.lang.String r2 = "phone"
            java.lang.Object r0 = r0.getSystemService(r2)
            java.lang.String r2 = "null cannot be cast to non-null type android.telephony.TelephonyManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r2)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.String r3 = r0.getNetworkOperator()
            int[] r3 = a(r3)
            r4 = 0
            r4 = r3[r4]
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r3 = r3[r1]
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.util.List r5 = r0.getAllCellInfo()
            if (r5 == 0) goto L9c
            java.util.Iterator r5 = r5.iterator()
        L72:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L9c
            java.lang.Object r6 = r5.next()
            android.telephony.CellInfo r6 = (android.telephony.CellInfo) r6
            boolean r7 = r6.isRegistered()
            if (r7 != 0) goto L72
            com.inmobi.media.g2 r7 = new com.inmobi.media.g2
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 30
            if (r8 < r9) goto L91
            int r8 = r0.getDataNetworkType()
            goto L95
        L91:
            int r8 = r0.getNetworkType()
        L95:
            r7.<init>(r6, r4, r3, r8)
            r2.add(r7)
            goto L72
        L9c:
            r0 = r2
            goto La3
        L9e:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        La3:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto Ld3
            org.json.JSONArray r3 = new org.json.JSONArray
            r3.<init>()
            int r4 = r0.size()
            int r4 = r4 - r1
            java.lang.Object r0 = r0.get(r4)
            com.inmobi.media.g2 r0 = (com.inmobi.media.C2963g2) r0
            org.json.JSONObject r0 = r0.a()
            r3.put(r0)
            java.lang.String r0 = r3.toString()
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "v-sc"
            r2.put(r1, r0)
        Ld3:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2979h2.c():java.util.HashMap");
    }

    public static boolean d() {
        if (!Uc.q()) {
            return false;
        }
        boolean a10 = AbstractC3226wa.a(Uc.d(), "android.permission.READ_PHONE_STATE");
        boolean a11 = AbstractC3226wa.a(Uc.d(), "android.permission.ACCESS_FINE_LOCATION");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 29) {
            if (!a11) {
                Intrinsics.checkNotNullExpressionValue("h2", "TAG");
            }
            return a11;
        } else if (i10 >= 30) {
            if (!a11 || !a10) {
                Intrinsics.checkNotNullExpressionValue("h2", "TAG");
            }
            if (!a11 || !a10) {
                return false;
            }
            return true;
        } else {
            boolean a12 = AbstractC3226wa.a(Uc.d(), "android.permission.ACCESS_COARSE_LOCATION");
            if (!a12 && !a11) {
                Intrinsics.checkNotNullExpressionValue("h2", "TAG");
            }
            if (!a12 && !a11) {
                return false;
            }
            return true;
        }
    }

    public static boolean e() {
        Object obj;
        boolean isLocationEnabled;
        if (Build.VERSION.SDK_INT < 28) {
            return true;
        }
        Context d10 = Uc.d();
        LocationManager locationManager = null;
        if (d10 != null) {
            obj = d10.getSystemService("location");
        } else {
            obj = null;
        }
        if (obj instanceof LocationManager) {
            locationManager = (LocationManager) obj;
        }
        if (locationManager != null) {
            isLocationEnabled = locationManager.isLocationEnabled();
            if (isLocationEnabled) {
                return true;
            }
        }
        return false;
    }

    public static int[] a(String str) {
        int[] iArr = {-1, -1};
        if (str != null && !Intrinsics.areEqual("", str)) {
            try {
                String substring = str.substring(0, 3);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                int parseInt = Integer.parseInt(substring);
                String substring2 = str.substring(3);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                int parseInt2 = Integer.parseInt(substring2);
                iArr[0] = parseInt;
                iArr[1] = parseInt2;
            } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            }
        }
        return iArr;
    }
}
