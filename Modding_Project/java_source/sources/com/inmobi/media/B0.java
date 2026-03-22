package com.inmobi.media;

import android.os.SystemClock;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class B0 {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f23494a;

    /* renamed from: b  reason: collision with root package name */
    public final S0 f23495b;

    /* renamed from: c  reason: collision with root package name */
    public final Z f23496c;

    /* renamed from: d  reason: collision with root package name */
    public final String f23497d;

    /* renamed from: e  reason: collision with root package name */
    public long f23498e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC3269z5 f23499f;

    /* renamed from: g  reason: collision with root package name */
    public final A0 f23500g;

    /* renamed from: h  reason: collision with root package name */
    public final C3264z0 f23501h;

    public B0(S0 mAdStoreListener, S0 mTelemetryListener, Z mAdPlacement) {
        Intrinsics.checkNotNullParameter(mAdStoreListener, "mAdStoreListener");
        Intrinsics.checkNotNullParameter(mTelemetryListener, "mTelemetryListener");
        Intrinsics.checkNotNullParameter(mAdPlacement, "mAdPlacement");
        this.f23494a = mAdStoreListener;
        this.f23495b = mTelemetryListener;
        this.f23496c = mAdPlacement;
        this.f23497d = B0.class.getSimpleName();
        this.f23500g = new A0(this);
        this.f23501h = new C3264z0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C3248y0 a(com.inmobi.media.T r6, java.lang.Integer r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.B0.a(com.inmobi.media.T, java.lang.Integer):com.inmobi.media.y0");
    }

    public static String a() {
        String b10 = Uc.b();
        if (b10 != null) {
            JSONObject jSONObject = new JSONObject();
            LinkedHashMap linkedHashMap = O2.f23923a;
            jSONObject.put("root", M2.a("root", b10, null).getLastUpdateTimeStamp());
            jSONObject.put(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, b10, null).getLastUpdateTimeStamp());
            jSONObject.put("telemetry", M2.a("telemetry", b10, null).getLastUpdateTimeStamp());
            jSONObject.put("crashReporting", M2.a("crashReporting", b10, null).getLastUpdateTimeStamp());
            jSONObject.put("signals", M2.a("signals", b10, null).getLastUpdateTimeStamp());
            return jSONObject.toString();
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(4:2|3|(1:5)|6)|(1:8)(44:97|98|(1:100)|101|(1:103)|104|(1:106)|107|(1:109)|110|(1:112)|113|(1:115)|116|(1:118)|119|(1:121)|122|(1:124)|125|126|(1:128)|129|(1:131)|132|(1:134)|135|(1:137)|138|(1:140)|141|(1:143)|144|(1:146)|147|(1:149)|150|(1:152)|153|(1:157)|158|159|160|(4:162|(7:169|(1:171)|172|173|(1:175)|176|(1:178))|179|(1:181))(16:182|183|(15:190|(3:192|193|194)(1:198)|195|(1:197)|10|11|12|(1:14)(4:82|(1:84)|85|(1:87))|15|16|17|(1:19)|20|21|(5:23|(1:25)|26|(1:28)(1:63)|(2:30|(4:32|(1:34)|35|36)(3:38|(2:40|(4:42|(1:44)|45|46)(4:47|(1:49)|50|(1:52)))(1:54)|53))(6:55|(1:57)|58|59|60|61))(8:64|(1:66)|67|(1:69)|70|(1:72)|73|74))|199|(1:201)|10|11|12|(0)(0)|15|16|17|(0)|20|21|(0)(0)))|9|10|11|12|(0)(0)|15|16|17|(0)|20|21|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02fc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0308, code lost:
        r3 = r27.f23499f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x030a, code lost:
        if (r3 != null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x030c, code lost:
        r4 = r27.f23497d;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, "TAG");
        ((com.inmobi.media.A5) r3).a(r4, "error while setting server-side logging lever", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0318, code lost:
        r0 = r27.f23499f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x031a, code lost:
        if (r0 != null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x031c, code lost:
        ((com.inmobi.media.A5) r0).a(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0336, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0337, code lost:
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03c3, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0444, code lost:
        r5 = r27.f23499f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0446, code lost:
        if (r5 != null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0448, code lost:
        r6 = r27.f23497d;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, "TAG");
        ((com.inmobi.media.A5) r5).a(r6, "Error while parsing ad response.", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02d4 A[Catch: JSONException -> 0x02fc, TryCatch #4 {JSONException -> 0x02fc, blocks: (B:124:0x02cd, B:127:0x02d4, B:129:0x02e5, B:132:0x02fe, B:134:0x0302), top: B:210:0x02cd }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0329 A[Catch: JSONException -> 0x0336, TryCatch #1 {JSONException -> 0x0336, blocks: (B:143:0x0325, B:145:0x0329, B:148:0x033b, B:150:0x0349, B:152:0x034d, B:153:0x0359, B:155:0x0361, B:159:0x038e, B:161:0x0392, B:162:0x039e), top: B:206:0x0325 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0349 A[Catch: JSONException -> 0x0336, TryCatch #1 {JSONException -> 0x0336, blocks: (B:143:0x0325, B:145:0x0329, B:148:0x033b, B:150:0x0349, B:152:0x034d, B:153:0x0359, B:155:0x0361, B:159:0x038e, B:161:0x0392, B:162:0x039e), top: B:206:0x0325 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03c6 A[Catch: JSONException -> 0x03c3, TryCatch #0 {JSONException -> 0x03c3, blocks: (B:164:0x03a6, B:165:0x03c2, B:168:0x03c6, B:170:0x03cc, B:171:0x03e2, B:173:0x041d, B:174:0x0422, B:176:0x042a, B:177:0x042f, B:178:0x0443), top: B:205:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0495  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C3248y0 a(org.json.JSONObject r28) {
        /*
            Method dump skipped, instructions count: 1272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.B0.a(org.json.JSONObject):com.inmobi.media.y0");
    }

    public final void a(Boolean bool) {
        Map<String, Object> o10 = kotlin.collections.p0.o(ms.k.a("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f23498e)), ms.k.a("networkType", L3.q()), ms.k.a("plId", Long.valueOf(this.f23496c.l())));
        String m10 = this.f23496c.m();
        if (m10 != null) {
            o10.put("plType", m10);
        }
        if (bool != null) {
            o10.put("isRewarded", bool);
        }
        String b10 = this.f23496c.b();
        if (b10 != null) {
            o10.put("adType", b10);
        }
        this.f23495b.b("ServerFill", o10);
    }

    public final void a(Map payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        payload.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f23498e));
        String b10 = this.f23496c.b();
        if (b10 != null) {
            payload.put("adType", b10);
        }
        payload.put("networkType", L3.q());
        payload.put("plId", Long.valueOf(this.f23496c.l()));
        String m10 = this.f23496c.m();
        if (m10 != null) {
            payload.put("plType", m10);
        }
        this.f23495b.b("ServerError", payload);
    }
}
