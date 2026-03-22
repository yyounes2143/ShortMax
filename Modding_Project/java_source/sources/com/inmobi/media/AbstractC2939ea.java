package com.inmobi.media;

import android.os.Debug;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ea  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2939ea {

    /* renamed from: a  reason: collision with root package name */
    public static final CrashConfig f24660a;

    static {
        LinkedHashMap linkedHashMap = O2.f23923a;
        f24660a = (CrashConfig) AbstractC3110p5.a("crashReporting", "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig", null);
        System.currentTimeMillis();
    }

    public static void a(JSONObject payload, boolean z10, boolean z11, long j10) {
        AbstractC3124q3 crashType;
        int i10;
        int i11;
        float f10;
        long[] jArr;
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (!f24660a.getCrashConfig().getReportOOMInfo() || !z10) {
            return;
        }
        if (z11) {
            crashType = C3108p3.f25131d;
        } else {
            crashType = C3076n3.f25049d;
        }
        Intrinsics.checkNotNullParameter(crashType, "type");
        C6 a10 = V5.a();
        if (a10 != null) {
            String key = crashType.f25178c;
            Intrinsics.checkNotNullParameter(key, "key");
            a10.a(crashType.f25178c, a10.f23530a.getInt(key, 0) + 1, true);
        }
        Intrinsics.checkNotNullParameter(crashType, "crashType");
        C6 a11 = V5.a();
        if (a11 != null) {
            String key2 = crashType.f25176a;
            Intrinsics.checkNotNullParameter(key2, "key");
            long j11 = a11.f23530a.getLong(key2, 0L);
            String str = crashType.f25177b;
            if (j11 == 0) {
                a11.a(str, j10, true);
            } else {
                a11.a(str, j10 - j11, true);
            }
        }
        if (!z11) {
            return;
        }
        C3108p3 type = C3108p3.f25131d;
        Intrinsics.checkNotNullParameter(type, "type");
        C6 a12 = V5.a();
        if (a12 != null) {
            String key3 = type.f25178c;
            Intrinsics.checkNotNullParameter(key3, "key");
            i10 = a12.f23530a.getInt(key3, 0);
        } else {
            i10 = 0;
        }
        C3076n3 type2 = C3076n3.f25049d;
        Intrinsics.checkNotNullParameter(type2, "type");
        C6 a13 = V5.a();
        if (a13 != null) {
            String key4 = type2.f25178c;
            Intrinsics.checkNotNullParameter(key4, "key");
            i11 = a13.f23530a.getInt(key4, 0);
        } else {
            i11 = 0;
        }
        int i12 = i10 + i11;
        if (i12 > 0) {
            f10 = (i10 * 100.0f) / i12;
        } else {
            f10 = 0.0f;
        }
        payload.put("inmobiOOMCount", i10);
        payload.put("appOOMCount", i11);
        payload.put("appOomCrashInterval", V5.a(type2));
        payload.put("inmOOMCrashInterval", V5.a(type));
        payload.put("oomRatioInMobiToApp", Float.valueOf(f10));
        if (!L3.f23796a.H()) {
            jArr = null;
        } else {
            long j12 = 0;
            long j13 = 0;
            for (Map.Entry<String, String> entry : Debug.getRuntimeStats().entrySet()) {
                String key5 = entry.getKey();
                String value = entry.getValue();
                if (Intrinsics.areEqual(key5, "art.gc.blocking-gc-count")) {
                    Intrinsics.checkNotNull(value);
                    Long v10 = StringsKt.v(value);
                    if (v10 != null) {
                        j12 = v10.longValue();
                    } else {
                        j12 = 0;
                    }
                } else if (Intrinsics.areEqual(key5, "art.gc.gc-count")) {
                    Intrinsics.checkNotNull(value);
                    Long v11 = StringsKt.v(value);
                    if (v11 != null) {
                        j13 = v11.longValue();
                    } else {
                        j13 = 0;
                    }
                }
            }
            jArr = new long[]{j12, j13};
        }
        if (jArr != null) {
            payload.put("blockingGcCount", jArr[0]);
            payload.put("gcCount", jArr[1]);
        }
    }
}
