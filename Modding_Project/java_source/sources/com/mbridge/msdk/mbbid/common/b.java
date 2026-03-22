package com.mbridge.msdk.mbbid.common;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.f0;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.mbbid.out.BidConstants;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BidCommon.java */
/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public static Map<String, String> f27895a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static JSONArray f27896b;

    public static String a(Context context, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(BidConstants.BID_FILTER_KEY_UNIT_ID, str);
        return a(context, hashMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        r14 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
        if (r12 <= 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if ((r14 - r12) >= (r7.optInt("ttl") * 1000)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
        r8 = r7.optDouble("rate");
        r0 = new java.util.Random().nextInt(100);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
        if (r8 == 0.0d) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
        if ((r8 * 100.0d) < r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0086, code lost:
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
        r4 = r0;
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008e, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008f, code lost:
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
        a(r19, r9, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
        r0 = 0;
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009d, code lost:
        a(r19, r9, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
        r5 = r2;
        r2 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a4, code lost:
        r5 = r2;
        r2 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b3, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b5, code lost:
        com.mbridge.msdk.foundation.tools.p0.b("BidCommon", r0.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00be, code lost:
        r0 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbbid.common.b.b(android.content.Context, java.lang.String):boolean");
    }

    public static String a(Context context, Map<String, String> map) {
        String str;
        String str2;
        f27895a = map;
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                com.mbridge.msdk.foundation.controller.c.m().b(context);
            }
            if (f27896b == null) {
                f27896b = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b()).i0();
            }
            str = SameMD5.getMD5(u0.d());
            try {
                if (b(context, str)) {
                    return "";
                }
                Map<String, String> map2 = f27895a;
                if (map2 == null || !map2.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID)) {
                    str2 = "";
                } else {
                    str2 = f27895a.get(BidConstants.BID_FILTER_KEY_UNIT_ID);
                }
                return a(context, str2, str);
            } catch (Exception unused) {
                return a(context, "", str);
            }
        } catch (Exception unused2) {
            str = "";
        }
    }

    public static String a(Context context, String str, String str2) {
        long j10;
        StringBuffer stringBuffer = new StringBuffer();
        if (context != null) {
            try {
                if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                    com.mbridge.msdk.foundation.controller.c.m().b(context);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("BidCommon", e10.getMessage());
                }
            }
        }
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
        }
        stringBuffer.append(f.d());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(1, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(2, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.s());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.t());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.s(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(MBConfiguration.SDK_VERSION);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.n(context));
        stringBuffer.append(TextureRenderKeys.KEY_IS_X);
        stringBuffer.append(l0.m(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.i());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(3, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(u0.b(20));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.foundation.same.a.f27022d);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.v());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.h());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(4, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(5, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a.a(6, d10, context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(s0.c());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(s0.a());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        try {
            j10 = k0.a();
        } catch (Exception unused) {
            j10 = 0;
        }
        if (j10 > 0) {
            stringBuffer.append(j10);
            stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        } else {
            stringBuffer.append("");
            stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        }
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c"));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.j());
        String a10 = d10 != null ? d10.a() : "";
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(a10);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(u0.a());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        String c10 = u0.c();
        if (TextUtils.isEmpty(c10)) {
            c10 = "";
        }
        stringBuffer.append(c10);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(u0.c(str));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        if (d10 != null && d10.s0() == 1 && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            stringBuffer.append(a.a(7, d10, context));
        }
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.D());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.D(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.B() + "");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.C());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() ? "1" : "2");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            stringBuffer.append(a.a(8, d10, context));
        }
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("1");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        if (l0.y() != 0) {
            stringBuffer.append(l0.y() + "");
        }
        if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
            stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer.append(1);
        } else {
            stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            stringBuffer.append("");
        }
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(str2);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.r(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.q(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(f.e());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(f.a());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(com.mbridge.msdk.util.c.f30463b);
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append("");
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(f0.a().b());
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.k(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.u(context));
        stringBuffer.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        stringBuffer.append(l0.o(context));
        return j0.b(stringBuffer.toString());
    }

    public static void a(Context context, String str, long j10) {
        w0.b(context, str, Long.valueOf(j10));
    }

    public static boolean a(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str.equals(str2)) {
            return true;
        }
        for (String str3 : str.split("-")) {
            if (!TextUtils.isEmpty(str3) && str3.length() > 2 && str3.startsWith("{") && str3.endsWith("}")) {
                String substring = str3.substring(1, str3.length() - 1);
                Map<String, String> map = f27895a;
                if (map != null && map.containsKey(substring)) {
                    String valueOf = String.valueOf(f27895a.get(substring));
                    if (!TextUtils.isEmpty(valueOf)) {
                        str = str.replace(str3, valueOf + "");
                    }
                } else if (BidConstants.BID_FILTER_KEY_NETWORK.equals(str3)) {
                    str = str.replace(str3, l0.s(com.mbridge.msdk.foundation.controller.c.m().d()) + "");
                }
            }
        }
        return str.equals(str2);
    }

    private static void a(int i10, JSONObject jSONObject, int i11, int i12) {
        try {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d10 != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("key", "2000122");
                jSONObject2.put("filter", i10);
                jSONObject2.put("network_type", l0.s(d10));
                jSONObject2.put("timeout", i11);
                if (jSONObject != null && jSONObject.length() > 0) {
                    jSONObject2.put("hitNode", jSONObject);
                }
                jSONObject2.put("hitRate", i12);
                Map<String, String> map = f27895a;
                if (map != null) {
                    if (map.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID)) {
                        jSONObject2.put(MBridgeConstans.PROPERTIES_UNIT_ID, f27895a.get(BidConstants.BID_FILTER_KEY_UNIT_ID));
                    }
                    if (f27895a.containsKey(BidConstants.BID_FILTER_KEY_PLACEMENT_ID)) {
                        jSONObject2.put(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, f27895a.get(BidConstants.BID_FILTER_KEY_PLACEMENT_ID));
                    }
                    if (f27895a.containsKey(BidConstants.BID_FILTER_KEY_AD_TYPE)) {
                        jSONObject2.put("adType", f27895a.get(BidConstants.BID_FILTER_KEY_AD_TYPE));
                    }
                }
                d.b().a(jSONObject2);
            }
        } catch (Throwable th2) {
            p0.b("BidCommon", th2.getMessage());
        }
    }

    private static void a(String str, int i10) {
        e eVar = new e();
        eVar.a("filter", Integer.valueOf(i10));
        eVar.a("lrid", str);
        d.b().b("2000124", eVar);
    }
}
